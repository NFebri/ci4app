<?php

namespace App\Controllers;

use App\Models\ArtikelModel;

class Artikel extends BaseController
{
  protected $artikelModel;
  public function __construct()
  {
    $this->artikelModel = new ArtikelModel();
  }
  public function index()
  {
    //$currentPage = $this->request->getVar('page_artikel') ? $this->request->getVar('page_artikel') : 1;

    $data = [
      'title' => 'Daftar Artikel',
      'artikel' => $this->artikelModel->getArtikel(),
      // 'artikell' => $this->artikelModel->paginate(5, 'artikel'),
      // 'pager' => $this->artikelModel->pager,
      // 'currentPage' => $currentPage,
    ];

    return view('artikel/index', $data);
  }

  public function detail($slug)
  {
    $data = [
      'title' => 'Detail Artikel',
      'artikel' => $this->artikelModel->getArtikel($slug)
    ];

    //jika komik tidak ada di tabel
    if (empty($data['artikel'])) {
      throw new \CodeIgniter\Exceptions\PageNotFoundException('Judul artikel ' . $slug . ' tidak ditemukan.');
    }

    return view('artikel/detail', $data);
  }

  public function create()
  {
    $data = [
      'title' => 'Tambah Artikel',
      'validation' => \Config\Services::validation()
    ];

    return view('artikel/create', $data);
  }

  public function save()
  {

    //validasi input
    if (!$this->validate([
      'judul_artikel' => [
        'rules' => 'required',
        'errors' => [
          'required' => 'judul artikel harus diisi!'
        ]
      ],
      'gambar_artikel' => [
        'rules' => 'max_size[gambar_artikel,1024]|is_image[gambar_artikel]|mime_in[gambar_artikel,image/jpg,image/jpeg,image/png]',
        'errors' => [
          'max_size' => 'gambar terlalu besar',
          'is_image' => 'yang anda pilih bukan gambar',
          'mime_in' => 'yang anda pilih bukan gambar'
        ]
      ]
    ])) {
      return redirect()->to('/artikel/create')->withInput();
    }

    //ambil gambar
    $fileGambar = $this->request->getFile('gambar_artikel');
    //apakah ditak ada gambar yg diupload
    if ($fileGambar->getError() == 4) {
      $namaGambar = 'defaultartikel.jpg';
    } else {
      //generate nama sampul random
      $namaGambar = $fileGambar->getRandomName();
      //pindahkan file ke folder img
      $fileGambar->move('img/artikel', $namaGambar);
    }

    //dd($this->request->getVar());
    $slug = url_title($this->request->getVar('judul_artikel'), '-', true);
    $this->artikelModel->save([
      'judul_artikel' => $this->request->getVar('judul_artikel'),
      'slug' => $slug,
      'isi_artikel' => $this->request->getVar('isi_artikel'),
      'gambar_artikel' => $namaGambar,
    ]);

    session()->setFlashdata('pesan', 'Data berhasil ditambahkan!');


    return redirect()->to('/artikel');
  }

  public function delete($id)
  {
    //cari nama gambar berdasarkan id
    $artikel = $this->artikelModel->find($id);

    //cek jika nama file gambarn
    if ($artikel['gambar_artikel'] != 'defaultartikel.jpg') {
      //hapus gambar
      unlink('img/artikel/' . $artikel['gambar_artikel']);
    }



    $this->artikelModel->delete($id);
    session()->setFlashdata('pesan', 'Data berhasil dihapus!');
    return redirect()->to('/artikel');
  }

  public function edit($slug)
  {
    $data = [
      'title' => 'Form Ubah Artikel',
      'validation' => \Config\Services::validation(),
      'artikel' => $this->artikelModel->getArtikel($slug)
    ];

    return view('artikel/edit', $data);
  }

  public function update($id)
  {

    //validasi input
    if (!$this->validate([
      'judul_artikel' => [
        'rules' => 'required',
        'errors' => [
          'required' => 'judul artikel harus diisi!'
        ]
      ],
      'gambar_artikel' => [
        'rules' => 'max_size[gambar_artikel,1024]|is_image[gambar_artikel]|mime_in[gambar_artikel,image/jpg,image/jpeg,image/png]',
        'errors' => [
          'max_size' => 'gambar terlalu besar',
          'is_image' => 'yang anda pilih bukan gambar',
          'mime_in' => 'yang anda pilih bukan gambar'
        ]
      ]
    ])) {
      return redirect()->to('/artikel/edit/' . $this->request->getVar('slug'))->withInput();
    }

    //ambil gambar
    $fileGambar = $this->request->getFile('gambar_artikel');
    $gambarLama = $this->request->getVar('gambarLama');
    //apakah ditak ada gambar yg diupload
    if ($fileGambar->getError() == 4) {
      $namaGambar = $gambarLama;
    } else {
      //generate nama sampul random
      $namaGambar = $fileGambar->getRandomName();
      //pindahkan file ke folder img
      $fileGambar->move('img/artikel', $namaGambar);
      if ($gambarLama != 'defaultartikel.jpg') {
        unlink('img/artikel/' . $gambarLama);
      }
    }

    //dd($this->request->getVar());
    $slug = url_title($this->request->getVar('judul_artikel'), '-', true);
    $this->artikelModel->save([
      'id' => $id,
      'judul_artikel' => $this->request->getVar('judul_artikel'),
      'slug' => $slug,
      'isi_artikel' => $this->request->getVar('isi_artikel'),
      'gambar_artikel' => $namaGambar,
    ]);

    session()->setFlashdata('pesan', 'Data berhasil diubah!');


    return redirect()->to('/artikel');
  }
}

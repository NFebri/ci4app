<?php

namespace App\Controllers;

use App\Models\KomikModel;

class Komik extends BaseController
{
  protected $komikModel;
  public function __construct()
  {
    $this->komikModel = new KomikModel();
  }

  public function index()
  {
    //$komik = $this->komikModel->findAll();

    $data = [
      'title' => 'Daftar Komik',
      'komik' => $this->komikModel->getkomik()
    ];

    return view('komik/index', $data);
  }

  public function detail($slug)
  {
    $data = [
      'title' => 'Detail Komik',
      'komik' => $this->komikModel->getkomik($slug)
    ];

    //jika komik tidak ada di tabel
    if (empty($data['komik'])) {
      throw new \CodeIgniter\Exceptions\PageNotFoundException('Judul komik ' . $slug . ' tidak ditemukan.');
    }

    return view('komik/detail', $data);
  }

  public function create()
  {
    // session();
    $data = [
      'title' => 'Form Tambah Data',
      'validation' => \Config\Services::validation()
    ];

    return view('komik/create', $data);
  }

  public function save()
  {
    //validasi input
    if (!$this->validate([
      'judul' => [
        'rules' => 'required|is_unique[komik.judul]',
        'errors' => [
          'required' => '{field} komik harus diisi',
          'is_unique' => '{field} komik sudah ada'
        ]
      ],
      'sampul' => [
        'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
        'errors' => [
          //'uploaded' => 'pilih gambar sampul terlebih dahulu',
          'max_size' => 'gambar terlalu besar',
          'is_image' => 'yang anda pilih bukan gambar',
          'mime_in' => 'yang anda pilih bukan gambar'
        ]
      ]
    ])) {
      //$validation = \Config\Services::validation();

      // return redirect()->to('/komik/create')->withInput()->with('validation', $validation);
      return redirect()->to('/komik/create')->withInput();
    }

    //ambil gambar
    $fileSampul = $this->request->getFile('sampul');
    //apakah ditak ada gambar yg diupload
    if ($fileSampul->getError() == 4) {
      $namaSampul = 'default.png';
    } else {
      //generate nama sampul random
      $namaSampul = $fileSampul->getRandomName();
      //pindahkan file ke folder img
      $fileSampul->move('img', $namaSampul);
    }

    //ambil nama file sampul
    //$namaSampul = $fileSampul->getName();


    $slug = url_title($this->request->getVar('judul'), '-', true);
    $this->komikModel->save([
      'judul' => $this->request->getVar('judul'),
      'slug' => $slug,
      'penulis' => $this->request->getVar('penulis'),
      'penerbit' => $this->request->getVar('penerbit'),
      'sampul' => $namaSampul
    ]);

    session()->setFlashdata('pesan', 'Data berhasil ditambahkan!');

    return redirect()->to('/komik');
  }

  public function delete($id)
  {
    //cari nama gambar berdasarkan id
    $komik = $this->komikModel->find($id);

    //cek jika nama file ambarnya default.jpg
    if ($komik['sampul'] != 'default.png') {
      //hapus gabar
      unlink('img/' . $komik['sampul']);
    }



    $this->komikModel->delete($id);
    session()->setFlashdata('pesan', 'Data berhasil dihapus!');
    return redirect()->to('/komik');
  }

  public function edit($slug)
  {
    $data = [
      'title' => 'Form Ubah Data',
      'validation' => \Config\Services::validation(),
      'komik' => $this->komikModel->getkomik($slug)
    ];

    return view('komik/edit', $data);
  }

  public function update($id)
  {
    //cek judul
    $komikLama = $this->komikModel->getkomik($this->request->getVar('slug'));
    if ($komikLama['judul'] == $this->request->getVar('judul')) {
      $rule_judul = 'required';
    } else {
      $rule_judul = 'required|is_unique[komik.judul]';
    }
    //validasi input
    if (!$this->validate([
      'judul' => [
        'rules' => $rule_judul,
        'errors' => [
          'required' => '{field} komik harus diisi',
          'is_unique' => '{field} komik sudah ada'
        ]
      ],
      'sampul' => [
        'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
        'errors' => [
          //'uploaded' => 'pilih gambar sampul terlebih dahulu',
          'max_size' => 'gambar terlalu besar',
          'is_image' => 'yang anda pilih bukan gambar',
          'mime_in' => 'yang anda pilih bukan gambar'
        ]
      ]
    ])) {
      //$validation = \Config\Services::validation();

      //return redirect()->to('/komik/edit/' . $this->request->getVar('slug'))->withInput()->with('validation', $validation);
      return redirect()->to('/komik/edit/' . $this->request->getVar('slug'))->withInput();
    }

    $fileSampul = $this->request->getFile('sampul');
    $sampulLama = $this->request->getVar('sampulLama');

    //cek apakah tetap sampul lama
    if ($fileSampul->getError() == 4) {
      $namaSampul = $sampulLama;
    } else {
      //generate nama file random
      $namaSampul = $fileSampul->getRandomName();
      //pindahkan file
      $fileSampul->move('img', $namaSampul);
      //hapus filelama
      if ($sampulLama != 'default.png') {
        unlink('img/' . $sampulLama);
      }
    }



    $slug = url_title($this->request->getVar('judul'), '-', true);
    $this->komikModel->save([
      'id' => $id,
      'judul' => $this->request->getVar('judul'),
      'slug' => $slug,
      'penulis' => $this->request->getVar('penulis'),
      'penerbit' => $this->request->getVar('penerbit'),
      'sampul' => $namaSampul
    ]);

    session()->setFlashdata('pesan', 'Data berhasil diubah!');

    return redirect()->to('/komik');
  }
}

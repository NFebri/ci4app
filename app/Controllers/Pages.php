<?php

namespace App\Controllers;

use App\Models\KomikModel;
use App\Models\ArtikelModel;

class Pages extends BaseController
{
  protected $artikelModel;
  protected $komikModel;
  public function __construct()
  {
    $this->artikelModel = new ArtikelModel();
    $this->komikModel = new KomikModel();
  }
  public function index()
  {
    $data = [
      'title' => 'Home',
      'komik' => $this->komikModel->getkomik(),
      'artikel' => $this->artikelModel->getArtikel()
    ];
    return view('pages/home', $data);
  }

  public function about()
  {
    $data = [
      'title' => 'About Me'
    ];

    return view('pages/about', $data);
  }

  public function contact()
  {
    $data = [
      'title' => 'Contact Us'
    ];

    return view('pages/contact', $data);
  }

  //--------------------------------------------------------------------

}

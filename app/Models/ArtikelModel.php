<?php

namespace App\Models;

use CodeIgniter\Model;

class ArtikelModel extends Model
{
  protected $table = 'artikel';
  protected $useTimestamps = true;
  protected $allowedFields = ['judul_artikel', 'slug', 'isi_artikel', 'gambar_artikel'];

  public function getArtikel($slug = false)
  {
    if ($slug == false) {
      return $this->findAll();
    }

    return $this->where(['slug' => $slug])->first();
  }
}

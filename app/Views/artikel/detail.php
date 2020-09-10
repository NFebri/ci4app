<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>

<div class="container">
  <div class="row">
    <div class="col">
      <div class="col-md-2"></div>
      <div class="col-md-8">
        <h1><?= $artikel['judul_artikel']; ?></h1>
        <img style="margin: auto; display :block;" width="500" src="/img/artikel/<?= $artikel['gambar_artikel']; ?>" alt="">
        <p><?= $artikel['isi_artikel']; ?></p>
      </div>
      <div class="col-md-2"></div>
      <a href="/artikel">kembali</a>
    </div>
  </div>
</div>

<?= $this->endSection(); ?>
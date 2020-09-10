<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>

<div class="container">
  <div class="row">
    <div class="col">
      <h1>Home</h1>
      <div class="row">
        <?php foreach ($komik as $k) : ?>
          <div class="card ml-3 mb-3" style="width: 12rem;">
            <img src="/img/<?= $k['sampul']; ?>" class="card-img-top" alt="..." style="">
            <div class="card-body">
              <h5 class="card-title"><?= $k['judul']; ?></h5>
              <a href="/komik/<?= $k['slug']; ?>" class="btn btn-primary">Detail</a>
            </div>
          </div>
        <?php endforeach; ?>
      </div>
      <h2>Artikel</h2>
      <div class="row">
        <?php foreach ($artikel as $a) : ?>
          <div class="card ml-3 mb-3" style="width: 1020px;">
            <div class="row no-gutters">
              <div class="col-md-4">
                <img src="/img/artikel/<?= $a['gambar_artikel']; ?>" class="card-img" alt="...">
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title"><?= $a['judul_artikel']; ?></h5>
                  <a href="/artikel/<?= $a['slug']; ?>">selengkapnya</a>
                </div>
              </div>
            </div>
          </div>
        <?php endforeach; ?>
      </div>
    </div>
  </div>
</div>

<?= $this->endSection(); ?>
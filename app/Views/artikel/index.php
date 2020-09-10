<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>

<div class="container">
  <div class="row">
    <div class="col">
      <h1>Daftar Artikel</h1>
      <a href="/artikel/create" class="btn btn-primary mb-3">Tambah Artikel</a>
      <?php if (session()->getFlashdata('pesan')) : ?>
        <div class="alert alert-success" role="alert">
          <?= session()->getFlashdata('pesan'); ?>
        </div>
      <?php endif; ?>
      <table class="table">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Gambar</th>
            <th scope="col">Judul Artikel</th>
            <th scope="col">Aksi</th>
          </tr>
        </thead>
        <tbody>
          <?php $i = 1; ?>
          <?php foreach ($artikel as $a) : ?>
            <tr>
              <th scope="row"><?= $i++; ?></th>
              <td><img class="gambar_artikel" src="/img/artikel/<?= $a['gambar_artikel']; ?>" alt=""></td>
              <td><?= $a['judul_artikel']; ?></td>
              <td>
                <a href="/artikel/<?= $a['slug']; ?>" class="btn btn-success">Detail</a>
                <a href="/artikel/edit/<?= $a['slug']; ?>" class="btn btn-primary">Ubah</a>

                <form action="/artikel/<?= $a['id']; ?>" method="post" class="d-inline">
                  <?= csrf_field(); ?>
                  <input type="hidden" name="_method" value="DELETE">
                  <button type="submit" class="btn btn-danger" onclick="return confirm('apakah anda yakin?')">Hapus</button>
                </form>
              </td>
            </tr>
          <?php endforeach; ?>
        </tbody>
      </table>

    </div>
  </div>
</div>

<?= $this->endSection(); ?>
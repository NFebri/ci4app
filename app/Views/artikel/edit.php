<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>
<script src="/ckeditor/ckeditor.js"></script>

<div class="container">
  <div class="row">
    <div class="col-8">
      <h1>Form Edit Artikel</h1>
      <form action="/artikel/update/<?= $artikel['id']; ?>" method="post" enctype="multipart/form-data">
        <?= csrf_field(); ?>
        <input type="hidden" name="slug" value="<?= $artikel['slug']; ?>">
        <input type="hidden" name="gambarLama" value="<?= $artikel['gambar_artikel']; ?>">
        <div class="form-group row">
          <label for="judul_artikel" class="col-sm-2 col-form-label">Judul</label>
          <div class="col-sm-10">
            <input type="text" class="form-control <?= ($validation->hasError('judul_artikel')) ? 'is-invalid' : ''; ?>" id="judul_artikel" name="judul_artikel" autofocus value="<?= (old('judul_artikel')) ? old('judul_artikel') : $artikel['judul_artikel'] ?>">
            <div class="invalid-feedback">
              <?= $validation->getError('judul_artikel'); ?>
            </div>
          </div>
        </div>
        <div class="form-group row">
          <label for="isi_artikel" class="col-sm-2 col-form-label">Isi Artikel</label>
          <div class="col-sm-10">
            <textarea class="form-control" name="isi_artikel" id="isi_artikel" value="<?= (old('isi_artikel')) ? old('isi_artikel') : $artikel['isi_artikel'] ?>" cols="30" rows="10"></textarea>
          </div>
        </div>
        <div class="form-group row">
          <label for="gambar_artikel" class="col-sm-2 col-form-label">Gambar Artikel</label>
          <div class="col-sm-2">
            <img src="/img/artikel/<?= $artikel['gambar_artikel']; ?>" class="img-thumbnail img-preview">
          </div>
          <div class="col-sm-8">
            <div class="custom-file">
              <input type="file" class="custom-file-input <?= ($validation->hasError('gambar_artikel')) ? 'is-invalid' : ''; ?>" id="gambar_artikel" name="gambar_artikel" onchange="gambarArtikel()">
              <div class="invalid-feedback">
                <?= $validation->getError('gambar_artikel'); ?>
              </div>
              <label class="custom-file-label" for="gambar_artikel">Pilih gambar...</label>
            </div>
          </div>
        </div>
        <div class="form-group row">
          <div class="col-sm-10">
            <button type="submit" class="btn btn-primary">Ubah Artikel</button>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>

<script>
  // Replace the <textarea id="editor1"> with a CKEditor 4
  // instance, using default configuration.
  CKEDITOR.replace('isi_artikel');
</script>

<?= $this->endSection(); ?>
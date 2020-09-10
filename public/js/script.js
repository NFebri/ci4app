function previewImg() {
  const sampul = document.querySelector('#sampul');
  const sampulLabel = document.querySelector('.custom-file-label');
  const imgPreview = document.querySelector('.img-preview');

  sampulLabel.textContent = sampul.files[0].name;

  const fileSampul = new FileReader();
  fileSampul.readAsDataURL(sampul.files[0]);

  fileSampul.onload = function (e) {
    imgPreview.src = e.target.result;
  }
}

function gambarArtikel() {
  const gambar_artikel = document.querySelector("#gambar_artikel");
  const gambarLabel = document.querySelector('.custom-file-label');
  const imgPreview = document.querySelector('.img-preview');

  gambarLabel.textContent = gambar_artikel.files[0].name;

  const fileGambar = new FileReader();
  fileGambar.readAsDataURL(gambar_artikel.files[0]);

  fileGambar.onload = function (e) {
    imgPreview.src = e.target.result;
  }
}
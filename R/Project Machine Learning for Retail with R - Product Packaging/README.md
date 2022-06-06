# Project Machine Learning for Retail with R - Product Packaging


DQLab.id Fashion adalah sebuah toko fashion yang menjual berbagai produk seperti jeans, kemeja, kosmetik, dan lain-lain. Walaupun cukup berkembang, namun dengan semakin banyaknya kompetitor dan banyak produk yang stoknya masih banyak tentunya membuat khawatir manajer DQLab.id Fashion. 

Salah satu solusi adalah membuat paket yang inovatif. Dimana produk yang sebelumnya tidak terlalu laku tapi punya pangsa pasar malah bisa dipaketkan dan laku.
Pada project ini, akan dilakukan proses identifikasi paket produk yang menarik untuk dipaketkan, sehingga akhirnya bisa meningkatkan keuntungan dan loyalitas para pelanggan DQLab.id Fashion. 

### Dataset
Dataset yang digunakan merupakan data transaksi selama 3 bulan dengan jumlah baris 33,669 baris data (3,450 kode transaksi). Adapun dataset yang akan digunakan pada project ini berisi data kode transaksi dan nama barang seperti berikut

<div align="center"> 
  <img src="https://user-images.githubusercontent.com/87359099/169683182-82022977-24a9-4367-8dd1-a8b158684e31.png"> 
</div>

Berdasarkan data yang telah diberikan, pihak manajemen DQLab.id Fashion ingin mengetahui:
1. Top 10 dan bottom 10 dari produk yang terjual.
2. Daftar seluruh kombinasi paket produk dengan korelasi yang kuat.
3. Daftar seluruh kombinasi paket produk dengan item tertentu.

### Hasil Analisis
Berdasarkan [analisis data](https://github.com/ekawidyas/ProjectDQLab/blob/main/R/Project%20Machine%20Learning%20for%20Retail%20with%20R%20-%20Product%20Packaging/Project%20Machine%20Learning%20for%20Retail%20with%20R%20-%20Product%20Packaging.md) yang telah dilakukan, diperoleh hasil sebagai berikut:
1. Berdasarkan data penjualan yang dimiliki, diperoleh top 10 dan bottom 10 dari produk yang terjual seperti berikut:<div align="center"><img src="https://user-images.githubusercontent.com/82072832/172056441-44c72762-d553-4f0c-b173-1de15244ef33.png"></div>
2. Kombinasi paket produk yang memiliki korelasi yang kuat adalah sebagai berikut: <div align="center"><img src="https://user-images.githubusercontent.com/82072832/172056123-33ae3bc1-dfc0-45c0-943a-8733da89dc00.png"></div>
3. Kombinasi paket produk dengan produk yang mengalami slow-moving (tas makeup dan baju renang pria anak-anak) dan memiliki korelasi yang kuat adalah sebagai berikut: <div align="center"><img src="https://user-images.githubusercontent.com/82072832/172055512-24bffaab-a921-444c-86a8-75ace5f8b1d0.png"></div>

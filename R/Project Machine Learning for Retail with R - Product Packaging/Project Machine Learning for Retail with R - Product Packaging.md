### Dataset
Dataset yang digunakan merupakan data transaksi selama 3 bulan dengan jumlah baris 33,669 baris data (3,450 kode transaksi). Adapun dataset yang akan digunakan pada project ini berisi data kode transaksi dan nama barang seperti berikut

<div align="center"> 
  <img src="https://user-images.githubusercontent.com/87359099/169683182-82022977-24a9-4367-8dd1-a8b158684e31.png"> 
</div>

### Top 10 Penjualan Item Retail
Pada bagian ini, akan dilakukan proses identifikasi data penjualan untuk mencari top 10 penjualan item retail dengan cara seperti berikut:
* Untuk mendapatkan nilai / total penjualan item akan dilakukan perhitungan jumlah frekuensi pada kolom Nama.Barang dengan menggunakan fungsi **itemFrequency()**.
* Untuk mendapatkan nilai top 10 penjualan akan dilakukan pengurutan data berdasarkan jumlah frekuensi dengan menggunakan fungsi **sort()** dan metode **descending**.

Berikut code yang digunakan untuk memperoleh top 10 penjualan item retail:
<div align="center"> 
  <img src="https://user-images.githubusercontent.com/82072832/172050310-c895f19b-8d9e-4970-8864-39cf2930e5a1.png"> 
</div>

Output:
<div align="center"> 
  <img src="https://user-images.githubusercontent.com/82072832/172050332-bfd96ba7-ac5f-48f1-925a-b0d0a3285f87.png"> 
</div>

### Bottom 10 Penjualan Item Retail
Sama seperti proses identifikasi pencarian top 10 penjualan, pencarian bottom 10 penjualan dilakukan dengan menghitung jumlah frekuensi terlebih dahulu, kemudian dilakukan pengurutan data. 
Namun, dalam proses pengurutan data, metode yang digunakan pada bagian ini adalah metode **ascending** dengan code seperti berikut:
<div align="center"> 
  <img src="https://user-images.githubusercontent.com/82072832/172050641-ff5d58f7-4f03-4400-8bf8-ca811f339371.png"> 
</div>


Output:
<div align="center"> 
  <img src="https://user-images.githubusercontent.com/82072832/172050625-b0ed75f7-22a1-49e5-9e4b-8856c469c50b.png"> 
</div>

### Kombinasi Produk
Untuk mendapatkan kombinasi produk yang menarik, suatu kombinasi harus memiliki ketentuan sebagai berikut:
* Memiliki asosiasi atau hubungan erat.
* Kombinasi produk minimal 2 item, dan maksimum 3 item.
* Kombinasi produk itu muncul setidaknya 10 dari dari seluruh transaksi.
* Memiliki tingkat confidence minimal 50 persen.

Pada bagian ini, untuk membentuk suatu kombinasi produk akan digunakan algoritma apriori. 
Algoritma apriori ini digunakan untuk mencari asosiasi produk yang kuat, atau dengan kata lain menemukan paket produk yang bisa berdampak besar pada penjualan.
Berikut code algoritma apriori yang digunakan:
<div align="center"> 
  <img src="https://user-images.githubusercontent.com/82072832/172053419-4c7a3b8c-5766-4031-972a-3b5e45f00b42.png"> 
</div>

Output:
<div align="center"> 
  <img src="https://user-images.githubusercontent.com/82072832/172053485-1a97efe6-57e2-409e-be5f-b5229ac0be9f.png"> 
</div>

Berdasarkan data transaksi dan ketentuan yang harus dipenuhi, diperoleh 4637 kombinasi paket. 
Berikut merupakan 10 kombinasi paket berdasarkan _lift_ (asosiasi/hubungan yang kuat)
<div align="center"> 
  <img src="https://user-images.githubusercontent.com/82072832/172053887-ef0a0332-c1b9-4548-8047-59450f348509.png"> 
</div>

Berdasarkan output di atas, kombinasi paket produk dengan asosiasi yang kuat adalah {Tas Makeup, Tas Pinggang Wanita} => {Baju Renang Anak Perempuan}. 
Artinya, jika membeli item set berupa tas makeup dan tas pinggang wanita, maka akan membeli itemset baju renang anak perempuan. 
Selain itu, dari kombinasi di atas, terdapat beberapa opsi yang dapat diaplikasikan, seperti:
* Rekomendasikan kepada setiap pelanggan yang membeli tas makeup dan tas pinggang wanita untuk membeli baju renang anak perempuan.
* Rak display tas makeup, tas pinggang wanita, dan baju renang anak perempuan dapat didekatkan.
* Tas makeup, tas pinggang wanita, dan baju renang anak perempuan dapat dipaketkan bersama dan dijual dengan harga khusus.

### Kombinasi Produk dengan Item Slow-Moving
Slow-moving item adalah produk yang pergerakan penjualannya lambat atau kurang cepat. Ini akan bermasalah apabila item produk tersebut masih menumpuk.
Pada data transaksi yang dimilik, produk yang termasuk dalam slow-moving item adalah "**Tas Makeup**" dan "**Baju Renang Pria Anak-anak**". 
Pada bagian ini, masing-masing produk tersebut dikeluarkan 3 rules yang asosiasinya paling kuat, sehingga total ada 6 rules. 
Persyaratan-persyaratan asosiasi kuat ini masih sama dengan ketentuan sebelumnya, kecuali tingkat confidence akan dicoba pada tingkat minimal 0.1.
Berikut code algoritma apriori yang digunakan untuk kombinasi produk dengan item slow-moving:
<div align="center"> 
  <img src="https://user-images.githubusercontent.com/82072832/172055585-54682974-3d02-498e-aa54-eb8601ae257f.png"> 
</div>

Output:
<div align="center"> 
  <img src="https://user-images.githubusercontent.com/82072832/172055340-ebdfaf42-53be-473e-a3af-c897fc2340ff.png"> 
</div>

Berdasarkan data transaksi dan ketentuan yang harus dipenuhi, diperoleh 39832 kombinasi paket. 
Selanjutnya, akan dilakukan filtering untuk mendapatkan kombinasi paket dengan slow-moving item menggunakan code berikut:
<div align="center"> 
  <img src="https://user-images.githubusercontent.com/82072832/172055633-2356bf5d-c5c1-4f46-8322-ab0605b4768f.png"> 
</div>

Output:
<div align="center"> 
  <img src="https://user-images.githubusercontent.com/82072832/172055512-24bffaab-a921-444c-86a8-75ace5f8b1d0.png"> 
</div>


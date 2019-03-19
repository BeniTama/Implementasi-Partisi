# Implementasi Partisi

## Menu Cepat
1. [Create Partition](#1-create-partition)
	- [Range Partition](#11-range-partition)
	- [List Partition](#12-list-partition)
	- [Hash Partition](#13-hash-partition)
	- [Key Partition](#14-key-partition)
2. [Testing "A Typical Use Case: Time Series Data"](#3-testing-a-typical-use-case-time-series-data)
	- [The SELECT Queries Benchmark](#the-select-queries-benchmark)
	- [The Big Delete Benchmark](#the-big-delete-benchmark)
	- [Conclusion](#conclusion)
3. [Referensi](#4-referensi)

## 1. Create Partition
Mengimplementasikan partition menggunakan metode-metode sebagai berikut:
### 1.1. Range Partition

![](/pictures/range-partition-1.png)
Menambahkan tabel rc1 kemudian melakukan partisi. Partisi akan memasukkan data ke p0 jika value data kurang dari (5,12). Sisanya akan dimasukkan ke p3.
<br><br>
![](/pictures/range-partition-2.png)
Memasukkan data value kedalam rc1. Value tersebut akan dipindahkan langsung secara otomatis kedalam partisi yang sesuai.
<br><br>
![](/pictures/range-partition-3.png)
Hasil partisi data.
<br><br>

### 1.2. List Partition
![](/pictures/list-partition-2.PNG)
Membuat tabel serverlogs serta melakukan konfigurasi partisi.
<br><br>
![](/pictures/list-partition-3.PNG)
Memasukkan data value kedalam serverlogs. Data ini kemudian akan tersortir secara otomatis.
<br><br>
![](/pictures/list-partition-4.PNG)
Menampilkan hasil list partitioning.
<br><br>

### 1.3. Hash Partition
![](/pictures/hash-partition-1.PNG)
<br><br>
![](/pictures/hash-partition-2.PNG)
<br><br>
![](/pictures/hash-partition-3.PNG)
<br><br>

### 1.4. Key Partition
![](/pictures/key-partition-1.PNG)
<br><br>
![](/pictures/key-partition-2.PNG)
<br><br>
![](/pictures/key-partition-3.PNG)
<br><br>

## 3. Testing "A Typical Use Case: Time Series Data"

### The SELECT Queries Benchmark
![](/pictures/select-benchmark-1.PNG)
<br><br>
![](/pictures/select-benchmark-2.PNG)
<br><br>

### The Big Delete Benchmark
![](/pictures/delete-1.PNG)
<br><br>
![](/pictures/delete-2.PNG)
<br><br>

#### Conclusion
Tabel yang telah terpartisi dapat  melakukan operasi lebih cepat dibandingkan tabel yang tidak terpartisi.

# 4. Referensi
http://www.vertabelo.com/blog/technical-articles/everything-you-need-to-know-about-mysql-partitions

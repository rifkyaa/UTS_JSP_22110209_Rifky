# UTS_JSP_22110209_RifkyAA
============================== DESKRIPSI =============================
# 🎬 Aplikasi Pemesanan Tiket Film (Java JSP)

Aplikasi ini dibuat menggunakan teknologi **Java Server Pages (JSP)** dan **Servlet** sederhana. Aplikasi memungkinkan pengguna untuk melihat daftar film, memilih film, memesan tiket, dan melihat struk pemesanan.

---

## 📌 Deskripsi Proyek

Aplikasi ini merupakan simulasi pemesanan tiket bioskop secara online. Fitur utama yang disediakan:

- Menampilkan daftar film dengan gambar dan informasi lengkap (judul, genre, durasi, harga, dan jam tayang)
- Pengguna dapat memilih film dan mengisi form pemesanan
- Struk pemesanan ditampilkan setelah proses submit
- Tampilan responsif dan menarik menggunakan **vanilla CSS**
- Fitur tambahan seperti slider poster film

---

## 📷 Screenshot Tampilan
- Tampilan Index (Home)
  ![ssIndex](https://github.com/user-attachments/assets/f896856f-a644-4110-b8b6-b1824c02a2c3)
  
- Tampilan Form
  ![ssForm](https://github.com/user-attachments/assets/42726943-b92d-4eef-85dd-d0a089c3f3ff)
  
- Tampilan Struk
  ![ssStruk](https://github.com/user-attachments/assets/f2c22b60-0611-405a-9984-62840ca43ecd)

---
## 🚀 Cara Menjalankan Aplikasi

### 1. Persiapan

Pastikan kamu sudah memiliki:
- Java JDK (minimal versi 8)
- Apache Tomcat (disarankan versi 8 atau 9)
- IDE seperti NetBeans atau VS Code
- Project disusun dalam format **Java Web Project (Ant-based)**

### 2. Struktur Folder
ProjectFolder/
├── Web Pages/
│ ├── index.jsp
│ ├── formPesan.jsp
│ ├── struk.jsp
│ └── style.css
├── Source Packages/
│ └── classes/
│ └── Film.java


> Pastikan `Film.java` berada di package `classes` dan sudah di-compile oleh NetBeans.

### 3. Jalankan di NetBeans

- Buka project di NetBeans
- Klik kanan project → **Run**
- Aplikasi akan terbuka di browser (biasanya `http://localhost:8080/NamaProyek/index.jsp`)

### 4. Tanpa NetBeans (Manual Deployment)

- Copy seluruh project ke folder `webapps` milik Tomcat
- Start Tomcat (`startup.bat` atau `startup.sh`)
- Akses `http://localhost:8080/NamaFolderProject`

---


---

## 📄 License
This project is for educational purposes only.


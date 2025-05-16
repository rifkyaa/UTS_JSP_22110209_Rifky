# UTS_JSP_22110209_RifkyAA

"Minta Star nya Puh (kalo berkenan sama project yang lain hehe)"

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
  ![ssIndex](https://github.com/user-attachments/assets/86182885-4f62-4ebf-900b-b75aae6f1d69)

- Tampilan Form
  ![ssForm](https://github.com/user-attachments/assets/020f2144-5aa9-4e3b-9a56-637c022772a1)

- Tampilan Struk
  ![ssStruk](https://github.com/user-attachments/assets/48119e8b-78a6-4696-9d91-31e78c18973d)

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
── Web Pages/
  ── index.jsp
  ── formPesan.jsp
  ── struk.jsp
  ── style.css
── Source Packages/
  ── classes/
    ── Film.java


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


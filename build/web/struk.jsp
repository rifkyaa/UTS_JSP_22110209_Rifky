<%@ page import="java.util.*, java.text.*" %>
<%@ page session="true" %>
<%@ page import="classes.Film" %>
<%
    String nama = request.getParameter("nama");
    int jumlah = Integer.parseInt(request.getParameter("jumlah"));
    int filmIndex = Integer.parseInt(request.getParameter("filmIndex"));
    String jam = request.getParameter("jam");

    ArrayList<Film> daftarFilm = (ArrayList<Film>) session.getAttribute("daftarFilm");
    Film film = daftarFilm.get(filmIndex);
    int total = film.harga * jumlah;

    // Format harga
    DecimalFormat formatter = new DecimalFormat("#,###");
%>
<html>
<head>
    <title>Struk Pemesanan</title>
    <link rel="stylesheet" href="style.css">
    <style>
        
    </style>
</head>
<body>
    <div class="wrapper-struk">    
        <div class="struk-container">
            <h2>Struk Pemesanan</h2>
            <table>
                <tr><th>Nama Pemesan</th><td><%= nama %></td></tr>
                <tr><th>Judul Film</th><td><%= film.judul %></td></tr>
                <tr><th>Jam Tayang</th><td><%= jam %></td></tr>
                <tr><th>Jumlah Tiket</th><td><%= jumlah %></td></tr>
                <tr><th>Total Harga</th><td>Rp <%= formatter.format(total) %></td></tr>
            </table>

            <div class="button-wrapper">
                <a href="index.jsp" class="button">Kembali ke Halaman Utama</a>
            </div>
        </div>
    </div>    
</body>
</html>

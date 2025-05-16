<%@ page import="java.util.*" %>
<%@ page session="true" %>
<%@ page import="classes.Film" %>
<%
    int filmIndex = Integer.parseInt(request.getParameter("filmIndex"));
    ArrayList<Film> daftarFilm = (ArrayList<Film>) session.getAttribute("daftarFilm");
    Film film = daftarFilm.get(filmIndex);
%>
<html>
<head>
    <title>Pemesanan Tiket - <%= film.judul %></title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="wrapper-form">   
        <div class="form-container">
            <h2>Pesan Tiket - <%= film.judul %></h2>
            <form action="struk.jsp" method="post">
                <input type="hidden" name="filmIndex" value="<%= filmIndex %>" />

                <label for="nama">Nama Pemesan:</label>
                <input type="text" id="nama" name="nama" required />

                <label for="jumlah">Jumlah Tiket:</label>
                <input type="number" id="jumlah" name="jumlah" required min="1" />

                <label for="jam">Jam Tayang:</label>
                <select name="jam" id="jam">
                    <% for (String j : film.jamTayang) { %>
                        <option value="<%= j %>"><%= j %></option>
                    <% } %>
                </select>

                <button type="submit">Pesan Tiket</button>
            </form>
        </div>
    </div>
</body>
</html>

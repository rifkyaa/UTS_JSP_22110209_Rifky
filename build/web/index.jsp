<%@ page import="java.util.*" %>
<%@ page session="true" %>
<%@ page import="classes.Film" %>
<%
    ArrayList<Film> daftarFilm = new ArrayList<>();
    daftarFilm.add(new Film("Inception", "Sci-Fi", 148, 50000, new String[]{"10:00", "13:00", "16:00"}));
    daftarFilm.add(new Film("Avengers: Endgame", "Action", 180, 60000, new String[]{"11:00", "14:00", "17:00"}));
    daftarFilm.add(new Film("Coco", "Animation", 105, 40000, new String[]{"09:00", "12:00", "15:00"}));
    daftarFilm.add(new Film("Spiderman: No Way Home", "Action", 148, 50000, new String[]{"10:00", "13:00", "18:00"}));
    daftarFilm.add(new Film("Toy Story", "Animation", 90, 35000, new String[]{"08:00", "11:00", "13:00"}));
    daftarFilm.add(new Film("The Conjuring", "Horror", 112, 45000, new String[]{"17:00", "20:00"}));
    daftarFilm.add(new Film("Annabelle", "Horror", 99, 42000, new String[]{"19:00", "21:30"}));
    daftarFilm.add(new Film("Inside Out", "Animation", 102, 40000, new String[]{"10:00", "13:00"}));
    daftarFilm.add(new Film("Tenet", "Sci-Fi", 150, 55000, new String[]{"11:00", "16:00"}));
    daftarFilm.add(new Film("The Nun", "Horror", 96, 41000, new String[]{"18:00", "21:00"}));
    daftarFilm.add(new Film("The Avengers", "Action", 143, 55000, new String[]{"14:00", "18:00"}));
    daftarFilm.add(new Film("Frozen", "Animation", 102, 42000, new String[]{"10:00", "13:00"}));
    daftarFilm.add(new Film("Interstellar", "Sci-Fi", 169, 60000, new String[]{"13:00", "17:00"}));
    daftarFilm.add(new Film("Lights Out", "Horror", 81, 39000, new String[]{"19:30", "22:00"}));
    daftarFilm.add(new Film("Iron Man", "Action", 126, 50000, new String[]{"10:00", "14:00"}));

    session.setAttribute("daftarFilm", daftarFilm);

    // Filter berdasarkan genre (jika ada parameter)
    String genreFilter = request.getParameter("genre");
    ArrayList<Film> filtered = new ArrayList<>();
    for (Film f : daftarFilm) {
        if (genreFilter == null || genreFilter.equals("All") || f.genre.equalsIgnoreCase(genreFilter)) {
            filtered.add(f);
        }
    }

    // Gambar sesuai urutan film
    String[] gambarFilm = {
        "https://i.pinimg.com/736x/b0/ae/a4/b0aea49646879a043ad9f6ec3002e99f.jpg", // Inception
        "https://image.tmdb.org/t/p/w500/ulzhLuWrPK07P1YkdWQLZnQh1JL.jpg", // Avengers: Endgame
        "https://upload.wikimedia.org/wikipedia/en/9/98/Coco_%282017_film%29_poster.jpg",
        "https://i.pinimg.com/736x/f2/ed/56/f2ed560fe62d4de524ad4be43d5658fb.jpg",
        "https://i.pinimg.com/736x/00/c3/27/00c327bb2e80d6047663e3617dd60e41.jpg", // Toy Story
        "https://i.pinimg.com/736x/98/14/dc/9814dcfafc0438d156c396f1ad911e76.jpg",
        "https://i.pinimg.com/736x/06/9a/93/069a93abec55f98f72f79422f94ac83e.jpg",
        "https://i.pinimg.com/736x/6d/71/e7/6d71e72ccb7199f965f6b8106267a8e8.jpg",
        "https://i.pinimg.com/736x/71/02/cd/7102cdb6d5d68bff1034facbc1da6ede.jpg",
        "https://i.pinimg.com/736x/3c/e0/51/3ce0511f66ed2e5eda9a18115276ef88.jpg",
        "https://image.tmdb.org/t/p/w500/RYMX2wcKCBAr24UyPD7xwmjaTn.jpg",
        "https://i.pinimg.com/736x/cd/f0/2f/cdf02fbb3554e09507bad8789e238b26.jpg",
        "https://i.pinimg.com/736x/3f/09/dd/3f09ddcc1d3c3740f6a74e63d57fba61.jpg",
        "https://i.pinimg.com/736x/5a/28/0f/5a280fc1d7c8b5457b456e10645a478c.jpg",
        "https://i.pinimg.com/736x/14/85/b5/1485b5a78274180bcce4a0fce0ef3c4a.jpg"
    };
%>

<!DOCTYPE html>
<html>
<head>
    <title>FilmKu</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<h1 class="main-title">FilmKu.Net</h1>
    
<!-- Genre Filter -->
<section class="genre-filter">
    <form method="get" action="index.jsp">
        <button type="submit" name="genre" value="All" class=" genre-btn more-btn <%= genreFilter == null || genreFilter.equals("All") ? "active" : "" %>">All</button>
        <button type="submit" name="genre" value="Action" class="genre-btn <%= "Action".equalsIgnoreCase(genreFilter) ? "active" : "" %>">ACTION</button>
        <button type="submit" name="genre" value="Horror" class="genre-btn <%= "Horror".equalsIgnoreCase(genreFilter) ? "active" : "" %>">Horror</button>
        <button type="submit" name="genre" value="Sci-fi" class="genre-btn <%= "Sci-fi".equalsIgnoreCase(genreFilter) ? "active" : "" %>">Sci-fi</button>
    </form>
</section>

<!-- Movies Section -->
<section class="movies-section">
    <h2>Movies</h2>
    <div class="movies-grid">
        <%
            for (int i = 0; i < filtered.size(); i++) {
                Film film = filtered.get(i);
                int indexGambar = daftarFilm.indexOf(film);
        %>
        <div class="movie-card">
            <img src="<%= gambarFilm[indexGambar] %>" alt="<%= film.judul %>">
            <div class="movie-info">
                <span class="genre-label"><%= film.genre %></span>
                <h3><%= film.judul %></h3>
                <p><%= film.durasi %> mins | Rp <%= film.harga %></p>
                <a href="formPesan.jsp?filmIndex=<%= daftarFilm.indexOf(film) %>" class="pesan-btn">Pesan Tiket</a>
            </div>
        </div>
        <% } %>
    </div>
</section>

</body>
</html>

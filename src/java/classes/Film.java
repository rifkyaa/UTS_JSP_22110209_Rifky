/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package classes;

/**
 *
 * @author rifky
 */
public class Film {
    public String judul, genre;
    public int durasi, harga;
    public String[] jamTayang;

    public Film(String judul, String genre, int durasi, int harga, String[] jamTayang) {
        this.judul = judul;
        this.genre = genre;
        this.durasi = durasi;
        this.harga = harga;
        this.jamTayang = jamTayang;
    }
}

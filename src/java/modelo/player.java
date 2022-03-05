/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;


import java.util.List;

/**
 *
 * @author elio
 */
public class player {
    
    private String dorsal;
    private String Nombre;
    private List position;
    private int edad;

    private int id;
    
    public player() {
    }

    public player(String dorsal, String Nombre, List position, int edad) {
        this.dorsal = dorsal;
        this.Nombre = Nombre;
        this.position = position;
        this.edad = edad;
    }
    public player(String dorsal, String Nombre,  int edad, int id) {
        this.dorsal = dorsal;
        this.Nombre = Nombre;
        this.edad = edad;
        this.id=id;
    }
        public player(String dorsal, String Nombre,  int edad) {
        this.dorsal = dorsal;
        this.Nombre = Nombre;
        this.edad = edad;
 
    }
    
    public String getDorsal() {
        return dorsal;
    }

    public void setDorsal(String dorsal) {
        this.dorsal = dorsal;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public List getPosition() {
        return position;
    }

    public void setPosition(List position) {
        this.position = position;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    
    
    
}

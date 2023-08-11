/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.miempresa.webapp02ejercicio;

public class OperacionesDiversas {
    
    
    public double r_cua(String a) {
        double x = Float.parseFloat(a);
        return Math.sqrt(x);
    }

    public double r_cub(String a) {
        double x = Float.parseFloat(a);
        double y = 0.333333;
        return Math.pow(x,y);
    }

    public double p_cua(String a) {
        double x = Float.parseFloat(a);
        return Math.pow(x,2);
    }

    public double p_cub(String a) {
        double x = Float.parseFloat(a);
        return Math.pow(x,3);
    }
    
    public double v_abs(String a) {
        double x = Float.parseFloat(a);
        return Math.abs(x);
    }
    
}

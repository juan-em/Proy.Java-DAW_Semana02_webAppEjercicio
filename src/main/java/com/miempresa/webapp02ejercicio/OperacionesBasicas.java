/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.miempresa.webapp02ejercicio;

public class OperacionesBasicas {

    public float suma(String a, String b) {
        float x = Float.parseFloat(a);
        float y = Float.parseFloat(b);
        return x + y;
    }

    public float resta(String a, String b) {
        float x = Float.parseFloat(a);
        float y = Float.parseFloat(b);
        return x - y;
    }

    public float multiplicacion(String a, String b) {
        float x = Float.parseFloat(a);
        float y = Float.parseFloat(b);
        return x * y;
    }

    public float division(String a, String b) {
        float x = Float.parseFloat(a);
        float y = Float.parseFloat(b);
        return x / y;
    }

    public float operacion(String o, String a, String b) {
        if ("suma".equals(o)) {
            return this.suma(a, b);
        } else if ("resta".equals(o)) {
            return this.resta(a, b);
        } else if ("multiplicacion".equals(o)) {
            return this.multiplicacion(a, b);
        } else if ("division".equals(o)) {
            return this.division(a, b);
        }
        return 0;
    }
}

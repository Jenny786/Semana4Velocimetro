//
//  TareaVelocimetro.swift
//  TS4Velocimetro
//
//  Created by Jenny on 5/12/15.
//  Copyright © 2015 Jenny. All rights reserved.
//

//: Semana 4: Tarea velocimetro digital

import UIKit

// Declara la enumeración: Velociddes, sus valores seran de tipo Int.
enum Velocidades : Int{
    
    //La enumeración  Velocidades cuenta con los siguientes elementos y sus respectivos valores:
    /* Apagado = 0, representa una velocidad de 0
    * VelocidadBaja = 20, representa una velocidad de 20km por hora
    * VelocidadMedia = 50, representa una velocidad de 50km por hora
    * VelocidadAlta = 120, representa una velocidad de 120km por hora */
    
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    //Inicializador que recibe una velocidad
    init ( velocidadInicial : Velocidades){
        
        //El inicializador se debe asignar a self el valor de valor Inicial
        self = velocidadInicial
    }
}

//Declarar la clase: AUTO

class Auto {
    
    // Atributos:
    
    var velocidad: Velocidades
    var valorVelocidad : Int
    
    //Funciones o metodos
    
    //Funcion Inicializadora
    
    init (){
        self.velocidad = .Apagado //inicializar la variable como apagado
        valorVelocidad = self.velocidad.rawValue //recupera el valor en km designado
    }
    
    //funcion cambio de velocidad y establecimiento la devolucion de una tupla
    func cambioDeVelocidad() ->(actual: Int, VelocidadEnCadena: String){
        
        //la constante para la lectura de los diferentes tipos de velocidad
        let leyendaVelocidad : String
        //recupera el valor de km designado
        valorVelocidad = self.velocidad.rawValue
        
        // estructura selectiva para ir haciendo el cambio de velocidad gradual
        switch self.velocidad{
        case .Apagado:
            self.velocidad = .VelocidadBaja
            leyendaVelocidad = "Apagado"
            
        case .VelocidadBaja:
            self.velocidad = .VelocidadMedia
            leyendaVelocidad = "Velocidad Baja"
            
        case .VelocidadMedia:
            self.velocidad = .VelocidadAlta
            leyendaVelocidad = "Velocidad Media"
            
        case .VelocidadAlta:
            self.velocidad = .VelocidadMedia
            leyendaVelocidad = "Velocidad Alta"
            
        }
        
        //retornar los valores de la tupla
        return (actual : valorVelocidad, VelocidadEnCadena : leyendaVelocidad)
        
        
    }
}

/*
//instancia de la clase Auto
var auto = Auto()
var datosVelocidad:(actual: Int, VelocidadEnCadena : String) //recuperacion de los atributos heredados de la clase Auto

//Prueba de la iteraccion de la funcion cambio de velocidad e impresion de la tupla
//implementacion de un ciclo repetitivo
for var i in 1...20{
    datosVelocidad = auto.cambioDeVelocidad()
    print(i,datosVelocidad)
}

*/

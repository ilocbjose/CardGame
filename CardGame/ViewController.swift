//
//  ViewController.swift
//  CardGame
//
//  Created by user176708 on 12/7/20.
//  Copyright © 2020 user176708. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var columnaDerecha: [Int] = []
    var columnaIzquierda: [Int] = []

    @IBOutlet weak var numeroPrimario: UILabel!
    @IBOutlet weak var numIzquierda: UIButton!
    @IBOutlet weak var labelIzquierda: UILabel!
    @IBOutlet weak var numDerecha: UIButton!
    @IBOutlet weak var labelDerecha: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func botonDerecha(){
        
        generarDerecha()
        
        if(columnaDerecha.isEmpty&&columnaIzquierda.isEmpty){
            
            numeroPrimario.text = "Has ganado"
            
        } else if (numeroPrimario.isEqual("0")) {
            
            numeroPrimario.text = "Has perdido"
            
        }
        
    }
    
    @IBAction func botonIzquierda(){
        
        generarIzquierda()
        
        if(columnaDerecha.isEmpty&&columnaIzquierda.isEmpty){
            
            numeroPrimario.text = "Has ganado"
            
        } else if (numeroPrimario.isEqual("0")) {
            
            numeroPrimario.text = "Has perdido"
            
        }
        
    }
    
    func juegoStart(){
        
        for i in 1...21{
            
            columnaDerecha[i] = Int.random(in: (-21)...0)
            columnaIzquierda[i] = Int.random(in: (0)...21)
            
        }
        var numActualDerecha = String(columnaDerecha.first!)
        labelDerecha.text = numActualDerecha
        
        var numActualIzquierda = String(columnaIzquierda.first!)
        labelIzquierda.text = numActualIzquierda
        
    }
    
    func generarDerecha(){
        
        var intColDer = Int(labelDerecha.text!)!
        var intPrincipal = Int(numeroPrimario.text!)
        
        var sumaDer = intColDer + intPrincipal!
        
        numeroPrimario.text = String(sumaDer)
        
        columnaDerecha.remove(at: 0)
        
        labelIzquierda.text = String(columnaDerecha.first!)
        
    }
    
    func generarIzquierda(){
    
        var intColIzq = Int(labelIzquierda.text!)!
        var intPrincipal = Int(numeroPrimario.text!)
        
        var sumaIzq = intColIzq + intPrincipal!
        
        numeroPrimario.text = String(sumaIzq)
        
        columnaIzquierda.remove(at: 0)
        
        labelIzquierda.text = String(columnaIzquierda.first!)
    
    }
    
    
}


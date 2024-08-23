//
//  TelaAzulViewController.swift
//  TelasSwift
//
//  Created by Wenderson Ferreira on 23/08/24.
//

import Foundation

class TelaAzulViewController: ViewControllerDefault {
    
    //MARK: -  Clouseres
    var onTelaVerdeTap: (() -> Void)?
    
    lazy var telaAzulView: TelaAzulView = {
        let telaAzulView = TelaAzulView()
        telaAzulView.onTelaVerdeTap = {
            self.onTelaVerdeTap?()
        }
        return telaAzulView
    }()
    
    override func loadView(){
        self.view = telaAzulView
    }
       
    // é executado quando está carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tela Azul"
    }
}

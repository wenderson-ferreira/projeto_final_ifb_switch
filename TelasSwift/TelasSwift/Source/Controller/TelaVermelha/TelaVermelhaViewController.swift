//
//  TelaVermelhaViewController.swift
//  TelasSwift
//
//  Created by Wenderson Ferreira on 23/08/24.
//

import Foundation

class TelaVermelhaViewController: ViewControllerDefault {
    
    //MARK: -  Clouseres
    var onTelaAzulTap: (() -> Void)?
    var onTelaVerdeTap: (() -> Void)?
    
    lazy var telaVermelhaView: TelaVermelhaView = {
        let telaVermelhaView = TelaVermelhaView()
        telaVermelhaView.onTelaAzulTap = {
            self.onTelaAzulTap?()
        }
        telaVermelhaView.onTelaVerdeTap = {
            self.onTelaVerdeTap?()
        }
        return telaVermelhaView
    }()
    
    override func loadView(){
        self.view = telaVermelhaView
    }
       
    // é executado quando está carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tela Vermelha"
    }
}

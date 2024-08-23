//
//  TelaAzulView.swift
//  TelasSwift
//
//  Created by Wenderson Ferreira on 23/08/24.
//

import Foundation
import UIKit

class TelaAzulView: ViewDefault {
    
    //MARK: -  Clouseres
    var onTelaVerdeTap: (() -> Void)?
    
    //cria a variável com as propriadades do butao para ir para a tela verde
    var buttonTelaVerde = ButtonDefault(botao: "Ir para a tela verde")
    
    override func setupVisualElements() {
        super.setupVisualElements()
        self.backgroundColor = .viewTelaAzulBackground
        
        self.addSubview(buttonTelaVerde)
        
        buttonTelaVerde.addTarget(self, action: #selector(telaVerdeTap), for: .touchUpInside)
        
        //configura a disposição dos elementos na view atual
        NSLayoutConstraint.activate([

            buttonTelaVerde.widthAnchor.constraint(equalToConstant: 374),
            buttonTelaVerde.heightAnchor.constraint(equalToConstant: 60),
            buttonTelaVerde.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            buttonTelaVerde.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonTelaVerde.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
                    
       ])
    }
    
    //MARK: - Actions
    @objc
    private func telaVerdeTap(){
        onTelaVerdeTap?()
    }
    
}

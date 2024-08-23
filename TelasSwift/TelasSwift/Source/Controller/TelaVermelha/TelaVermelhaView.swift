//
//  TelaVermelhaView.swift
//  TelasSwift
//
//  Created by Wenderson Ferreira on 23/08/24.
//

import Foundation
import UIKit

class TelaVermelhaView: ViewDefault {
    
    //MARK: -  Clouseres
    var onTelaAzulTap: (() -> Void)?
    var onTelaVerdeTap: (() -> Void)?
    
    //cria a variável com as propriadades do butao para ir para a tela vermelha
    var buttonTelaAzul = ButtonDefault(botao: "Ir para a tela azul")
    
    //cria a variável com as propriadades do butao para voltar para a tela azul
    var buttonTelaVerde = ButtonDefault(botao: "Voltar para a tela verde")
    
    override func setupVisualElements() {
        super.setupVisualElements()
        self.backgroundColor = .viewTelaVermelhaBackground
        
        self.addSubview(buttonTelaAzul)
        self.addSubview(buttonTelaVerde)
        
        buttonTelaAzul.addTarget(self, action: #selector(telaAzulTap), for: .touchUpInside)
        
        buttonTelaVerde.addTarget(self, action: #selector(telaVerdeTap), for: .touchUpInside)
        
        //configura a disposição dos elementos na view atual
        NSLayoutConstraint.activate([

            buttonTelaAzul.widthAnchor.constraint(equalToConstant: 374),
            buttonTelaAzul.heightAnchor.constraint(equalToConstant: 60),
            buttonTelaAzul.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            buttonTelaAzul.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonTelaAzul.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            
            buttonTelaVerde.widthAnchor.constraint(equalToConstant: 374),
            buttonTelaVerde.heightAnchor.constraint(equalToConstant: 60),
            buttonTelaVerde.topAnchor.constraint(equalTo: buttonTelaAzul.bottomAnchor, constant: 25),
            buttonTelaVerde.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonTelaVerde.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
                    
       ])
    }
    
    //MARK: - Actions
    @objc
    private func telaAzulTap(){
        onTelaAzulTap?()
    }
    
    @objc
    private func telaVerdeTap(){
        onTelaVerdeTap?()
    }
    
}

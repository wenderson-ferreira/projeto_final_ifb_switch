//
//  TelaVerdeView.swift
//  TelasSwift
//
//  Created by Wenderson Ferreira on 23/08/24.
//

import Foundation
import UIKit

class TelaVerdeView: ViewDefault {
    
    //MARK: -  Clouseres
    var onTelaVermelhaTap: (() -> Void)?
    var onTelaAzulTap: (() -> Void)?
    
    //cria a variável com as propriadades do butao para ir para a tela vermelha
    var buttonTelaVermelha = ButtonDefault(botao: "Ir para a tela vermelha")
    
    //cria a variável com as propriadades do butao para voltar para a tela azul
    var buttonTelaAzul = ButtonDefault(botao: "Voltar para a tela azul")
    
    override func setupVisualElements() {
        super.setupVisualElements()
        self.backgroundColor = .viewTelaVerdeBackground
        
        self.addSubview(buttonTelaVermelha)
        self.addSubview(buttonTelaAzul)
        
        buttonTelaVermelha.addTarget(self, action: #selector(telaVermelhaTap), for: .touchUpInside)
        
        buttonTelaAzul.addTarget(self, action: #selector(telaAzulTap), for: .touchUpInside)
        
        //configura a disposição dos elementos na view atual
        NSLayoutConstraint.activate([

            buttonTelaVermelha.widthAnchor.constraint(equalToConstant: 374),
            buttonTelaVermelha.heightAnchor.constraint(equalToConstant: 60),
            buttonTelaVermelha.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            buttonTelaVermelha.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonTelaVermelha.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            
            buttonTelaAzul.widthAnchor.constraint(equalToConstant: 374),
            buttonTelaAzul.heightAnchor.constraint(equalToConstant: 60),
            buttonTelaAzul.topAnchor.constraint(equalTo: buttonTelaVermelha.bottomAnchor, constant: 25),
            buttonTelaAzul.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonTelaAzul.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
                    
       ])
    }
    
    //MARK: - Actions
    @objc
    private func telaVermelhaTap(){
        onTelaVermelhaTap?()
    }
    
    @objc
    private func telaAzulTap(){
        onTelaAzulTap?()
    }
    
}

//
//  ViewControllerDefault.swift
//  TelasSwift
//
//  Created by Wenderson Ferreira on 23/08/24.
//

import Foundation

import UIKit

class ViewControllerDefault: ViewController {
    // é executado quando está carregando
    override func viewDidLoad() {
        super.viewDidLoad()
      
        self.navigationController?.navigationBar.prefersLargeTitles=true
        //self.navigationItem.setHidesBackButton(true, animated: false)
        
        //faz com que o teclado desaparece clicando em qualquer lugar da tela
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.hideKeyboardByTappingoutSide))
        
            self.view.addGestureRecognizer(tap)
    }
    
    @objc
    func hideKeyboardByTappingoutSide () {
        self.view.endEditing(true)
    }
}

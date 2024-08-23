//
//  TelaVerdeCoordinator.swift
//  TelasSwift
//
//  Created by Wenderson Ferreira on 23/08/24.
//

import Foundation
import UIKit

class TelaVerdeCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        //chama a tela vermelha
        let viewController = TelaVerdeViewController()
        self.navigationController.pushViewController(viewController, animated: true)
          
        viewController.onTelaVermelhaTap = {
            self.gotoTelaVermelha()
        }
        
        viewController.onTelaAzulTap = {
            self.gotoTelaAzul()
        }
    }
        
    //função que chama a tela vermelha
    func gotoTelaVermelha() {
        let coordinator = TelaVermelhaCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    
    //função que chama a tela azul
    func gotoTelaAzul() {
        let coordinator = TelaAzulCoordinator(navigationController: navigationController)
        coordinator.start()
    }
}

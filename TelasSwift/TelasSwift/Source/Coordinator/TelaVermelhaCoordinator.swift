//
//  TelaVermelhaCoordinator.swift
//  TelasSwift
//
//  Created by Wenderson Ferreira on 23/08/24.
//

import Foundation
import UIKit

class TelaVermelhaCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        //chama a tela vermelha
        let viewController = TelaVermelhaViewController()
        self.navigationController.pushViewController(viewController, animated: true)
          
        viewController.onTelaAzulTap = {
            self.gotoTelaAzul()
        }
        
        viewController.onTelaVerdeTap = {
            self.gotoTelaVerde()
        }
    }
        
    //função que chama a tela azul
    func gotoTelaAzul() {
        let coordinator = TelaAzulCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    
    //função que chama a tela verde
    func gotoTelaVerde() {
        let coordinator = TelaVerdeCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    
}

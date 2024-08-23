//
//  TelaAzulCoordinator.swift
//  TelasSwift
//
//  Created by Wenderson Ferreira on 23/08/24.
//

import Foundation
import UIKit

class TelaAzulCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        //chama a tela verde
        let viewController = TelaAzulViewController()
        self.navigationController.pushViewController(viewController, animated: true)
          
        viewController.onTelaVerdeTap = {
            self.gotoTelaVerde()
        }
    }
        
    //função que chama a tela verde
    func  gotoTelaVerde() {
        let coordinator = TelaVerdeCoordinator(navigationController: navigationController)
        coordinator.start()
    }
}

//
//  ModuleBetaAssembly.swift
//  MVP-PetProject
//
//  Created by Vladislav on 24.09.2024.
//

import UIKit

final class ModuleBetaAssembly {
    func make() -> UIViewController {
        
//        let service = NetworkService()
        
        let router = ModuleBetaRouter(
            assembly: ModuleAlphaAssembly()
        )
        
        let presenter = ModuleBetaPresenter(router: router)
        
        let vc = ModuleBetaViewController(presenter: presenter)
        
        presenter.view = vc
        router.setRootViewController(root: vc)
        
        return vc
    }
}

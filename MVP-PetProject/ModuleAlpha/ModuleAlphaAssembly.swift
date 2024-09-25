//
//  ModuleAlphaAssembly.swift
//  MVP-PetProject
//
//  Created by Vladislav on 24.09.2024.
//

import UIKit

final class ModuleAlphaAssembly {
    
    func make() -> UIViewController {
        let service = NetworkService()
        
        let router = ModuleAlphaRouter(
            assembly: ModuleBetaAssembly()
        )
        
        let presenter = ModuleAlphaPresenter(
            service: service,
            router: router
        )
        
        let vc = ModuleAlphaViewController(presenter: presenter)
        
        presenter.view = vc
        router.setRootViewController(root: vc)
        
        return vc
    }
}

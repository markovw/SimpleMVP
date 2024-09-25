//
//  ModuleAlphaRouter.swift
//  MVP-PetProject
//
//  Created by Vladislav on 24.09.2024.
//

import UIKit

protocol ModuleAlphaRouterProtocol: AnyObject {
    func openModuleBeta(with param: String)
}

final class ModuleAlphaRouter: ModuleAlphaRouterProtocol {
    
    
    private let assembly: ModuleBetaAssembly
    
    private weak var root: UIViewController?
    
    init(assembly: ModuleBetaAssembly) {
        self.assembly = assembly
    }
    
    func setRootViewController(root: UIViewController) {
        self.root = root
    }
    
    func openModuleBeta(with param: String) {
        let viewController = assembly.make()
        root?.navigationController?.pushViewController(viewController, animated: true)
        
    }
}

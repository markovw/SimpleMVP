//
//  ModuleBetaRouter.swift
//  MVP-PetProject
//
//  Created by Vladislav on 24.09.2024.
//

import UIKit

protocol ModuleBetaRouterProtocol: AnyObject {
    func popToRoot()
}

final class ModuleBetaRouter {
    private weak var root: UIViewController?
    private let assembly: ModuleAlphaAssembly
    
    init(assembly: ModuleAlphaAssembly) {
        self.assembly = assembly
    }
    
    func setRootViewController(root: UIViewController) {
        self.root = root
    }
    
    func popToRoot() {
        root?.navigationController?.popToRootViewController(animated: true)
    }
}

//
//  ModuleBetaAssembly.swift
//  MVP-PetProject
//
//  Created by Vladislav on 24.09.2024.
//

import UIKit

final class ModuleBetaAssembly {
    func make() -> UIViewController {
        
        let service = NetworkService()
        
        let router = ModuleBetaRouter()
        
        let presenter = ModuleBetaPresenter()
        
        let vc = ModuleBetaViewController(presenter: presenter)
        
        presenter.view = vc
        
        return vc
    }
}

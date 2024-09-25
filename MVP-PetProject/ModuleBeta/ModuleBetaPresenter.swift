//
//  ModuleBetaPresenter.swift
//  MVP-PetProject
//
//  Created by Vladislav on 24.09.2024.
//

import Foundation

protocol ModuleBetaPresenterProtocol {
    func moveBack()
}

final class ModuleBetaPresenter: ModuleBetaPresenterProtocol {
    weak var view: ModuleBetaViewProtocol?
    private let router: ModuleBetaRouter
    
    init(router: ModuleBetaRouter) {
        self.router = router
    }
    
    func moveBack() {
        router.popToRoot()
    }
}

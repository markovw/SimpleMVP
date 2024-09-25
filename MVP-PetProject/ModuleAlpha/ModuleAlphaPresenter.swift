//
//  ModuleAlphaPresenter.swift
//  MVP-PetProject
//
//  Created by Vladislav on 24.09.2024.
//

import Foundation

protocol ModuleAlphaPresenterProtocol {
    func loadUsers()
    func tapButton()
}

final class ModuleAlphaPresenter: ModuleAlphaPresenterProtocol {
    
    private let service: NetworkService
    private let router: ModuleAlphaRouter
    
    weak var view: ModuleAlphaViewProtocol?
    
    init(service: NetworkService, router: ModuleAlphaRouter) {
        self.service = service
        self.router = router
    }
    
    func loadUsers() {
        service.fetchUsers { [weak self] result in
            switch result {
                
            case .success(let users):
                self?.view?.update(model: users)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func tapButton() {
        router.openModuleBeta(with: "params from module Alpha")
    }
}

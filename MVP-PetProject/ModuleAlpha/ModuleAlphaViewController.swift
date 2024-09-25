//
//  ViewController.swift
//  MVP-PetProject
//
//  Created by Vladislav on 24.09.2024.
//

import UIKit

protocol ModuleAlphaViewProtocol: AnyObject {
    func update(model: [UserModel])
}

class ModuleAlphaViewController: UIViewController {

    private lazy var customView = ModuleAlphaView(presenter: presenter)
    private let presenter: ModuleAlphaPresenterProtocol
    
    override func loadView() {
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.loadUsers()
        
    }
    
    init(presenter: ModuleAlphaPresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}

extension ModuleAlphaViewController: ModuleAlphaViewProtocol {
    func update(model: [UserModel]) {
        customView.updateView(with: model)
    }
}

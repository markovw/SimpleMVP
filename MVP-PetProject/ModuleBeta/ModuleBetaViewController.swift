//
//  ModuleBetaViewController.swift
//  MVP-PetProject
//
//  Created by Vladislav on 24.09.2024.
//

import UIKit

protocol ModuleBetaViewProtocol: AnyObject {
    
}

class ModuleBetaViewController: UIViewController {

    private lazy var customView = ModuleBetaView(presenter: presenter)
    private let presenter: ModuleBetaPresenterProtocol
    
    override func loadView() {
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    init(presenter: ModuleBetaPresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print(">>> ModuleBetaViewController is deinit")
    }
    
}

extension ModuleBetaViewController: ModuleBetaViewProtocol {
    
}

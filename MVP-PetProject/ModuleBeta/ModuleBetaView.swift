//
//  ModuleBetaView.swift
//  MVP-PetProject
//
//  Created by Vladislav on 24.09.2024.
//

import UIKit

final class ModuleBetaView: UIView {
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 25)
        label.text = "Module Beta"
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.textAlignment = .center
        return label
    }()
    
    private let presenter: ModuleBetaPresenterProtocol
    
    init(presenter: ModuleBetaPresenterProtocol) {
        self.presenter = presenter
        super.init(frame: .zero)
        commonInit()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension ModuleBetaView {
    
    func commonInit() {
        backgroundColor = .systemPurple
        setupSubviews()
        setupConstraints()
    }
    
    func setupSubviews() {
        addSubview(label)
    }
    
    func setupConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            label.centerYAnchor.constraint(equalTo: self.centerYAnchor),
        ])
    }
}

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
    
    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Move back", for: .normal)
        button.backgroundColor = .systemBlue.withAlphaComponent(0.7)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(onTapped), for: .touchUpInside)
        return button
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
        addSubview(button)
    }
    
    func setupConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.heightAnchor.constraint(equalToConstant: 45.0),
            button.widthAnchor.constraint(equalToConstant: 150.0),
            button.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            button.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -20.0),
            
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            label.centerYAnchor.constraint(equalTo: self.centerYAnchor),
        ])
    }
    
    @objc func onTapped() {
        presenter.moveBack()
    }
}

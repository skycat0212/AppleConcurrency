//
//  ImageLoaderView.swift
//  AppleConcurrencyStudy
//
//  Created by 김수진 on 2023/03/04.
//

import UIKit

class ImageLoaderView: UIView {

    // MARK: -  property
    
    var image: UIImage? = nil {
        didSet {
            if image == nil { image = .Literal.placeHolder }
            self.imageView.image = self.image
        }
    }
    
    // MARK: - subview
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        stackView.spacing = 10
        return stackView
    }()
    private let imageView: UIImageView = {
        let imageView = UIImageView(image: nil)
        imageView.image = .Literal.placeHolder
        return imageView
    }()
    private let progressView: UIProgressView = {
        let progressView = UIProgressView(progressViewStyle: .default)
        progressView.progress = 0.5
        progressView.trackTintColor = .gray
        progressView.backgroundColor = .systemMint
        return progressView
    }()
    private let button: UIButton = {
        let button = UIButton()
        button.configuration = .filled()
        button.setTitle("Load", for: .normal)
        return button
    }()
    
    // MARK: - init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupLayout()
        self.configUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - func
    
    private func setupLayout() {
        self.addSubview(stackView)
        NSLayoutConstraint.activate([
            self.stackView.topAnchor.constraint(equalTo: self.topAnchor),
            self.stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            self.stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        ])
        
        self.stackView.addArrangedSubview(imageView)
        NSLayoutConstraint.activate([
            self.imageView.widthAnchor.constraint(equalToConstant: 100),
            self.imageView.heightAnchor.constraint(equalToConstant: 80),
        ])
        
        self.stackView.addArrangedSubview(progressView)
        let progressViewWidthAnchorConstraint = self.progressView.widthAnchor.constraint(equalTo: self.stackView.widthAnchor)
        progressViewWidthAnchorConstraint.priority = .defaultLow
        progressViewWidthAnchorConstraint.isActive = true
        
        self.stackView.addArrangedSubview(button)
    }
    
    private func configUI() {
        
    }
    
}

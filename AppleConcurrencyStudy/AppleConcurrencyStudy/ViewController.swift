//
//  ViewController.swift
//  AppleConcurrencyStudy
//
//  Created by 김수진 on 2023/03/04.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - property
    
    var safeArea: UILayoutGuide {
        self.view.safeAreaLayoutGuide
    }
    
    // MARK: - subviews
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .equalSpacing
        stackView.spacing = 10
        return stackView
    }()
    private var imageLoaderViews: [ImageLoaderView] = [
        ImageLoaderView(),
        ImageLoaderView(),
        ImageLoaderView(),
        ImageLoaderView(),
        ImageLoaderView()
    ]
    private var loadAllButton: UIButton = {
        let button = UIButton()
        button.configuration = .filled()
        button.setTitle("Load All Images", for: .normal)
        return button
    }()
    
    // MARK: - lifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.setupLayout()
    }
    
    // MARK: - func
    
    private func setupLayout() {
        let standardSpace: CGFloat = 20

        self.view.addSubview(stackView)
        NSLayoutConstraint.activate([
            self.stackView.topAnchor.constraint(equalTo: self.safeArea.topAnchor),
            self.stackView.leadingAnchor.constraint(
                equalTo: self.safeArea.leadingAnchor,
                constant: standardSpace
            ),
            self.stackView.trailingAnchor.constraint(
                equalTo: self.safeArea.trailingAnchor,
                constant: -standardSpace
            ),
        ])
        
        self.addSubViewsOfStackView()
        
    }
    
    private func addSubViewsOfStackView() {
        // Clear StackView
        self.stackView.subviews.forEach { subview in
            self.stackView.removeArrangedSubview(subview)
        }
        
        // Add ArrangedSubViews into StackView
        // ArrangedSubViews - imageLoaderViews
        self.imageLoaderViews.forEach { imageLoaderView in
            self.stackView.addArrangedSubview(imageLoaderView)
        }
        // ArrangedSubViews - LoadAllImages Button
        self.stackView.addArrangedSubview(loadAllButton)
    }

}


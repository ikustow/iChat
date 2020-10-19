//
//  SetupProfileViewController.swift
//  iChat
//
//  Created by Ilya on 20.10.2020.
//

import UIKit

class SetupProfileViewController: UIViewController {
    
    let welcomeLabel = UILabel(text: "Set up profile!")
    
    let fullNameLabel = UILabel(text: "Full name")
    let aboutMeMabel = UILabel(text: "About me")
    let sexLabel = UILabel(text: "Sex")
    
    let fullNameextField = OneLineTexfield(font: .avenir20())
    let aboutMeTextField = OneLineTexfield(font: .avenir20())
    let sexSegmentedControl = UISegmentedControl(first: "Male", second: "Female")
    
    let goToChatsButton = UIButton(title: "Go to chats!", titleColor: .white, backgroundColor: .buttonBlack(), isShadow: false, cornerRadius: 4)
    
    let fullImageView = AddPhotoView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupConstraints()
    }

}

extension SetupProfileViewController {
    private func setupConstraints(){
        
        let fullNameStackView = UIStackView(arrangedSubviews: [fullNameLabel,fullNameextField], axis: .vertical, spacing: 0)
        
        let aboutMeStackView = UIStackView(arrangedSubviews: [aboutMeMabel,aboutMeTextField], axis: .vertical, spacing: 0)
        
        let sexStackView = UIStackView(arrangedSubviews: [sexLabel,sexSegmentedControl], axis: .vertical, spacing: 12)
        
        
        goToChatsButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        let stackView = UIStackView(arrangedSubviews: [
            fullNameStackView,
            aboutMeStackView,
            sexStackView,
            goToChatsButton
        ],
        axis: .vertical,
        spacing: 40)
        
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        fullImageView.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(welcomeLabel)
        view.addSubview(fullImageView)
        view.addSubview(stackView)
    
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            fullImageView.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 40),
            fullImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
        
            stackView.topAnchor.constraint(equalTo: fullImageView.bottomAnchor, constant: 60
                                           
            ),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
        
    }
}

import SwiftUI

struct SPViewControllerProvider: PreviewProvider {
    static var previews: some View {
        Group {
            ContainerView().edgesIgnoringSafeArea(.all)
            ContainerView().edgesIgnoringSafeArea(.all)
        }
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let setupProfileVC = SetupProfileViewController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<SPViewControllerProvider.ContainerView>) -> SetupProfileViewController {
            return setupProfileVC
        }
        
        func updateUIViewController(_ uiViewController: SPViewControllerProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<SPViewControllerProvider.ContainerView>) {
            
        }
    }
}

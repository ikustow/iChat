//
//  ViewController.swift
//  iChat
//
//  Created by Ilya on 12.10.2020.
//

import UIKit

class AuthViewController: UIViewController {
    
    let logoImageView = UIImageView(image: #imageLiteral(resourceName: "Logo"), contentMode: .scaleAspectFit)
    
    let googleLabel = UILabel(text: "Get started with")
    let emailLabel = UILabel(text: "Or sign up with")
    let alreadyOnBoardLabel = UILabel(text: "Already on board")
    
    let emailButton = UIButton(title: "Email", titleColor: .white, backgroundColor: .buttonBlack(), isShadow: false, cornerRadius: 4)
    
    let loginButton = UIButton(title: "Login", titleColor: .buttonRed(), backgroundColor: .white, isShadow: true, cornerRadius: 4)
    
    let googleButton = UIButton(title: "Google", titleColor: .black, backgroundColor: .white, isShadow: true, cornerRadius: 4)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        googleButton.customizeGoogleButton()
        view.backgroundColor = .white
        setupConstraints()
    }
    
   
    
}

// MARK: - Setup constr
extension AuthViewController {
    private func setupConstraints(){
        
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        
        let googleView = BouttonFormView(label: googleLabel, button: googleButton)
        let emailView = BouttonFormView(label: emailLabel, button: emailButton)
        let loginView = BouttonFormView(label: alreadyOnBoardLabel , button: loginButton)
        
        
        
        let stackView = UIStackView(arrangedSubviews: [googleView, emailView, loginView], axis: .vertical, spacing: 40)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(logoImageView)
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([ logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
                                      
                                      logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)])
        
        
        NSLayoutConstraint.activate([stackView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor
                                                                    , constant: 160),
                                     stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor
                                                                        , constant: 40),
                                     stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)])
        
    }
}

import SwiftUI

struct AuthViewControllerProvider: PreviewProvider {
    static var previews: some View {
        Group {
            ContainerView().edgesIgnoringSafeArea(.all)
            ContainerView().edgesIgnoringSafeArea(.all)
        }
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let viewController = AuthViewController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<AuthViewControllerProvider.ContainerView>) -> AuthViewController {
            return viewController
        }
        
        func updateUIViewController(_ uiViewController: AuthViewControllerProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<AuthViewControllerProvider.ContainerView>) {
            
        }
    }
}


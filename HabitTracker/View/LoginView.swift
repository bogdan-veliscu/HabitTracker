//
//  LoginView.swift
//  HabitTracker
//
//  Created by Bogdan on 2/20/20.
//  Copyright © 2020 Codeswiftr. All rights reserved.
//

import SwiftUI
import FBSDKLoginKit
import Firebase

struct LoginView: View {
    var body: some View {
        LoginRepresentable().frame(width: 200, height: 50)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct LoginRepresentable: UIViewRepresentable {
    
    func makeCoordinator() -> LoginRepresentable.Coordinator {
        return LoginRepresentable.Coordinator()
    }
    
    func makeUIView(context: UIViewRepresentableContext<LoginRepresentable>) -> LoginRepresentable.UIViewType {
        let button = FBLoginButton()
        button.delegate = context.coordinator
        button.permissions = ["public_profile", "email"]
        return button
    }
    
    func updateUIView(_ uiView: FBLoginButton, context: UIViewRepresentableContext<LoginRepresentable>) {
        
    }
    
    class Coordinator: NSObject, LoginButtonDelegate{
        func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
            if error != nil {
                print((error?.localizedDescription)!)
            }
            if AccessToken.current != nil{
                let credential = FacebookAuthProvider.credential(withAccessToken: AccessToken.current!.tokenString)
                
                Auth.auth().signIn(with: credential) { (res, err) in
                    if err != nil {
                        print((err?.localizedDescription)!)
                        return
                    }
                    print("# Facebook authentification is successfull!")
                }
            }
            
        }
        
        func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
            try! Auth.auth().signOut()
        }
    }
}

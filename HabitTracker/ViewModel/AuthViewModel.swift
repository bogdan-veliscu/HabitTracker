//
//  AuthViewModel.swift
//  HabitTracker
//
//  Created by Bogdan on 2/5/20.
//  Copyright © 2020 Codeswiftr. All rights reserved.
//

import Foundation
import Firebase
import FirebaseAuth

class AuthViewModel {
    
    init() {
        
    }
    var handle: AuthStateDidChangeListenerHandle? = nil
    
    func viewWillAppear() -> Void {
        handle = Auth.auth().addStateDidChangeListener { (auth, user) in
            if let user = user {
                // The user's ID, unique to the Firebase project.
                // Do NOT use this value to authenticate with your backend server,
                // if you have one. Use getTokenWithCompletion:completion: instead.
                let uid = user.uid
                let email = user.email
                let photoURL = user.photoURL
                
                print("## uid:\(uid) email:\(String(describing: email)) photo:\(String(describing: photoURL))")
                
            }
        }
    }
    
    func viewWillDisappear() -> Void {
        Auth.auth().removeStateDidChangeListener(handle!)
    }
    
    
}

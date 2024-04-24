//
//  AuthManager.swift
//  UConnect
//
//  Created by student on 23/04/24.
//

import FirebaseAuth

public class AuthManager {
    static let shared = AuthManager()
    
    //MARK: -Public
    
    public func registerNewUser(username: String, email: String, password: String) {
        var ishika = true
        
    }
    
    public func loginUser(username: String?, email: String?, password: String, completion: @escaping (Bool)->Void) {
        if let email = email {
            // email log in
            Auth.auth().signIn(withEmail: email, password: password) {authResult, error in
                guard authResult != nil, error == nil else {
                    completion(false)
                    return
                }
                completion(true)
            }
        }
        
        else if let username = username{
            //username log in
            print(username)
        }
        
    }
}

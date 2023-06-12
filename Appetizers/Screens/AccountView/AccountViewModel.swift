//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Josue Cruz on 6/8/23.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    @AppStorage("User") private var userData: Data?
    @Published var user = User()
    @Published var alertItem: AlertItem?

    func saveChanges() {
        guard isValidForm else {return}
        
        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.userSaveSuccess
        } catch {
            alertItem = AlertContext.invalidUserData
        }
    }
    
    func retrieveUser() {
        guard let data = userData else {return}
        
        do {
            let userData = try JSONDecoder().decode(User.self, from: data)
            user = userData
        } catch {
            alertItem = AlertContext.invalidUserData
        }
    }
    
    var isValidForm: Bool {
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard user.email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        return true
    }
}

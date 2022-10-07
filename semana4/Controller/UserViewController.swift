//
//  UserViewController.swift
//  semana4
//
//  Created by MAC31 on 23/09/22.
//

import UIKit

class UserViewController: UIViewController {
    
    let userViewModel: UserViewModel = UserViewModel()
    
//    Antes del viewDidLoad vanos a referenciar inputs
    
    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var lastname: UITextField!
    
    @IBOutlet weak var birthday: UITextField!
    
    @IBOutlet weak var phonenumber: UITextField!
    
    @IBOutlet weak var address: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTapUserCreate(_ sender: UIButton) {
        
        let user: User = User(
            name: txtName.text!,
            lastname: lastname.text!,
            birthday: birthday.text!,
            phonenumber: phonenumber.text!,
            address: address.text!
                )
                userViewModel.createUser(user: user)
    }
    
    
    @IBAction func onTapListUsers(_ sender: UIButton) {
        let users: [User] = userViewModel.getUsers()
                print("users \(users)")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

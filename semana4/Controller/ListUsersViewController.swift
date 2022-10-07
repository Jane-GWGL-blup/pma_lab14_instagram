//
//  ListUsersViewController.swift
//  semana4
//
//  Created by MAC31 on 7/10/22.
//

import UIKit

class ListUsersViewController: UIViewController {
//    Instancias
    let userViewModel: UserViewModel = UserViewModel()
    
//    variables
    @IBOutlet weak var tableView: UITableView!
    
    var users: [User] = [
        User(
        name: "Linder", lastname: "Hassinger", birthday: "03-04-00", phonenumber: "9999", address: "Av siempre viva"),
        User(name: "Nicole", lastname: "Caceres", birthday: "17-10-03", phonenumber: "8987", address: "Av alegria")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(userViewModel.getUsers())
        setUpTable()
    }
    
    func setUpTable(){
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension ListUsersViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let model = users[indexPath.row]
        
        var listContentConfiguration = UIListContentConfiguration.cell()
        listContentConfiguration.text = model.name
        listContentConfiguration.secondaryText = model.address
        listContentConfiguration.image = UIImage(systemName: "person")
        cell.contentConfiguration = listContentConfiguration
        
        
        return cell
    }
}

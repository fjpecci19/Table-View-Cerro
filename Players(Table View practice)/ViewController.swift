//
//  ViewController.swift
//  Players(Table View practice)
//
//  Created by Franco Pecci on 2023-08-21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableview: UITableView!
    
    let players = [
        "Jean Fernandes", "Miguel Martínez", "José Miers",
        "Eduardo Brock", "Pedro Álvarez", "Jorge Morel", "Lucas Quintana",
        "Santiago Arzamendia", "Luis Vargas", "Alan Benítez", "Alan Núñez",
        "Wilder Viera", "Fabrizio Peralta", "Rafael Carrascal", "Damián Bobadilla",
        "Cecilio Domínguez", "Federico Carrizo", "Fredy Vera", "Enzo Giménez",
        "Alfio Oviedo", "Diego Churín", "Fernando Fernández", "Luis Riveros"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.delegate = self
        tableview.dataSource = self
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableview: UITableView, didSelectRowAt indexPath: IndexPath){
        print("Cerro")
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = players[indexPath.row]
        cell.textLabel?.textAlignment = .left
        return cell
    }
}

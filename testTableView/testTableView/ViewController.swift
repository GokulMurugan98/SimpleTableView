//
//  ViewController.swift
//  testTableView
//
//  Created by Gokul Murugan on 2022-11-02.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    
    let array = ["One", "two", "Three", "Four", "Five"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        myTableView.register(nib, forCellReuseIdentifier: "CustomTableViewCell")
        myTableView.delegate = self
        myTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        cell.customLable.text = array[indexPath.row]
        cell.customImageView.backgroundColor = .darkGray
        return cell
    }
    



}


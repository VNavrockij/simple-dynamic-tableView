//
//  ViewController.swift
//  Swiftlesson2
//
//  Created by Vitalii Navrotskyi on 10.08.2022.
//

import UIKit

class NotesViewController: UIViewController, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
    @IBOutlet weak var notesTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func composeBtnTapped(_ sender: UIBarButtonItem) {
        
    }
    
}


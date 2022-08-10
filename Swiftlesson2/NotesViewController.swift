//
//  ViewController.swift
//  Swiftlesson2
//
//  Created by Vitalii Navrotskyi on 10.08.2022.
//

import UIKit

class NotesViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var notesTable: UITableView!
    
    var notes = Array<String>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func composeBtnTapped(_ sender: UIBarButtonItem) {
        addNote()
    }
    
    func addNote() {
        let note = "note \(notes.count)"
        notes.append(note)
        
        notesTable.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NoteCell")! as UITableViewCell
        
        cell.textLabel?.text = notes[indexPath.row]
        
        return cell
    }
    
    
}


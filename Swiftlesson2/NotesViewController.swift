//
//  ViewController.swift
//  Swiftlesson2
//
//  Created by Vitalii Navrotskyi on 10.08.2022.
//

import UIKit

class NotesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var notesLabel: UILabel!
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
        let note = "note \(notes.count + 1)"
        notes.append(note)
        
        notesTable.reloadData()
    }
    
    func deleteNoteAt(index: Int) {
        notes.remove(at: index)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let notesCount = notes.count
        if notesCount > 0 {
            notesLabel.isHidden = true
        } else {
            notesLabel.isHidden = false
        }
        
        return notesCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NoteCell")! as UITableViewCell
        
        cell.textLabel?.text = notes[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            deleteNoteAt(index: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10.0
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
    
}


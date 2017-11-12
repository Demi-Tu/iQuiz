//
//  QuizTableViewController.swift
//  iQuiz
//
//  Created by AT on 11/11/17.
//  Copyright © 2017 AT. All rights reserved.
//

import UIKit

class QuizTableViewController: UITableViewController {
    
    @IBAction func btnSettingsPressed(_ sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: "Alert", message: "Settings go here", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { _ in NSLog("Yup!") })
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true) {
            NSLog("This is also the completion handler")
        }
    }
    
    var quizzes = [Quiz]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadQuizzes()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return quizzes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "QuizTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? QuizTableViewCell else {
            fatalError("The dequeued cell is not an instance of QuizTableViewCell.")
        }
        
        let quiz = quizzes[indexPath.row]

        // Configure the cell...

        cell.subjectLabel.text = quiz.name
        cell.photoImageView.image = quiz.photo
        cell.descriptionLabel.text = quiz.description
        
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    private func loadQuizzes() {
        let photo1 = UIImage(named: "mathematics")
        let photo2 = UIImage(named: "marvelSuperHeroes")
        let photo3 = UIImage(named: "science")
        
        guard let mathematics = Quiz(name: "MATHEMATICS", photo: photo1, description: "Math questions") else {
            fatalError("Unable to instantiate mathematics")
        }
        
        guard let marvelSuperHeroes = Quiz(name: "MARVEL SUPER HEROES", photo: photo2, description: "Questions about the Marvel Super Heroes") else {
            fatalError("Unable to instantiate marvelSuperHeroes")
        }
        
        guard let science = Quiz(name: "SCIENCE", photo: photo3, description: "Science questions") else {
            fatalError("Unable to instantiate science")
        }
        
        quizzes += [mathematics, marvelSuperHeroes, science]
    }
    
}

//
//  SleepRecordTableViewController.swift
//  SnoreData
//
//  Created by student1 on 4/2/19.
//  Copyright © 2019 clara. All rights reserved.
//


import UIKit
import CoreData

class SleepRecordViewController: UITableViewController, NSFetchedResultsController, SleepRecordDelegate {
    
    var familyMember: FamilyMember?
    var managedContext: NSManagedObjectContext?
    var fetchedSleepRecordsController: NSFetchedResultsController<SleepRecord>?
    var sleepRecords: [SleepRecord] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Sleep Records"
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1   // todo return number of records to display in table
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SleepRecordTableCell")!
        cell.textLabel?.text = "TODO data for sleep record for family member"
        return cell
    }

    
}

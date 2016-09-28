//
//  SecondViewController.swift
//  TanzAbend
//
//  Created by Ivashin Dmitry on 9/28/16.
//  Copyright © 2016 Ivashin Dmitry. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController {
    
    struct ReuseIdentifiersForCells {
        let trackCell = "TrackCell"
    }

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let trackCellNib = UINib(nibName: "TrackCell", bundle: nil)
        tableView.register(trackCellNib, forCellReuseIdentifier: ReuseIdentifiersForCells().trackCell)
    }
}

extension PlayerViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ReuseIdentifiersForCells().trackCell, for: indexPath) as! TrackCell
        cell.trackLabel.text = "TESTTRACK"
        cell.albumLabel.text = "(testalbum)"
        cell.artistLabel.text = "test ARTIST"
        return cell
    }
    
}

extension PlayerViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "ShowDetail", sender: indexPath)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
}

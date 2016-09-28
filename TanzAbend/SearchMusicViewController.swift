//
//  FirstViewController.swift
//  TanzAbend
//
//  Created by Ivashin Dmitry on 9/28/16.
//  Copyright © 2016 Ivashin Dmitry. All rights reserved.
//

import UIKit

class SearchMusicViewController: UIViewController {
    
    struct ReuseIdentifiersForCells {
        let trackCell = "TrackCell"
        let nothingFoundCell = "NothingFoundCell"
    }

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let trackCellNib = UINib(nibName: "TrackCell", bundle: nil)
        tableView.register(trackCellNib, forCellReuseIdentifier: ReuseIdentifiersForCells().trackCell)
        let nothingFoundCellNib = UINib(nibName: "NothingFoundCell", bundle: nil)
        tableView.register(nothingFoundCellNib, forCellReuseIdentifier: ReuseIdentifiersForCells().nothingFoundCell)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.contentInset = UIEdgeInsets(top: 80.0, left: 0.0, bottom: 0.0, right: 0.0)
    }
}

extension SearchMusicViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ReuseIdentifiersForCells().nothingFoundCell, for: indexPath)
        return cell
    }
}

extension SearchMusicViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
      
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
}

extension SearchMusicViewController: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        print("The search text is: '\(searchBar.text!)'")
    }
    
    func position(for bar: UIBarPositioning) -> UIBarPosition {
        return .topAttached
    }
}

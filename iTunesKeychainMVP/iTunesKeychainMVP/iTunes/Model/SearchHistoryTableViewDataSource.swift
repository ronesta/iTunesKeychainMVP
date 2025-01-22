//
//  SearchHistoryTableViewDataSource.swift
//  iTunesKeychainMVP
//
//  Created by Ибрагим Габибли on 22.01.2025.
//

import UIKit

final class SearchHistoryTableViewDataSource: NSObject, SearchHistoryDataSourceProtocol {
    var searchHistory = [String]()

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        searchHistory.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = searchHistory[indexPath.row]
        return cell
    }
}

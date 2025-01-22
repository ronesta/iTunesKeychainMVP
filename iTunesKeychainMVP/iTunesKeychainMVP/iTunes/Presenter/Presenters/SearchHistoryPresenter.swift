//
//  SearchHistoryPresenter.swift
//  iTunesKeychainMVP
//
//  Created by Ибрагим Габибли on 22.01.2025.
//

import Foundation

final class SearchHistoryPresenter: SearchHistoryPresenterProtocol {
    weak var view: SearchHistoryViewProtocol?
    private let storageManager: StorageManagerProtocol

    init(view: SearchHistoryViewProtocol, storageManager: StorageManagerProtocol) {
        self.view = view
        self.storageManager = storageManager
    }

    func loadSearchHistory() {
        let history = storageManager.getSearchHistory()
        view?.updateSearchHistory(history)
    }
}

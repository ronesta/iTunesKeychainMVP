//
//  StorageManagerProtocol.swift
//  iTunesKeychainMVP
//
//  Created by Ибрагим Габибли on 22.01.2025.
//

import Foundation

protocol StorageManagerProtocol: AnyObject {
    func saveAlbum(_ album: Album, for searchTerm: String)

    func loadAlbums(for searchTerm: String) -> [Album]

    func saveImage(_ image: Data, key: String)

    func loadImage(key: String) -> Data?

    func saveSearchTerm(_ term: String)

    func getSearchHistory() -> [String]
}

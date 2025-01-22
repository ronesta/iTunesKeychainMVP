//
//  AlbumAssembly.swift
//  iTunesKeychainMVP
//
//  Created by Ибрагим Габибли on 22.01.2025.
//

import Foundation
import UIKit

struct AlbumAssembly: AlbumAssemblyProtocol {
    func build(with album: Album) -> UIViewController {
        let storageManager = KeychainSevice()
        let networkManager = NetworkManager(storageManager: storageManager)

        let presenter = AlbumPresenter(networkManager: networkManager,
                                       storageManager: storageManager,
                                       album: album
        )
        let albumViewController = AlbumViewController(presenter: presenter)

        presenter.view = albumViewController

        return albumViewController
    }
}

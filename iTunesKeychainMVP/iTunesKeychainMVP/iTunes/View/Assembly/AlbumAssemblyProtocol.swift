//
//  AlbumAssemblyProtocol.swift
//  iTunesKeychainMVP
//
//  Created by Ибрагим Габибли on 22.01.2025.
//

import Foundation
import UIKit

protocol AlbumAssemblyProtocol {
    func build(with album: Album) -> UIViewController
}

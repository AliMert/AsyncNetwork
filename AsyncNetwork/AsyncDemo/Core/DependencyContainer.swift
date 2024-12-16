//
//  DependencyContainer.swift
//  AsyncNetwork
//
//  Created by Ali Mert Özhayta on 15.12.2024.
//

final class DependencyContainer {
    let networkManager: NetworkManager
    
    init(networkManager: NetworkManager) {
        self.networkManager = networkManager
    }
}

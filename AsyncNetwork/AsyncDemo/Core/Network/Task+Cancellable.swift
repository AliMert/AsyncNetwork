//
//  Task+Cancellable.swift
//  AsyncNetwork
//
//  Created by Ali Mert Özhayta on 26.11.2024.
//

import Combine

extension Task {

    func store(in cancellables: inout Set<AnyCancellable>) {
        let cancellable = AnyCancellable {
            self.cancel()
        }
        cancellables.insert(cancellable)
    }
}

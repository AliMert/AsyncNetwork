//
//  Dismissable.swift
//  AsyncNetwork
//
//  Created by Ali Mert Özhayta on 7.12.2024.
//

import Combine

public protocol Dismissable {

     func dismiss()
}

public extension Dismissable {

    func sink() -> AnyCancellable {
        AnyCancellable(dismiss)
   }
}

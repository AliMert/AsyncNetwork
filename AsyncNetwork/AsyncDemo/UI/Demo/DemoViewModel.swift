//
//  DemoViewModel.swift
//  AsyncNetwork
//
//  Created by Ali Mert Özhayta on 7.12.2024.
//

import Combine

protocol DemoViewModelProtocol {
    func goToTracks()
}

final class DemoViewModel: DemoViewModelProtocol {
    
    weak var coordinatorDelegate: DemoCoordinatorDelegate? {
        didSet {
            coordinatorDelegate?.sink().store(in: &cancellables)
        }
    }

    private var cancellables = Set<AnyCancellable>()
    
    func goToTracks() {
        coordinatorDelegate?.goToTracks()
    }
}

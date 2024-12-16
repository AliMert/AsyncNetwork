//
//  TrackListViewModelContracts.swift
//  AsyncNetwork
//
//  Created by Ali Mert Özhayta on 5.12.2024.
//

protocol TrackListViewModelProtocol {
    var delegate: TrackListViewModelDelegate? { get set }
    
    func fetchTracks()
}

@MainActor
protocol TrackListViewModelDelegate: AnyObject {
    func didFetchTracks(_ tracks: [Track])
    func didFailWithError(_ error: Error)
}

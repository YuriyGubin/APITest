//
//  MainViewController.swift
//  APITest
//
//  Created by Yuriy on 23.02.2023.
//

import UIKit

// MARK: - Enums
enum Link: String {
    case demoURL = "https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?earth_date=2015-6-3&api_key=DEMO_KEY"
}

final class MainViewController: UIViewController {

    //MARK: - IBActions
    @IBAction func getDataButtonPressed() {
        fetchPhotos()
    }
    
    // MARK: - Private Methods
    
    private func fetchPhotos() {
        guard let url = URL(string: Link.demoURL.rawValue) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            
            let decoder = JSONDecoder()
            do {
                let photos = try decoder.decode(Photos.self, from: data)
                print(photos)
            } catch let error {
                print(error.localizedDescription)
            }
        }.resume()
    }
}


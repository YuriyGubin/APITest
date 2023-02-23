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

enum Alert {
    case success
    case failed
    
    var title: String {
        switch self {
        case .success:
            return "Succes"
        case .failed:
            return "Failed"
        }
    }
    
    var message: String {
        switch self {
        case .success:
            return "You can see the result in the Debug area"
        case .failed:
            return "You can see arror in the Debug area"
        }
    }
}

final class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

// MARK: - Private Methods
    private func showAlert(withStatus status: Alert) {
        let alert = UIAlertController(title: status.title, message: status.message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        DispatchQueue.main.async { [unowned self] in
            present(alert, animated: true)
        }
    }
}


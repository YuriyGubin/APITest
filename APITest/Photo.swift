//
//  Photo.swift
//  APITest
//
//  Created by Yuriy on 23.02.2023.
//

import Foundation

struct Photos {
    let photos: [Photo]
}

struct Photo {
    let id: Int
    let sol: Int
    let camera: Camera
    let img_scr: String
    let earth_date: String
    let rover: Rover
}

struct Camera {
    let id: Int
    let name: String
    let rover_id: Int
    let full_name: String
}

struct Rover {
    let id: Int
    let name: String
    let landing_date: String
    let launch_date: String
    let status: String
}

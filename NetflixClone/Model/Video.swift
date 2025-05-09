//
//  Video.swift
//  NetflixClone
//
//  Created by 허성필 on 5/9/25.
//

import Foundation

struct VideoResponse: Codable {
    let results: [Video]
}

struct Video: Codable {
    let key: String?
    let site: String?
    let type: String?
}

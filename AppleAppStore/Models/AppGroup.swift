//
//  AppGroup.swift
//  AppleAppStore
//
//  Created by mac on 23/02/2022.
//  Copyright © 2022 Hassan Ramadan Ali. All rights reserved.
//

import Foundation

struct AppGroup: Decodable {
    let feed: Feed
}

struct Feed: Decodable {
    let title: String
    let results: [FeedResult]
}

struct FeedResult: Decodable {
    let name, artistName, artworkUrl100: String
}

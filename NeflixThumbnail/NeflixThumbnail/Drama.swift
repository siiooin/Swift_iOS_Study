//
//  Drama.swift
//  NeflixThumbnail
//
//  Created by 전시언 on 7/11/26.
//

import Foundation

struct DramaCollection: Codable {
    var bigBanner: String
    var dramas: [Drama]

    enum CodingKeys: String, CodingKey {
        case bigBanner = "BIG_BANNER"
        case dramas = "DRAMAS"
    }
}


struct Drama: Codable {
    var categoryTitle: String
    var posters: [String]
    
    enum CodingKeys: String, CodingKey {
        case categoryTitle = "CATEGORY_TITLE"
        case posters = "POSTERS"
    }
}

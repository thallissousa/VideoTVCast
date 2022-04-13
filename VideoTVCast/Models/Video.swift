//
//  Video.swift
//  VideoTVCast
//
//  Created by Thallis Sousa on 12/04/22.
//

import Foundation

class Video: Identifiable, Equatable, ObservableObject {
    static func == (lhs: Video, rhs: Video) -> Bool {
        <#code#>
    }
    
Oi,

    var id = UUID()
    var title: String
    var description: String
    var thumbnailName: String
    
    @Published var favorite = false
    
    init(title: String, description: String, thumbnailName: String) {
        self.title = title
        self.description = description
        self.thumbnailName = thumbnailName
    }
    
}

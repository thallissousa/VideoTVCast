//
//  Category.swift
//  VideoTVCast
//
//  Created by Thallis Sousa on 12/04/22.
//

import Foundation

class Category: Identifiable {
    var id = UUID()
    var title: String
    var videos: [Video]
    
    var favoriteVideos: [Video] {
        return videos.filter { video in
            return video.favorite //quando alguém acessar a variável favoriteVideos, acessar os vídeos e pegar somente aqueles que estão marcados na categoria de Favoritos.
        }
    }
    
    init(title: String, videos: [Video]) {
        self.title = title
        self.videos = videos
    }
}

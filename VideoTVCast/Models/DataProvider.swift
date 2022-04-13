//
//  DataProvider.swift
//  VideoTVCast
//
//  Created by Thallis Sousa on 12/04/22.
//

import Foundation

class DataProvider: ObservableObject {
    @Published var categories: [Category] = []
    
    var categoriesWithFavoriteVideos: [Category] {
        return categories.filter { category in
            return !(category.favoriteVideos.isEmpty) // ! = is not empty (caso a categoria não esteja vazia, retorne os vídeos favoritos)
        }
    }
    
    init() {
        categories = [
            Category(title: "Category1", videos: [
                Video(title: "Title1", description: "Description1", thumbnailName: "background")
            ]),
            Category(title: "Category2", videos: [
                Video(title: "Title2", description: "Description2", thumbnailName: "background"),
                Video(title: "Title3", description: "Description3", thumbnailName: "background")
            ]),
            Category(title: "Category3", videos: [
                Video(title: "Title4", description: "Description4", thumbnailName: "background"),
                Video(title: "Title5", description: "Description5", thumbnailName: "background")
            ]),
            Category(title: "Category4", videos: [
                Video(title: "Title6", description: "Description6", thumbnailName: "background"),
                Video(title: "Title7", description: "Description7", thumbnailName: "background"),
                Video(title: "Title8", description: "Description8", thumbnailName: "background"),
                Video(title: "Title9", description: "Description9", thumbnailName: "background")
            ])
        ]
    }
}


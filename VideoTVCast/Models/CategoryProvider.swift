//
//  CategoryProvider.swift
//  VideoTVCast
//
//  Created by Thallis Sousa on 12/04/22.
//

import Foundation
import SwiftUI

class CategoryProvider: ObservableObject {
    @Published var categories: [Category] = []
    
    var currentContext: ProviderContext = .general
    var dataProvider: DataProvider
    
    init(dataProvider: DataProvider) {
        self.dataProvider = dataProvider
    }
    
    enum ProviderContext: Equatable {
        case general, favorites
        
        var formatterName: String {
            switch self {
            case .general:
                return "All Videos"
            case .favorites:
                return "Favorites"
            
            }
        }
        
        var missingCategoryTitle: String {
            if self == .general {
                return "Não achei os vídeos..."
            } else {
                return "Você não favoritou nenhum vídeo..."
            }
        }
        
        func refresh() {
            switch currentContext {
            case .general:
                categories = dataProvider.categories
            case .favorites:
                categories = dataProvider.categoriesWithFavoriteVideos
            }
        }
    }
    
}

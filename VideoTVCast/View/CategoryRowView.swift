//
//  CategoryRow.swift
//  VideoTVCast
//
//  Created by Thallis Sousa on 12/04/22.
//

import SwiftUI

struct CategoryRowView: View {
    var category: Category
    
    @State var showOnlyFavorites = false
    
    var body: some View {
        VStack (alignment: .leading){
            Text(category.title)
                .font(.headline)
                .bold()
                .padding(.leading, 40)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(alignment: .top) {
                    ForEach(showOnlyFavorites ? category.favoriteVideos : category.videos) { video in
                        NavigationLink(destination: VideoDetailView(category: category, video: video)
                            .frame(maxWidth: 460)
                            .cornerRadius(10)
                            .padding())
                    }
                    .buttonStyle(TVButtonStyle)
                }
            }
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(category: Category(title: "Category", videos: [Video(title: "Video1", description: "Description1", thumbnailName: "background"),
            (category: Category(title: "Category2", videos: [Video(title: "Video2", description: "Description2", thumbnailName: "background")]))
    }
}

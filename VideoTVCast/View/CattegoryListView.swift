//
//  CattegoryListView.swift
//  VideoTVCast
//
//  Created by Thallis Sousa on 12/04/22.
//

import SwiftUI

struct CattegoryListView: View {
    @ObservedObject var categoryProvider : CategoryProvider
    var categoryContext: CategoryProvider.ProviderContext
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false)
        LazyVStack(alignment: .leading) {
            ForEach(categoryProvider.categories) { category in CategoryRowView(category: category, showOnlyFavorites: categoryContext == .favorites)
                
            }
        } .onAppear() {
        }
    }
}

struct CattegoryListView_Previews: PreviewProvider {
    static var previews: some View {
        CattegoryListView(categoryProvider: CategoryProvider, categoryContext: CategoryProvider.ProviderContext)
    }
}

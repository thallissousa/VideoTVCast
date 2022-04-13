//
//  ContentView.swift
//  VideoTVCast
//
//  Created by Thallis Sousa on 12/04/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var dataProvider = DataProvider()
    
    var body: some View {
        NavigationView {
            TabView {
                /// View de todos os vídeos
                /// View dos vídeos favoritados
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

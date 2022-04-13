//
//  VideoThumbnailView.swift
//  VideoTVCast
//
//  Created by Thallis Sousa on 12/04/22.
//

import SwiftUI

struct VideoThumbnailView: View {
    var video: Video

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Image(video.thumbnailName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 450, height: 255)
                .clipped()
                .cornerRadius(10)
                .shadow(radius: 5)
            Text(video.title)
                .foregroundColor(.primary)
                .font(.headline)
                .bold()
            Text(video.description)
                .foregroundColor(.secondary)
                .font(.subheadline)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame(height: 80)
        }
    }
}

struct VideoThumbnailView_Previews: PreviewProvider {
    static var previews: some View {
        VideoThumbnailView(video: Video(title: "Título", description: "Descrição maior em baixo da Hello", thumbnailName: "background"))
    }
}

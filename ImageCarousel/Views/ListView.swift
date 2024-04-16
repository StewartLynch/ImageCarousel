//
// Created for ImageCarousel
// by  Stewart Lynch on 2024-04-14
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Follow me on LinkedIn: https://linkedin.com/in/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch


import SwiftUI

struct ListView: View {
    @Environment(Store.self) private var store
    var body: some View {
        NavigationStack{
            List(store.sampleImages) { sampleImage in
                HStack {
                    AsyncImage(url: sampleImage.imageUrl) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50)
                    } placeholder: {
                        ProgressView()
                    }
                    Text(sampleImage.caption)
                        .font(.title)
                }
            }
            .listStyle(.plain)
            .navigationTitle("List View")
        }
    }
}

#Preview {
    ListView()
        .environment(Store())
}

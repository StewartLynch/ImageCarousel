//
// Created for ImageCarlousel
// by  Stewart Lynch on 2024-04-14
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Follow me on LinkedIn: https://linkedin.com/in/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch
import SwiftUI

struct TabCarouselView: View {
    @Environment(Store.self) private var store
    var body: some View {
        NavigationStack {
            TabView {
                ForEach(store.sampleImages) { sampleImage in
                    VStack {
                        AsyncImage(url: sampleImage.imageUrl) { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .frame(maxWidth: .infinity)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .shadow(radius: 10)
                                .padding()
                        } placeholder: {
                            ProgressView()
                        }
                        Text(sampleImage.caption)
                            .font(.title)
                    }
                }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            .navigationTitle("Tab Views")
        }
    }
}

#Preview {
    TabCarouselView()
        .environment(Store())
}

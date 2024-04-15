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
            Text("TabView Carousel")
            .navigationTitle("Tab Views")
        }
    }
}

#Preview {
    TabCarouselView()
        .environment(Store())
}

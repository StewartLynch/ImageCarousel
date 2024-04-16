//
// Created for ImageCarousel
// by  Stewart Lynch on 2024-04-15
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Follow me on LinkedIn: https://linkedin.com/in/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch


import SwiftUI

struct StartTab: View {
    var body: some View {
        TabView {
            ListView()
                .tabItem {
                        Label("List", systemImage: "list.triangle")
                    
                }
            TabCarouselView()
                .tabItem {
                    Label("Tabs", systemImage: "1.circle.fill")
                }
            ScrollViewCarouselView()
                .tabItem {
                    Label("ScrollView", systemImage: "2.circle.fill")
                }
            ScrollViewCarouselView2()
                .tabItem {
                    Label("ScrollView+  ", systemImage: "3.circle.fill")
                }
        }

    }
}

#Preview {
    StartTab()
        .environment(Store())
}

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


import Foundation

@Observable
class Store {
    var jsonUrl = "https://stewartlynch.github.io/CarouselImages/samples.json"
    var sampleImages: [SampleImage] = []
    init() {
        Task {
            await fetchSamples()
        }
    }

    @MainActor
    func fetchSamples() async {
        do {
            let (data, _) = try  await URLSession.shared.data(from: URL(string: jsonUrl)!)
            sampleImages = try JSONDecoder().decode(
                [SampleImage].self,
                from: data
            ).sorted(using: KeyPathComparator(\.caption))
            
        } catch {
            print("Could not decode")
        }
    }
}

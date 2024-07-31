import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        let site = ExampleSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ExampleSite: Site {    
    var name = "iOSDevHappyHour"
    var titleSuffix = " – Connect with developers"
    var url = URL("https://www.example.com")
    var builtInIconsEnabled = true

    var author = "iOSDevHappyHour Organizers"

    var homePage = Home()
    var theme = MainTheme()
    
    var pages: [any StaticPage] {
        Links() // must be added here to make a new page
    }
}



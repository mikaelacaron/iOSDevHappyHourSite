import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    func body(context: PublishingContext) -> [BlockElement] {
        NavigationBar(logo: "My Awesome Site") {
            Link("Links", target: Links())
        }
        
        Text("Hello world!")
            .font(.title1)
    }
}

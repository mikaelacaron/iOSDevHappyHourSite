import Ignite

struct Links: StaticPage {
    var title = "Links"
    
    func body(context: PublishingContext) -> [BlockElement] {
        Text("Links Page")
            .font(.title1)
        
        Text("This is the links page")
    }
}

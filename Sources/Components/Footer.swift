import Foundation
import Ignite

struct Footer: Component, HTMLRootElement {
    init() { }
    
    func body(context: PublishingContext) -> [any PageElement] {
        Text {
            "Created with "
            Link("IGNITE", target: URL("https://github.com/twostraws/Ignite"))
            
            Text("iOSDevHappyHour")
                .background(.blue)
                .padding(100)
        }
        .horizontalAlignment(.center)
        .margin(.top, .extraLarge)
        .class("container-fluid")
    }
}

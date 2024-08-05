import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    func body(context: PublishingContext) -> [BlockElement] {
        Text("About Us")
            .font(.title1)
            .horizontalAlignment(.center)
        
        Divider()
            .class("border-3", "opacity-100")
            .style("border-color: \(WebColor.yellow)")
            
        
        Text {
            "The goal of "
            
            Link("#iOSDevHappyHour", target: "https://x.com/search?q=%23iOSDevHappyHour&src=hashtag_click&f=live")
            
            " is to allow current and aspiring iOS Developers a place to share experiences, share knowledge, simply hang out, build community, and even enjoy a drink or two online during a time where face to face contact is limited."
        }
        
        Text {
            Link("Register Now", target: "")
                .linkStyle(.button)
                .role(.primary)
                .style("background-color: \(WebColor.yellow)")
                .class("border-0")
        }
    }
}

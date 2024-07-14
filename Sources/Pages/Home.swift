import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    func body(context: PublishingContext) -> [BlockElement] {
        Text("About Us")
            .font(.title1)
            .horizontalAlignment(.center)
        
        Divider()
            .foregroundStyle(.red)
        
        Text {
            "The goal of "
            
            Link("#iOSDevHappyHour", target: "https://x.com/search?q=%23iOSDevHappyHour&src=hashtag_click&f=live")
            
            "is to allow current and aspiring iOS Developers a place to share experiences, share knowledge, simply hang out, build community, and even enjoy a drink or two online during a time where face to face contact is limited."
        }
        
        Text {
            Link("Register", target: "")
                .linkStyle(.button)
                .role(.primary)
        }
    }
}

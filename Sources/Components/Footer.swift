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
    }
}

public struct SocialFooter: Component, HTMLRootElement {
    let icons = [
      Image(systemName: "twitter"),
      Image(systemName: "mastodon"),
      Image(systemName: "threads"),
      Image(systemName: "youtube"),
      Image(systemName: "github")
    ]

    let urlStrings = [
      "https://x.com/iosdevhappyhour",
      "https://mastodon.iosdevhappyhour.com/@iosdevhappyhour",
      "https://threads.net/@iosdevhappyhour",
      "https://youtube.com/@iOSDevHappyHour",
      "https://github.com/mikaelacaron"
    ]

    public func body(context: PublishingContext) -> [any PageElement] {
        Text {
            for (icon, urlString) in zip(icons, urlStrings) {
                Link(icon, target: urlString)
                    .margin(.trailing, 20)
                    .style("color: white")
                    .class("fs-1")
                    .target(.blank)
                    .relationship(.noOpener, .noReferrer)
            }
        }
        .font(.title2)
        .padding(50)
        .horizontalAlignment(.center)
        .margin(.top, .extraLarge)
        .margin(.bottom, 0)
        .background(.init(hex: "#204161"))
    }
}

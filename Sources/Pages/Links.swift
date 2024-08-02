import Ignite
import Foundation

struct Links: StaticPage {
    var title = "Links"
    
    func body(context: PublishingContext) -> [BlockElement] {
        Text {
            Link("iOSDevHappyHour", target: "https://iosdevhappyhour.com")
            
            " Links"
        }
        .font(.title1)
        .horizontalAlignment(.center)
        .margin(50)
        
        Section {
            linkCard(
                LinkItem(
                    header: "This Month's Event",
                    imageName: "calendar",
                    text: "RSVP for the Zoom Link!",
                    url: URL(string: "https://idhh-july2024.eventbrite.com/")!
                )
            )
            
            linkCard(
                LinkItem(
                    header: "Community",
                    imageName: "discord",
                    text: "iOSDevHappyHour Discord",
                    url: URL(string: "https://discord.com/invite/FEtB3b247B?mc_cid=f2c2a15a92")!
                )
            )
            
            linkCard(
                LinkItem(
                    header: "Donation",
                    imageName: "balloon-heart",
                    text: "Buy Us a Coffee",
                    url: URL(string: "https://www.buymeacoffee.com/iosdevhappyhour")!
                )
            )
            
            linkCard(
                LinkItem(
                    header: "Support",
                    imageName: "envelope-open",
                    text: "Sponsorships",
                    url: URL(string: "https://sponsorships.iosdevhappyhour.com/")!
                )
            )
            
            linkCard(
                LinkItem(
                    header: "Support",
                    imageName: "exclamation-circle-fill",
                    text: "Code of Conduct",
                    url: URL(string: "https://docs.google.com/presentation/d/1uHLuuDHrRXxlnYYMAR5lYJ2POZM2JxZChebiMeXdXd0/edit#slide=id.p")!
                )
            )
        }
        .columns(1)
        .class("col-sm-8", "mx-auto")
    }
    
    func linkCard(_ item: LinkItem) -> BlockElement {
        Card {
            Text {
                Image(systemName: item.imageName)
                    .class("fs-1")
                    .margin(.trailing, 20)
                    .foregroundStyle(.init(hex: "#204161"))
                
                Link(item.text, target: item.url.absoluteString)
            }
            .font(.title1)
        } header: {
            Text {
                item.header
            }
            .fontWeight(.bold)
        }
        .cardStyle(.bordered)
        .margin(.bottom, 20)
    }
}

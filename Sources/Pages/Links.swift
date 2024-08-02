import Ignite

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
            Card {
                Text {
                    Image(systemName: "calendar")
                        .margin(.trailing, 20)
                        .foregroundStyle(.init(hex: "#204161"))
//                        .style("color: white")
                    
                    "RSVP for the Zoom Link!"
                }
                .font(.title1)
            } header: {
                Text {
                    "This Month's Event"
                }
                .fontWeight(.bold)
            }
            .cardStyle(.bordered)
            .margin(.bottom, 20)
            
            Card {
                Text {
                     Image(systemName: "discord")
                        .margin(.trailing, 20)
                        .foregroundStyle(.blue)

                    Link("iOSDevHappyHour Discord", target: "https://discord.com/invite/FEtB3b247B?mc_cid=f2c2a15a92")
                }
                .font(.title1)
            } header: {
                Text {
                    "Community"
                }
                .fontWeight(.bold)
            }
            .cardStyle(.bordered)
            .margin(.bottom, 20)
            
            Card {
                Text {
                    Image(systemName: "balloon-heart")
                        .margin(.trailing, 20)
                        .foregroundStyle(.blue)
                    
                    Link("Buy Us a Coffee", target: "https://www.buymeacoffee.com/iosdevhappyhour")
                }
                .font(.title1)
            } header: {
                
                Text {
                    "Donation"
                }
                .fontWeight(.bold)
            }
            .cardStyle(.bordered)
            .margin(.bottom, 20)
            
            Card {
                Text {
                    Image(systemName: "envelope-open")
                        .margin(.trailing, 20)
                        .foregroundStyle(.blue)
                    
                    Link("Sponsorships", target: "https://sponsorships.iosdevhappyhour.com/")
                }
                .font(.title1)
            } header: {
                Text {
                    "Support"
                }
                .fontWeight(.bold)
            }
            .cardStyle(.bordered)
            .margin(.bottom, 20)
            
            Card {
                Text {
                    Image(systemName: "exclamation-circle-fill")
                        .margin(.trailing, 20)
                        .foregroundStyle(.blue)
                    
                    Link("Code of Conduct", target: "https://docs.google.com/presentation/d/1uHLuuDHrRXxlnYYMAR5lYJ2POZM2JxZChebiMeXdXd0/edit#slide=id.p")
                }
                .font(.title1)
            } header: {
                Text {
                    "Support"
                }
                .fontWeight(.bold)
            }
            .cardStyle(.bordered)
            .margin(.bottom, 20)
        }
        .columns(1)
        .class("col-sm-8", "mx-auto")
    }
}

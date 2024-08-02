//
//  BetterSocialFooter.swift
//  
//
//  Created by Mikaela Caron on 8/1/24.
//

import Foundation
import Ignite

/// Better code than SocialFooter
struct BetterSocialFooter: Component, HTMLRootElement {
    func body(context: PublishingContext) -> [any PageElement] {
        Text {
            for media in SocialMedia.allCases {
                Link(media.icon, target: media.urlString)
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
        
        Text {
            "Created with "
            Link("IGNITE", target: URL("https://github.com/twostraws/Ignite"))
        }
        .horizontalAlignment(.center)
    }
}

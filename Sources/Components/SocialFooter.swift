//
//  SocialFooter.swift
//  
//
//  Created by Mikaela Caron on 8/1/24.
//

import Foundation
import Ignite

struct SocialFooter: Component, HTMLRootElement {
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
            
            Text(markdown: "<br />")
            
            Span("Created with ")
                .style("color: white")
            
            Link("IGNITE", target: URL("https://github.com/twostraws/Ignite"))
                .style("color: white")
        }
        .font(.title2)
        .padding(50)
        .horizontalAlignment(.center)
        .margin(.top, .extraLarge)
        .margin(.bottom, 0)
        .background(.init(hex: "\(WebColor.blue)"))
    }
}

//
//  SocialMedia.swift
//
//
//  Created by Mikaela Caron on 8/1/24.
//

import Foundation
import Ignite

enum SocialMedia: CaseIterable {
    case twitter
    case mastodon
    case threads
    case youtube
    case github
    
    var icon: Image {
        switch self {
        case .twitter:
            return Image(systemName: "twitter")
        case .mastodon:
            return Image(systemName: "mastodon")
        case .threads:
            return Image(systemName: "threads")
        case .youtube:
            return Image(systemName: "youtube")
        case .github:
            return Image(systemName: "github")
        }
    }
    
    var urlString: String {
        switch self {
        case .twitter:
            return "https://x.com/iosdevhappyhour"
        case .mastodon:
            return "https://mastodon.iosdevhappyhour.com/@iosdevhappyhour"
        case .threads:
            return "https://threads.net/@iosdevhappyhour"
        case .youtube:
            return "https://youtube.com/@iOSDevHappyHour"
        case .github:
            return "https://github.com/mikaelacaron"
        }
    }
}

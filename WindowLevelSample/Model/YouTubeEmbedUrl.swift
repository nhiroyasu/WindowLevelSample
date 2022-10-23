//
//  YouTubeEmbedUrl.swift
//  WindowLevelSample
//
//  Created by NH on 2022/10/21.
//

import Foundation
import Foundation
import AppKit

enum YouTubeThumbnailQuality: String {
    case `default`
    /// max
    case maxresdefault
    /// high
    case hqdefault
    /// middle
    case mqdefault
    /// sd
    case sddefault
}

class YouTubeEmbedUrl {
    let url: URL?

    init(id: String, mute: Bool) {
        let muteValue = mute ? "1" : "0"
        let path = "https://www.youtube.com/embed/\(id)?playlist=\(id)&mute=\(muteValue)&loop=1&autoplay=1&controls=0&disablekb&fs=0&modestbranding=1&iv_load_policy=3&rel=0"
        url = URL(string: path)
    }
}

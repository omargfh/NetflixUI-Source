/*
See LICENSE folder for this sampleâ€™s licensing information.

Abstract:
The model for an individual landmark.
*/

import SwiftUI

struct MainView: Hashable, Codable, Identifiable {
    var id:Int
    var filename:String
    var isPreview:Bool
    var isShow:Bool
}

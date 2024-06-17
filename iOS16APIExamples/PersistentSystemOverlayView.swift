import SwiftUI

struct PersistentSystemOverlayView: View {
  var body: some View {
    VStack {
      Text("Maximum immersion")
        .persistentSystemOverlays(.hidden)
    }
  }
}

#Preview {
  PersistentSystemOverlayView()
}

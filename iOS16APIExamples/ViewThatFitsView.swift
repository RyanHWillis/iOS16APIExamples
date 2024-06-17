import SwiftUI

struct ViewThatFitsView: View {
  var body: some View {
    ViewThatFits {
      HStack {
        Button("Sign Into Amex", action: {})
        Divider()
        Button("Sign Up", action: {})
      }
      VStack {
        Button("Sign Into Amex", action: {})
        Divider()
        Button("Sign Up", action: {})
      }
    }
  }
}

// Increase dynamic font size to see results on preview.
#Preview {
  ViewThatFitsView()
}

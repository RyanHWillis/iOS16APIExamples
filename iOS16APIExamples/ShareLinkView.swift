import SwiftUI

struct ShareLinkView: View {
  var body: some View {
    ShareLink(item: URL(string: "https://www.google.com")!) {
      Label("Hello, lets share!", systemImage: "swift")
    }
    Spacer()
  }
}

#Preview {
  ShareLinkView()
}

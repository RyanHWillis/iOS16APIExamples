import SwiftUI

struct TextLineLimitView: View {  
  var body: some View {
    Text("Maximum")
      .background(.red)
      .lineLimit(3, reservesSpace: true)
  }
}

struct TextFieldLineLimitView: View {  
  @State private var text = ""

  var body: some View {
    TextField("Enter Bio", text: $text, axis: .vertical)
      .lineLimit(2...4)
  }
}

#Preview("Text") {
  TextLineLimitView()
}

#Preview("TextField") {
  TextFieldLineLimitView()
}

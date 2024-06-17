import SwiftUI

struct TextFieldVerticalView: View {
  @State private var firstName = ""
  
  var body: some View {
    TextField("First name", text: $firstName, axis: .vertical)
  }
}

#Preview {
  TextFieldVerticalView()
}

import SwiftUI

struct PasteButtonView: View {
  @State private var twoFactorCode = ""
  
  var body: some View {
    VStack {
      TextField("Two Factor Code", text: $twoFactorCode)
        .textFieldStyle(.roundedBorder)
      PasteButton(payloadType: String.self) { strings in
        guard let first = strings.first else { return }
        twoFactorCode = first
      }
      .buttonBorderShape(.capsule)
    }
  }
}

#Preview {
  PasteButtonView()
}

import SwiftUI

struct AnyLayoutView: View {
  @State private var toggleLayout = false

  var body: some View {
    let layout = toggleLayout ? AnyLayout(HStackLayout()) : AnyLayout(VStackLayout())

    VStack {
      Button("Change Layout") {
        toggleLayout.toggle()
      }
    }
    .background()

    layout {
      RoundedRectangle(cornerRadius: 20)
        .fill(.green)
      RoundedRectangle(cornerRadius: 20)
        .fill(.purple)
      RoundedRectangle(cornerRadius: 20)
        .fill(.orange)
    }
    .padding(16)
    .animation(.bouncy, value: toggleLayout)
  }
}

#Preview {
  AnyLayoutView()
}

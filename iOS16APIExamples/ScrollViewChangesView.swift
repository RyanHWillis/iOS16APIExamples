import SwiftUI

struct ScrollViewChangesView: View {
  var body: some View {
    List {
      Section {
        Text("One")
        Text("Two")
        Text("Three")
      }
    }
    .scrollDisabled(true)
    .scrollIndicators(.visible, axes: .horizontal)
    .scrollDismissesKeyboard(.interactively)
    .frame(maxHeight: .infinity)
  }
}

#Preview {
  ScrollViewChangesView()
}

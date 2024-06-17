import SwiftUI

struct NavigationViewExample: View {
  @State private var presentedNumbers = NavigationPath()

  var body: some View {
    NavigationStack(path: $presentedNumbers) {
      List(1..<50) { i in
        NavigationLink(value: i) {
          Label("Row \(i)", systemImage: "\(i).circle")
        }
      }
      .navigationDestination(for: Int.self) { i in
        Text("Detail \(i)")
      }
      .navigationTitle("Navigation")
    }
  }
}

#Preview {
  NavigationViewExample()
}

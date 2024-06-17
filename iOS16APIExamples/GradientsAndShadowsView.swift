import SwiftUI

struct GradientView: View {
  var body: some View {
    Image(systemName: "swift")
      .font(.system(size: 60))
      .frame(width: 150, height: 150)
      .background(in: Circle())
      .backgroundStyle(.blue.gradient)
  }
}

struct ShadowView: View {
  var body: some View {
    Circle()
      .fill(.red.shadow(.drop(color: .black, radius: 10)))
      .padding()
  }
}


#Preview("Gradient") {
  GradientView()
}


#Preview("Shadow") {
  ShadowView()
}

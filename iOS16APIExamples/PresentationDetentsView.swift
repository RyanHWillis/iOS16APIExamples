import SwiftUI

struct PresentationDetentsView: View {
  @State private var showSheet = false

  var body: some View {
    Button("Show Credits") {
      showSheet.toggle()
    }
    .sheet(isPresented: $showSheet) {
      Text("Hello!")
      //        .presentationDetents([.medium, .large, .height(100), .fraction(0.9)])
        .presentationDetents([.custom(TinyDetent.self)])
        .presentationDragIndicator(.visible)
    }
  }
}

struct TinyDetent: CustomPresentationDetent {
  static func height(in context: Context) -> CGFloat? {
    if context.dynamicTypeSize.isAccessibilitySize {
      return 140
    } else {
      return 60
    }
  }
}

#Preview {
  PresentationDetentsView()
}

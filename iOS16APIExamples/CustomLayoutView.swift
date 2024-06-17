import SwiftUI

struct CustomLayoutView: View {  
  var body: some View {
    RyanStack {
      Text("What")
        .background(.red)
      Text("could")
        .background(.gray)
      Text("posssibly")
        .background(.green)
      Text("go")
        .background(.orange)
      Text("wrong?")
        .background(.blue)
    }
    .background(.yellow)
  }
}

#Preview {
  CustomLayoutView()
}


struct RyanStack: Layout {
  func sizeThatFits(
    proposal: ProposedViewSize,
    subviews: Subviews,
    cache: inout Void
  ) -> CGSize {
    var totalHeight: CGFloat = 0
    var maxWidth: CGFloat = 0
    for subview in subviews {
      let subviewSize = subview.sizeThatFits(proposal)
      totalHeight += subviewSize.height
      maxWidth = max(maxWidth, subviewSize.width)
    }
    
    return CGSize(width: maxWidth, height: totalHeight)
  }

  func placeSubviews(
    in bounds: CGRect,
    proposal: ProposedViewSize,
    subviews: Subviews,
    cache: inout Void
  ) {
    var yOffset: CGFloat = bounds.minY
    
    for subview in subviews.reversed() {
      let subviewSize = subview.sizeThatFits(proposal)
      subview.place(
        at: CGPoint(x: bounds.minX, y: yOffset),
        proposal: ProposedViewSize(
          width: subviewSize.width,
          height: subviewSize.height
        )
      )
      yOffset += subviewSize.height
    }
  }
}

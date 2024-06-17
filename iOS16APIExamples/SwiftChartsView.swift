import SwiftUI
import Charts

struct SwiftChartsBarView: View {
  var body: some View {
    Chart {
      BarMark(
        x: .value("Type", "bird"),
        y: .value("Population", 1)
      )
      .foregroundStyle(.pink)

      BarMark(
        x: .value("Type", "dog"),
        y: .value("Population", 2)
      )
      .foregroundStyle(.green)

      BarMark(
        x: .value("Type", "cat"),
        y: .value("Population", 3)
      )
      .foregroundStyle(.blue)
    }
    .aspectRatio(1, contentMode: .fit)
    .padding()
  }
}

#Preview("Bar") {
  SwiftChartsBarView()
}


struct SwiftChartsLineView: View {
  var body: some View {
    List {
      Chart {
        LineMark(
          x: .value("Date", "Jan"),
          y: .value("Value", 2)
        )
        LineMark(
          x: .value("Date", "Feb"),
          y: .value("Value", 3)
        )
        LineMark(
          x: .value("Date", "March"),
          y: .value("Value", 7)
        )
      }
      .frame(height: 250)
    }
  }
}

#Preview("Line") {
  SwiftChartsLineView()
}

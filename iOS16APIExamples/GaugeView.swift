import SwiftUI

struct GaugeView: View {
  @State private var current = 67.0
  @State private var minValue = 50.0
  @State private var maxValue = 170.0

  var body: some View {
    Gauge(value: 80, in: 0...100) {
      Image(systemName: "heart.fill")
        .foregroundColor(.red)
    } currentValueLabel: {
      Text("\(Int(current))")
        .foregroundColor(.green)
    } minimumValueLabel: {
      Text("\(Int(minValue))")
        .foregroundColor(.green)
    } maximumValueLabel: {
      Text("\(Int(maxValue))")
        .foregroundColor(.red)
    }
    .gaugeStyle(.accessoryCircularCapacity)
  }
}

#Preview {
  GaugeView()
}

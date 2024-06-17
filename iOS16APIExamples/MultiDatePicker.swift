import SwiftUI

struct MultiDatePickerView: View {
  @State private var selectedDates: Set<DateComponents> = []
  @State private var startDate = Date()
  @State private var endDate = Date()

  var bounds: Range<Date> {
    return startDate..<endDate
  }

  var body: some View {
    VStack {
      MultiDatePicker("Select dates", selection: $selectedDates, in: bounds)
        .frame(height: 300)
    }
  }
}

#Preview {
  MultiDatePickerView()
}

import SwiftUI

struct GridView: View {
  var body: some View {
    Grid {
      GridRow {
        Text("Row 1")
        ForEach(0..<2) { _ in Color.red }
      }
      GridRow {
        Text("Row 2")
        ForEach(0..<5) { _ in Color.green }
      }
      GridRow {
        Text("Row 3")
        ForEach(0..<4) { _ in Color.blue }
      }
    }
  }
}

#Preview("Grid") {
  GridView()
}

struct GridCellColumnsView: View {
  var body: some View {
    Grid {
      GridRow {
        Color.red
        Color.yellow
          .gridCellColumns(2)
      }
      GridRow {
        Color.purple
          .gridCellColumns(3)
      }
      GridRow {
        Color.blue
        Color.black
        Color.orange
      }
    }
  }
}

#Preview("GridColumns") {
  GridCellColumnsView()
}

struct PetsView: View {
  struct Pet: Identifiable {
    let name: String
    let votes: Int

    var id: String {
      name
    }
  }

  let pets: [Pet] = [
    .init(name: "Sir Purrs-a-lot", votes: 10),
    .init(name: "Furrari", votes: 2),
    .init(name: "Chairman Meow", votes: 3)
  ]

  let totalVotes = 15
  
  var body: some View {
    Text("Favourite Cat")

    Grid(alignment: .leading) {
      ForEach(pets) { pet in
        GridRow {
          Text(pet.name)
          ProgressView(
            value: Double(pet.votes),
            total: Double(totalVotes))
          Text("\(pet.votes)")
            .gridColumnAlignment(.trailing)
        }

        Divider()
      }
    }
    .padding()
  }
}

#Preview("Pets") {
  PetsView()
}

import SwiftUI

struct NavigationSplitViewExample: View {
  struct Team: Identifiable, Hashable {
    let id = UUID()
    var name: String
    var players: [String]
  }

  @State private var teams = [
    Team(name: "BlueTeam", players: ["Ryan", "Fred", "Bob"]),
    Team(name: "RedTeam", players: ["Frodo", "James", "Alex"]),
  ]
  @State private var selectedTeam: Team?
  @State private var selectedPlayer: String?

  var body: some View {
    NavigationSplitView {
      List(teams, selection: $selectedTeam) { team in
        Text(team.name).tag(team)
      }
      .navigationSplitViewColumnWidth(250)
    } content: {
      List(selectedTeam?.players ?? [], id: \.self, selection: $selectedPlayer) { player in
        Text(player)
      }
    } detail: {
      Text(selectedPlayer ?? "Please choose a player.")
    }
    .navigationSplitViewStyle(.prominentDetail)
  }
}

#Preview {
  NavigationSplitViewExample()
}

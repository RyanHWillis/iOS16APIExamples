import SwiftUI
import PhotosUI

struct PhotosPickerView: View {
  @State private var avatarItem: PhotosPickerItem?

  var body: some View {
    PhotosPicker("Select image", selection: $avatarItem, matching: .images)
  }
}

#Preview {
  PhotosPickerView()
}

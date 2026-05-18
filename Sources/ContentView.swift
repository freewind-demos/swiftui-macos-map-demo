import MapKit
import SwiftUI

struct ContentView: View {
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 39.9087, longitude: 116.3975),
            span: MKCoordinateSpan(latitudeDelta: 0.08, longitudeDelta: 0.08)
        )
    )

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Map(position: $position) {
                Marker("天安门", coordinate: CLLocationCoordinate2D(latitude: 39.9087, longitude: 116.3975))
            }
            .frame(height: 360)
            .clipShape(RoundedRectangle(cornerRadius: 16))

            Text("原生地图支持拖拽、缩放、标记。")
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}

import SwiftUI
import MapKit
struct MyAnnotationItem: Identifiable {
    var coordinate: CLLocationCoordinate2D
    let id = UUID()
}
struct MapViews: View {
    @State var coordinateRegion: MKCoordinateRegion = {
        var newRegion = MKCoordinateRegion()
        newRegion.center.latitude = 38.85731330107643
        newRegion.center.longitude = -90.06830080251432
        newRegion.span.latitudeDelta = 0.2
        newRegion.span.longitudeDelta = 0.2
        return newRegion
    }()
    var annotationItems: [MyAnnotationItem] = [
        MyAnnotationItem(coordinate: CLLocationCoordinate2D(latitude: 38.85731330107643, longitude:  -90.06830080251432)),
        MyAnnotationItem(coordinate: CLLocationCoordinate2D(latitude: 38.85731330107643, longitude: -90.06830080251432)),
    ]
    var body: some View {
        VStack {
            Text("1870 E. Edwardsville Rd.")
                .offset(y:25)
            Text("Wood River, IL. 62095").padding()
                

            Map(coordinateRegion: $coordinateRegion,
                annotationItems: annotationItems) {item in
                MapPin(coordinate: item.coordinate)
            }
        }
    }
}

struct MapViews_Previews: PreviewProvider {
    static var previews: some View {
        MapViews()
    }
}


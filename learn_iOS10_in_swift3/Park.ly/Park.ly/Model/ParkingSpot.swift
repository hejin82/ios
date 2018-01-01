//
//  ParkingSpot.swift
//  Park.ly
//
//  Created by 何進 on 2018/1/1.
//  Copyright © 2018年 何進. All rights reserved.
//

import UIKit
import MapKit
import Contacts

class ParkingSpot: NSObject, MKAnnotation {
    
    let title: String?
    let locationName: String?
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, locationName: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.locationName = locationName
        self.coordinate = coordinate
    }
    
    var subtitle: String? {
        return locationName
    }
    
    func mapItem(location: CLLocationCoordinate2D) -> MKMapItem {
        let addressDictionary = [String(CNPostalAddressStreetKey): subtitle]
        let placemark = MKPlacemark(coordinate: location, addressDictionary: addressDictionary)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = title
        return mapItem
    }
    
}

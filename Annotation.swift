//
//  Annotation.swift
//  BeatrizMagalhães
//
//  Created by Beatriz Melo Mousinho Magalhães on 4/21/15.
//  Copyright (c) 2015 Beatriz Melo Mousinho Magalhães. All rights reserved.
//

import UIKit
import MapKit

class Annotation: NSObject, MKAnnotation {

        let title: String
        let subtitle: String
        let coordinate: CLLocationCoordinate2D
        
        init(title: String, subtitle: String, coordinate: CLLocationCoordinate2D){
            self.title = title
            self.subtitle = subtitle
            self.coordinate = coordinate
            
            super.init()
        }

    }




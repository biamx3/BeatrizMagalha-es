//
//  LocationData.swift
//  BeatrizMagalhães
//
//  Created by Beatriz Melo Mousinho Magalhães on 4/21/15.
//  Copyright (c) 2015 Beatriz Melo Mousinho Magalhães. All rights reserved.
//

import UIKit
import MapKit


//Timeline Locations
let initialLocation = CLLocation(latitude: -22.981696, longitude: -43.224378)
let secondLocation = CLLocation(latitude: -23.000770, longitude: -43.342744)
let thirdLocation = CLLocation(latitude: -22.975083, longitude: -43.390582)
let fourthLocation = CLLocation(latitude: -22.984489, longitude: -43.221325)
let fifthLocation = CLLocation(latitude: -22.912061, longitude: -43.208962)
let sixthLocation = CLLocation(latitude: -22.979547, longitude: -43.222096)
let seventhLocation = CLLocation(latitude: -22.977915, longitude: -43.231686)
let eighthLocation = CLLocation(latitude:-22.977914, longitude: -43.231685)
let ninthLocation = CLLocation(latitude:-22.977913, longitude: -43.231684)


//Coordinate Regions
let initialRegion = MKCoordinateRegionMakeWithDistance(initialLocation.coordinate, 2200, 2200)
let secondRegion = MKCoordinateRegionMakeWithDistance(secondLocation.coordinate, 1000, 1000)
let thirdRegion = MKCoordinateRegionMakeWithDistance(thirdLocation.coordinate, 1000, 1000)
let fourthRegion = MKCoordinateRegionMakeWithDistance(fourthLocation.coordinate, 1000, 1000)
let fifthRegion = MKCoordinateRegionMakeWithDistance(fifthLocation.coordinate, 1000, 1000)
let sixthRegion = MKCoordinateRegionMakeWithDistance(sixthLocation.coordinate, 1000, 1000)
let seventhRegion = MKCoordinateRegionMakeWithDistance(seventhLocation.coordinate, 1000, 1000)
let eighthRegion = MKCoordinateRegionMakeWithDistance(eighthLocation.coordinate, 1000, 1000)
let ninthRegion = MKCoordinateRegionMakeWithDistance(ninthLocation.coordinate, 1000, 1000)


//Annotations
let ann = Annotation(title: "Moscone Center", subtitle: "WWDC 2015", coordinate:CLLocationCoordinate2DMake(initialLocation.coordinate.latitude,initialLocation.coordinate.longitude))
let ann2 = Annotation(title: "Discovered I have Diabetes type 1", subtitle: "(2009) 13 years old, I was kind of clueless to what was happening.", coordinate:CLLocationCoordinate2DMake(secondLocation.coordinate.latitude,secondLocation.coordinate.longitude))
let ann3 = Annotation(title: "Paul McCartney Rock Concert", subtitle: "(2011) Even though Paul looked like a tiny little ant from my seat at the Concert Hall, that was the best show of my life.", coordinate:CLLocationCoordinate2DMake(thirdLocation.coordinate.latitude,thirdLocation.coordinate.longitude))
let ann4 = Annotation(title: "Designed School Graduation Shirt", subtitle: "(2013) I drew a caricature of my High School senior year teachers and won our graduation ceremony T-Shirt contest.", coordinate:CLLocationCoordinate2DMake(fourthLocation.coordinate.latitude,fourthLocation.coordinate.longitude))
let ann5 = Annotation(title: "Valedictorian at High School Graduation", subtitle: "(2013) This speech began my love for presenting ideas in public.", coordinate:CLLocationCoordinate2DMake(fifthLocation.coordinate.latitude,fifthLocation.coordinate.longitude))
let ann6 = Annotation(title: "Completed first Design Project for PUC-Rio", subtitle: "(2014) Working for kids at a Public Design School, this project forever changed how I view my profession as a Designer.", coordinate:CLLocationCoordinate2DMake(sixthLocation.coordinate.latitude,sixthLocation.coordinate.longitude))
let ann7 = Annotation(title: "Joined BEPiD (Brazilian Education Program for iOS Development)", subtitle: "(2015) BEPiD love.", coordinate:CLLocationCoordinate2DMake(seventhLocation.coordinate.latitude,seventhLocation.coordinate.longitude))
let ann8 = Annotation(title: "First game: Operation BRAIN", subtitle: "(2015) My first game ever developed in Objective C.", coordinate:CLLocationCoordinate2DMake(eighthLocation.coordinate.latitude,eighthLocation.coordinate.longitude))
let ann9 = Annotation(title: "Programming madness: I need a break!", subtitle: "(2015) I need a break app", coordinate:CLLocationCoordinate2DMake(ninthLocation.coordinate.latitude,ninthLocation.coordinate.longitude))

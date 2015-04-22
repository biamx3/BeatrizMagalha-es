//
//  ViewController.swift
//  BeatrizMagalhães
//
//  Created by Beatriz Melo Mousinho Magalhães on 4/21/15.
//  Copyright (c) 2015 Beatriz Melo Mousinho Magalhães. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var homeblurView: UIVisualEffectView!
    @IBOutlet weak var homeView: UIView!
    @IBOutlet weak var exploreView: UIButton!

    @IBOutlet weak var homebuttonsView: UIView!
    //Story Mode locations
    
    let initialLocation = CLLocation(latitude: -22.981696, longitude: -43.224378)
    let secondLocation = CLLocation(latitude: -23.000770, longitude: -43.342744)
    let thirdLocation = CLLocation(latitude: -22.975083, longitude: -43.390582)
    let fourthLocation = CLLocation(latitude: -22.984489, longitude: -43.221325)
    let fifthLocation = CLLocation(latitude: -22.912061, longitude: -43.208962)
    let sixthLocation = CLLocation(latitude: -22.979547, longitude: -43.222096)
    let seventhLocation = CLLocation(latitude: -22.977915, longitude: -43.231686)
    let eighthLocation = CLLocation(latitude:-22.977914, longitude: -43.231685)
    let ninthLocation = CLLocation(latitude:-22.977913, longitude: -43.231684)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
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
        
        self.mapView.setRegion(initialRegion, animated: true)
        
        let ann = Annotation(title: "Moscone Center", subtitle: "WWDC 2015", coordinate:CLLocationCoordinate2DMake(initialLocation.coordinate.latitude,initialLocation.coordinate.longitude))
        let ann2 = Annotation(title: "Discovered I have Diabetes type 1", subtitle: "(2009) 13 years old, I was kind of clueless to what was happening.", coordinate:CLLocationCoordinate2DMake(secondLocation.coordinate.latitude,secondLocation.coordinate.longitude))
        let ann3 = Annotation(title: "Paul McCartney Rock Concert", subtitle: "(2011) Even though Paul looked like a tiny little ant from my seat at the Concert Hall, that was the best show of my life.", coordinate:CLLocationCoordinate2DMake(thirdLocation.coordinate.latitude,thirdLocation.coordinate.longitude))
        let ann4 = Annotation(title: "Designed School Graduation Shirt", subtitle: "(2013) I drew a caricature of my High School senior year teachers and won our graduation ceremony T-Shirt contest.", coordinate:CLLocationCoordinate2DMake(fourthLocation.coordinate.latitude,fourthLocation.coordinate.longitude))
        let ann5 = Annotation(title: "Valedictorian at High School Graduation", subtitle: "(2013) This speech began my love for presenting ideas in public.", coordinate:CLLocationCoordinate2DMake(fifthLocation.coordinate.latitude,fifthLocation.coordinate.longitude))
        let ann6 = Annotation(title: "Completed first Design Project for PUC-Rio", subtitle: "(2014) Working for kids at a Public Design School, this project forever changed how I view my profession as a Designer.", coordinate:CLLocationCoordinate2DMake(sixthLocation.coordinate.latitude,sixthLocation.coordinate.longitude))
        let ann7 = Annotation(title: "Joined BEPiD (Brazilian Education Program for iOS Development)", subtitle: "(2015) BEPiD love.", coordinate:CLLocationCoordinate2DMake(seventhLocation.coordinate.latitude,seventhLocation.coordinate.longitude))
        let ann8 = Annotation(title: "First game: Operation BRAIN", subtitle: "(2015) My first game ever developed in Objective C.", coordinate:CLLocationCoordinate2DMake(eighthLocation.coordinate.latitude,eighthLocation.coordinate.longitude))
        let ann9 = Annotation(title: "Programming madness: I need a break!", subtitle: "(2015) I need a break app", coordinate:CLLocationCoordinate2DMake(ninthLocation.coordinate.latitude,ninthLocation.coordinate.longitude))
        
        
        
        self.mapView.addAnnotation(ann)
        self.mapView.addAnnotation(ann2)
        self.mapView.addAnnotation(ann3)
        self.mapView.addAnnotation(ann4)
        self.mapView.addAnnotation(ann5)
        self.mapView.addAnnotation(ann6)
        self.mapView.addAnnotation(ann7)
        self.mapView.addAnnotation(ann8)
        self.mapView.addAnnotation(ann9)
        
//        var circle: MKCircle = MKCircle(centerCoordinate: CLLocationCoordinate2D(latitude: initialLocation.coordinate.latitude, longitude:initialLocation.coordinate.longitude), radius: 200)
//        self.mapView.addOverlay(circle)
        
        
        var mapType: MKMapType
        enum MKMapType: UInt {
            case Standard
        }
        
        self.mapView.delegate = self
        
    }
    
    @IBAction func exploreButton(sender: AnyObject) {
        
        self.homeView.hidden = true
        self.homeblurView.hidden = true
        exploreView.hidden = true
    
    }
    
    func mapView(mapView: MKMapView!, viewForAnnotation annotation: MKAnnotation!) -> MKAnnotationView! {
        
        if let annotation = annotation as? Annotation {
            
            let identifier = "pin"
            var view: MKPinAnnotationView
            if let dequeuedView = mapView.dequeueReusableAnnotationViewWithIdentifier(identifier) as? MKPinAnnotationView {
                
                dequeuedView.annotation = annotation
                view = dequeuedView
            } else {
                view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                view.canShowCallout = true
                view.calloutOffset = CGPoint(x: -5, y:5)
                view.rightCalloutAccessoryView = UIButton.buttonWithType(.DetailDisclosure) as! UIView
                //view.pinColor = MKPinAnnotationColor.Green
                view.enabled = true
                view.image = UIImage(named: "icon.png")
                //view.animatesDrop = true
                
                var imageView = UIImageView(image: UIImage(contentsOfFile: "image.png"))
                view.leftCalloutAccessoryView = imageView
            }
            return view
        }
        return nil
    }
    
    
//    func mapView(mapView: MKMapView!, rendererForOverlay overlay: MKOverlay!) -> MKOverlayRenderer! {
//        if (overlay is MKCircle)
//        {
//            var circleRenderer = MKCircleRenderer(overlay: overlay)
//            circleRenderer.strokeColor = UIColor.greenColor()
//            circleRenderer.fillColor = UIColor(
//                red: 0,
//                green: 1.0,
//                blue: 0,
//                alpha: 0.5)
//            
//            return circleRenderer
//        }
//        return nil
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}



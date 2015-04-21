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

    //Milestone locations
    let mosconeLocation = CLLocation(latitude: -23.000770, longitude: -43.342744)
    let stanfordLocation = CLLocation(latitude: 37.4300, longitude: -122.1700)
        

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(mosconeLocation.coordinate, 2000, 2000)
        
        self.mapView.setRegion(coordinateRegion, animated: true)
        
        let ann = Annotation(title: "Moscone Center", subtitle: "WWDC 2015", coordinate:CLLocationCoordinate2DMake(mosconeLocation.coordinate.latitude,mosconeLocation.coordinate.longitude))
        self.mapView.addAnnotation(ann)
                
        
        var circle: MKCircle = MKCircle(centerCoordinate: CLLocationCoordinate2D(latitude: mosconeLocation.coordinate.latitude, longitude:mosconeLocation.coordinate.longitude), radius: 200)
        self.mapView.addOverlay(circle)
        
        
        var mapType: MKMapType
        enum MKMapType: UInt {
            case Standard
        }
        
        self.mapView.delegate = self
        
    }
    
    @IBAction func goButton(sender: AnyObject) {
        
        self.homeView.hidden = true
        
        self.homeblurView.hidden = true
    
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
    
    
    func mapView(mapView: MKMapView!, rendererForOverlay overlay: MKOverlay!) -> MKOverlayRenderer! {
        if (overlay is MKCircle)
        {
            var circleRenderer = MKCircleRenderer(overlay: overlay)
            circleRenderer.strokeColor = UIColor.greenColor()
            circleRenderer.fillColor = UIColor(
                red: 0,
                green: 1.0,
                blue: 0,
                alpha: 0.5)
            
            return circleRenderer
        }
        return nil
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}



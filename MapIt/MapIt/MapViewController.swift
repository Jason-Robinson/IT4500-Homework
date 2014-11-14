//
//  MapViewController.swift
//  MapIt
//
//  Created by Jason Robinson on 11/13/14.
//  Copyright (c) 2014 Jason Robinson. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        
        let mapData = appDelegate.getMapData()
        
        
        
        var annotations = mapData.annotations
        var titles = mapData.titles
        
        loadAnnotationData(annotations, titles: titles)
        
        
        
        
    }
    
    
    func loadAnnotationData(annotations: [[Double]], titles: [[String]]){
        
        let latitude = 0
        let longtitude = 1
        let latDelta = 2
        let longDelta = 3
        
        let first = 0
        let second = 1
        let third = 2
        let fourth = 3
        
        let title = 0
        let subTitle = 1
        
        //first annotation data-----------------------------------------------\\
        //degrees
        var firstLat:CLLocationDegrees = annotations[first][latitude]
        var firstLong:CLLocationDegrees = annotations[first][longtitude]
        var firstLatDelta:CLLocationDegrees = annotations[first][latDelta]
        var firstLongDelta:CLLocationDegrees = annotations[first][longDelta]
        //titles
        var firstTitle = titles[first][title]
        var firstSubTitle = titles[first][subTitle]
        
        //first span, location, region-------------------------------------------------------------\\
        var firstSpan:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta:firstLatDelta, longitudeDelta:firstLatDelta)
        var firstLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(firstLat, firstLong)
        //var firstRegion:MKCoordinateRegion = MKCoordinateRegionMake(firstLocation, firstSpan)
        //mapView.setRegion(firstRegion, animated:true)
        
        //Map Annotation----------------------------------\\
        var firstMapAnnotation = MKPointAnnotation()
        firstMapAnnotation.coordinate = firstLocation
        firstMapAnnotation.title = firstTitle
        firstMapAnnotation.subtitle = firstSubTitle
        mapView.addAnnotation(firstMapAnnotation)
        
        
        //----------------------------------------------------------------------\\
        
        
        //2. second annotation data--------------------------------------------------\\
        //degrees
        var secondLat:CLLocationDegrees = annotations[second][latitude]
        var secondLong:CLLocationDegrees = annotations[second][longtitude]
        var secondLatDelta:CLLocationDegrees = annotations[second][latDelta]
        var secondLongDelta:CLLocationDegrees = annotations[second][longDelta]
        //titles
        var secondTitle = titles[second][title]
        var secondSubTitle = titles[second][subTitle]
        
        //2. second span, location, region-------------------------------------------------------------\\
        var secondSpan:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta:secondLatDelta, longitudeDelta:secondLatDelta)
        var secondLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(secondLat, secondLong)
        //var region:MKCoordinateRegion = MKCoordinateRegionMake(secondLocation, secondSpan)
        //mapView.setRegion(region, animated:true)
        
        //2. second Map Annotation----------------------------------\\
        var secondMapAnnotation = MKPointAnnotation()
        secondMapAnnotation.coordinate = secondLocation
        secondMapAnnotation.title = secondTitle
        secondMapAnnotation.subtitle = secondSubTitle
        mapView.addAnnotation(secondMapAnnotation)
        //------------------------------------------------------------------------\\
        
        //3. third annotation data--------------------------------------------------\\
        //degrees
        var thirdLat:CLLocationDegrees = annotations[third][latitude]
        var thirdLong:CLLocationDegrees = annotations[third][longtitude]
        var thirdLatDelta:CLLocationDegrees = annotations[third][latDelta]
        var thirdLongDelta:CLLocationDegrees = annotations[third][longDelta]
        //titles
        var thirdTitle = titles[third][title]
        var thirdSubTitle = titles[third][subTitle]
        
        //3. third span, location, region-------------------------------------------------------------\\
        var thirdSpan:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta:thirdLatDelta, longitudeDelta:thirdLatDelta)
        var thirdLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(thirdLat, thirdLong)
        var thirdRegion:MKCoordinateRegion = MKCoordinateRegionMake(thirdLocation, thirdSpan)
        mapView.setRegion(thirdRegion, animated:true)
        
        //3. third Map Annotation----------------------------------\\
        var thirdMapAnnotation = MKPointAnnotation()
        thirdMapAnnotation.coordinate = thirdLocation
        thirdMapAnnotation.title = thirdTitle
        thirdMapAnnotation.subtitle = thirdSubTitle
        mapView.addAnnotation(thirdMapAnnotation)
        //-------------------------------------------------------------------------\\
        
        //4. fourth annotation data
        //degrees
        var fourthLat:CLLocationDegrees = annotations[fourth][latitude]
        var fourthLong:CLLocationDegrees = annotations[fourth][longtitude]
        var fourthLatDelta:CLLocationDegrees = annotations[fourth][latDelta]
        var fourthLongDelta:CLLocationDegrees = annotations[fourth][longDelta]
        //titles
        var fourthTitle = titles[fourth][title]
        var fourthSubTitle = titles[fourth][subTitle]
        
        //4. fourth span, location, region-------------------------------------------------------------\\
        var fourthSpan:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta:fourthLatDelta, longitudeDelta:        fourthLatDelta)
        var fourthLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(fourthLat, fourthLong)
        //var region:MKCoordinateRegion = MKCoordinateRegionMake(fourthLocation, fourthSpan)
        //mapView.setRegion(region, animated:true)
        
        //4. fourth Map Annotation----------------------------------\\
        var fourthMapAnnotation = MKPointAnnotation()
        fourthMapAnnotation.coordinate = fourthLocation
        fourthMapAnnotation.title = fourthTitle
        fourthMapAnnotation.subtitle = fourthSubTitle
        mapView.addAnnotation(fourthMapAnnotation)
        
        //------------------------------------------------------------------------\\
        
        //pinch zoom
        let longpress = UILongPressGestureRecognizer(target: self, action: "action:")
        longpress.minimumPressDuration = 1.0
        mapView.addGestureRecognizer(longpress)
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


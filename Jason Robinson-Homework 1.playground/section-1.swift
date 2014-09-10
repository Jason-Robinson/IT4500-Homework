// Playground - noun: a place where people can play

/*Jason Robinson
* 16052797
* Homework 1
*/

import UIKit

// creates backgroundView frame
let view = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 320.0, height: 480))

//defines backgroundViews color
view.backgroundColor = UIColor(red: 240.0/255.0, green: 230.0/255.0, blue: 242.0/255.0, alpha: 1.0)

//creates greenView frame
let greenView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 10.0, height: 10.0))

//defines greenViews color
greenView.backgroundColor = UIColor.greenColor()

//creates blueViews frame
let blueView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 9.0, height: 9.0))

//defines blueViews color
blueView.backgroundColor = UIColor.blueColor()

//creates orangeViews frame
let orangeView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 10.0, height: 10.0))

//defines orangeViews color
orangeView.backgroundColor = UIColor.orangeColor()

//creates yellowViews frame
let yellowView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 10.0, height: 10.0))

//defines yellowViews color
yellowView.backgroundColor = UIColor.yellowColor()

// --greenView Constraints--

//greenViews distance from the top of the backgroundView
let greenViewHeightConstraint = NSLayoutConstraint(item: greenView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 20.0)

//greenViews distance from the left of the backgroundView
let greenViewWidthConstraint = NSLayoutConstraint(item: greenView, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 16.0)

//greenViews distance from the bottom of the backgroudView
let greenViewTopConstraint = NSLayoutConstraint(item: greenView, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: -10.0)

//greenViews distance from the right of the backgroundView
let greenViewRightConstraint = NSLayoutConstraint(item: greenView, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: -16.0)

view.setTranslatesAutoresizingMaskIntoConstraints(false)
greenView.setTranslatesAutoresizingMaskIntoConstraints(false)

// adds greenView to view
view.addSubview(greenView)

// --greenView constraints end--



// --blueViews Constraints--

//blueViews distance from the top of greenView
let blueViewWidthConstraint = NSLayoutConstraint(item: blueView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: greenView, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 10.0)

//blueViews distance from the left of grennView
let blueViewHeightConstraint = NSLayoutConstraint(item: blueView, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: greenView, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 10.0)

// distance between the bottom bluesView and the centerY-axis of greenView
let blueViewTopConstraint = NSLayoutConstraint(item: blueView, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: greenView, attribute: NSLayoutAttribute.CenterY, multiplier: 1.0, constant: -3.0)

// distance between the rightside of blueView and the centerX-axis of greenView
let blueViewRightConstraint = NSLayoutConstraint(item: blueView, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: greenView, attribute: NSLayoutAttribute.CenterX, multiplier: 1.0, constant: -3.0)
// --End of blueViews Constraints--


view.setTranslatesAutoresizingMaskIntoConstraints(false)
blueView.setTranslatesAutoresizingMaskIntoConstraints(false)

// adds blueView to view
view.addSubview(blueView)


// --Orange Constraints--

//orangeViews distance from the top of greenView
let orangeViewHeightConstraint = NSLayoutConstraint(item: orangeView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: greenView, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 10.0)

// distance between the leftside of rangeView and the centerX-axis of greenview
let orangeViewWidthConstraint = NSLayoutConstraint(item: orangeView, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: greenView, attribute: NSLayoutAttribute.CenterX, multiplier: 1.0, constant: 3.0)

// distance between the bottom of orangeView and the centerY-axis of greenview
let orangeViewBottomConstraint = NSLayoutConstraint(item: orangeView, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: greenView, attribute: NSLayoutAttribute.CenterY, multiplier: 1.0, constant: -3.0)

//orangeViews distance from the right side of greenView
let orangeViewRightConstraint = NSLayoutConstraint(item: orangeView, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: greenView, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: -10.0)
// --End of Orange Constraints--

view.setTranslatesAutoresizingMaskIntoConstraints(false)
orangeView.setTranslatesAutoresizingMaskIntoConstraints(false)
// adds orange subview to view
view.addSubview(orangeView)

// --yellowViews Constraints--

//yellowViews distance from the centerY-axis of greenView (top of yellowView)
let yellowViewHeightConstraint = NSLayoutConstraint(item: yellowView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: greenView, attribute: NSLayoutAttribute.CenterY, multiplier: 1.0, constant: 3.0)

//yellowViews distance from the left side of greenView
let yellowViewWidthConstraint = NSLayoutConstraint(item: yellowView, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: greenView, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 10.0)

//yellowViews distance from the bottom of greenView
let yellowViewTopConstraint = NSLayoutConstraint(item: yellowView, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: greenView, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: -10.0)

//yellowViews distance from the right side of greenView
let yellowViewRightConstraint = NSLayoutConstraint(item: yellowView, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: greenView, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: -10.0)
// --End of yellow Constraints--

view.setTranslatesAutoresizingMaskIntoConstraints(false)
yellowView.setTranslatesAutoresizingMaskIntoConstraints(false)
//adds yellowView to view
view.addSubview(yellowView)

//applys greenViews constraints to the view
view.addConstraints([greenViewWidthConstraint, greenViewHeightConstraint, greenViewTopConstraint, greenViewRightConstraint])

//applys blueViews constraints to the view
view.addConstraints([blueViewWidthConstraint, blueViewHeightConstraint, blueViewTopConstraint, blueViewRightConstraint])

//applys orangeViews constraints to the view
view.addConstraints([orangeViewWidthConstraint, orangeViewHeightConstraint, orangeViewBottomConstraint, orangeViewRightConstraint])

//applys yellowViews constraints to the view
view.addConstraints([yellowViewWidthConstraint, yellowViewHeightConstraint, yellowViewTopConstraint, yellowViewRightConstraint])

view.constraints()
view.layoutIfNeeded()
view

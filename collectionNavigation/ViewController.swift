//
//  ViewController.swift
//  collectionNavigation
//
//  Created by Shemona on 8/23/16.
//  Copyright © 2016 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource
{

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int
    {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 2
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! CollectionViewCell
        
        cell.btn_Navigate.tag = indexPath.row
        cell.btn_Navigate .addTarget(self, action: #selector(ViewController.navigateToanotherScreen(_:)), forControlEvents: .TouchUpInside)
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
    {
        
    }

    
    func navigateToanotherScreen(index:UIButton)
    {
        if index.tag == 0
        {
            self.performSegueWithIdentifier("first", sender: nil)
        }
        else if index.tag == 1
        {
            self.performSegueWithIdentifier("second", sender: nil)

        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if segue.identifier == "first"
        {
            let navigate = segue.destinationViewController as! FirstViewController
        }
        if segue.identifier == "second"
        {
            let navigate = segue.destinationViewController as! SecondViewController
        }
    }
}


//
//  PlaySongVC.swift
//  Segues
//
//  Created by Matt Foo on 9/23/17.
//  Copyright © 2017 Matt Foo. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    @IBOutlet weak var songTitle: UILabel!
    
    //Since this VC is caleld via segue and is passed data via prepare for segue in the musicList VC, there will always be a song name passed as data
    private var _selectedSong:String!
    
    //getters and setters of the songs name
    var selectedSong:String {
        
        get {
            return _selectedSong
        }
        
        set {
            _selectedSong = newValue
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        songTitle.text = selectedSong
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

//
//  MusicListVC.swift
//  Segues
//
//  Created by Matt Foo on 9/21/17.
//  Copyright © 2017 Matt Foo. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.blue
    }
    @IBAction func load3rdScreenPressed(_ sender: UIButton) {
        let songTitle = "Not today - BTS"
        performSegue(withIdentifier: "playSongVC", sender: songTitle)
    }

    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
            
            if let song = sender as? String {
                 destination.selectedSong = song
            }
            
           
        }
    }
}

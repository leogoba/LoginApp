//
//  BioViewController.swift
//  LoginApp
//
//  Created by leogoba on 05.10.2022.
//

import UIKit

class BioViewController: UIViewController {
    @IBOutlet var fullBioPerson: UILabel!
    
    private let poi = Person.createPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fullBioPerson.text = poi.textAboutPerson
    }

}

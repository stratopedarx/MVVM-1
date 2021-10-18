//
//  ViewController.swift
//  MVVM-1
//
//  Created by Sergey Lobanov on 18.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak private var nameLabel: UILabel!
    @IBOutlet weak private var secondNameLabel: UILabel!
    @IBOutlet weak private var ageLabel: UILabel!

    var profile: Profile? {
        didSet {
            guard let profile = profile else { return }
            self.nameLabel.text = profile.name
            self.secondNameLabel.text = profile.secondName
            self.ageLabel.text = "\(profile.age)"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        profile = Profile(name: "Jonh", secondName: "Smith", age: 33)
    }
}


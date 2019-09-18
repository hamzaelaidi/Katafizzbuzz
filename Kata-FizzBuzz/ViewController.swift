//
//  ViewController.swift
//  Kata-FizzBuzz
//
//  Created by Hamza EL AIDI on 18/09/2019.
//  Copyright © 2019 Hamza EL AIDI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let fizzBuzz = FizzBuzz()

    override func viewDidLoad() {
        super.viewDidLoad()
        showFizzBuzz()
    }
    
    func showFizzBuzz() {
        for i in 1...100 {
            do {
                print(try fizzBuzz.convert(input: i))
            } catch {
                print(error)
            }
        }
    }


}


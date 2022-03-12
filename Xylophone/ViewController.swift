//
//  ViewController.swift
//  Xylophone


import UIKit
import AVFoundation

var player: AVAudioPlayer?

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func cButtonPressed(_ sender: UIButton) {
        playSound(_filename: "C")
    }
    
    @IBAction func dButtonPressed(_ sender: UIButton) {
        playSound(_filename: "D")
    }
    
    @IBAction func eButtonPressed(_ sender: UIButton) {
        playSound(_filename: "E")
    }
    
    @IBAction func fButtonPressed(_ sender: UIButton) {
        playSound(_filename: "F")
    }
    
    @IBAction func gButtonPressed(_ sender: UIButton) {
        playSound(_filename: "G")
    }
    @IBAction func aButtonPressed(_ sender: UIButton) {
        playSound(_filename: "A")
    }
    @IBAction func bButtonPressed(_ sender: UIButton) {
        playSound(_filename: "B")
    }
    
    func playSound( _filename:String) {
        
        let url = Bundle.main.url(forResource: _filename, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
        
    }
    
}


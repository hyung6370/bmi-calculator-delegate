//
//  SecondViewController.swift
//  BMI
//
//  Created by KIM Hyung Jun on 2023/07/03.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var bmiNumberLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    // 데이터를 전달 받기 위해서!(옵셔널로 받는다)
    var bmiNumber: Double?
    var adviceString: String?
    var bmiColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        makeUI()
    }

    func makeUI() {
        
        bmiNumberLabel.clipsToBounds = true
        bmiNumberLabel.layer.cornerRadius = 8
        bmiNumberLabel.backgroundColor = .gray
        
        backButton.setTitle("다시 계산하기", for: .normal)
        
        // button radius
        backButton.clipsToBounds = true
        backButton.layer.cornerRadius = 20
        
        // 데이터 받기
        // 옵셔널 값 벗기기
        guard let bmi = bmiNumber else { return }
        bmiNumberLabel.text = String(bmi) // Double -> String 변환 후 표시
        
        adviceLabel.text = adviceString
        bmiNumberLabel.backgroundColor = bmiColor
    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}

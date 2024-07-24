//
//  BillingTimer.swift
//  Communication Patterns Example
//
//  Created by Wahyu Herdianto on 19/07/24.
//

import Foundation

final class BillingTimer {
    var timer = Timer()
    var duration: Int = 0
    
    func startTimer(duration: Int) {
        self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerCountdown), userInfo: nil, repeats: true)
    }
    
    @objc private func timerCountdown() {
        self.duration -= 1
        if self.duration == 0 { self.timer.invalidate() }
        print("timer:", self.duration)
    }
}

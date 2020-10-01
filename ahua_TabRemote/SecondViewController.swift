//
//  SecondViewController.swift
//  ahua_TabRemote
//
//  Created by Amy Hua on 2/29/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import UIKit

class Workout{
    var workout: String
    var exercise: [String]
    
    init(workout: String, exercise: [String]){
        self.exercise = exercise
        self.workout = workout
    }
}


class SecondViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    @IBOutlet weak var exercise2: UILabel!
    
    @IBOutlet weak var exercise: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    var workouts = [Workout]()
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return workouts.count
        }
        else{
            let selected = pickerView.selectedRow(inComponent: 0)
            return workouts[selected].exercise.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return workouts[row].workout
        }
        else{
            let selected = pickerView.selectedRow(inComponent: 0)
            return workouts[selected].exercise[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerView.reloadComponent(1)
        
        let selectedWorkout = pickerView.selectedRow(inComponent: 0)
        let selectedExercise = pickerView.selectedRow(inComponent: 0)
        let wk = workouts[selectedWorkout].workout
        
        
        exercise.text = "Type: \(wk)"
        
    }
    
    
    override func viewDidLoad() {
        pickerView.delegate = self
        pickerView.dataSource = self
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        workouts.append(Workout(workout: "Biceps & Back", exercise: ["Bicep Curls","UpRight Rows","Shrugs","Bent Over Rows", "Bent Over Flys"]))
        workouts.append(Workout(workout: "Triceps & Chest", exercise: ["Shoulder Press","Chest Press","Lateral Raises","Forward Raises"]))
        workouts.append(Workout(workout: "Legs", exercise: ["Squat","Lunges","DeadLifts","Calf Raises"]))
        workouts.append(Workout(workout: "Abs", exercise: ["Sit Up","Sitting Twist","Leg Raises","Flutter Kicks","Planks"]))
    }
    
    
    
    
    
    
    


}


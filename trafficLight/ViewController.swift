//
//  ViewController.swift
//  trafficLight
//
//  Created by Анастасия Лагарникова on 17.02.2020.
//  Copyright © 2020 lagarnas. All rights reserved.
//

/*
 Написать светофор из квадратов на прямоугольнике черного цвета: красный, под ним желтый, под желтым зеленый, все на черном фоне.
 (констраинт черного задать относительно цветных)
 */

import UIKit

class ViewController: UIViewController {
    //создаем черный
    let viewBlack: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.black
        return view
    }()
    
    //создаем red
    let viewRed: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.red
        return view
    }()
    
    //создаем yellow
    let viewYellow: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.yellow
        return view
    }()
    
    //создаем green
    let viewGreen: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.green
        return view
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //добавляем к вью сабвью
        view.addSubview(viewBlack)
        view.addSubview(viewRed)
        view.addSubview(viewYellow)
        view.addSubview(viewGreen)
        
        createViewBlackConstraint()
        createViewRedConstraint()
        createViewYellowConstraint()
        createViewGreenConstraint()
    }
    
    func createViewBlackConstraint() {
        //центр по х такой же как у view
        viewBlack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //ширина
        viewBlack.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 2 / 3).isActive = true
        //сверху
        viewBlack.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        //снизу
        viewBlack.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
    }
    
    func createViewRedConstraint() {
        viewRed.centerXAnchor.constraint(equalTo: viewBlack.centerXAnchor).isActive = true
        //ширина
        viewRed.widthAnchor.constraint(equalTo: viewBlack.widthAnchor, multiplier: 2 / 3).isActive = true
        //сверху
        viewRed.topAnchor.constraint(equalTo: viewBlack.topAnchor, constant: 20).isActive = true
        //высота
        viewRed.heightAnchor.constraint(equalTo: viewBlack.heightAnchor, multiplier: 1 / 4).isActive = true
    }
    
    func createViewYellowConstraint() {
        viewYellow.centerXAnchor.constraint(equalTo: viewRed.centerXAnchor).isActive = true
        viewYellow.centerYAnchor.constraint(equalTo: viewBlack.centerYAnchor).isActive = true
        //ширина
        viewYellow.widthAnchor.constraint(equalTo: viewRed.widthAnchor).isActive = true
        //сверху
        viewYellow.topAnchor.constraint(equalTo: viewRed.bottomAnchor, constant: 20).isActive = true
        //высота
        viewYellow.heightAnchor.constraint(equalTo: viewRed.heightAnchor).isActive = true
    }
    
    func createViewGreenConstraint() {
        viewGreen.centerXAnchor.constraint(equalTo: viewBlack.centerXAnchor).isActive = true
        //ширина
        viewGreen.widthAnchor.constraint(equalTo: viewRed.widthAnchor).isActive = true
        //сверху
        viewGreen.bottomAnchor.constraint(equalTo: viewBlack.bottomAnchor, constant: -20).isActive = true
        //высота
        viewGreen.heightAnchor.constraint(equalTo: viewYellow.heightAnchor).isActive = true
    }
    

}

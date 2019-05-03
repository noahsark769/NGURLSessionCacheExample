//
//  ViewController.swift
//  NGURLSessionCacheExample
//
//  Created by Noah Gilmore on 5/2/19.
//  Copyright © 2019 Noah Gilmore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let button = UIButton()
    private let progressView = UIProgressView(progressViewStyle: .default)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = .white

        view.addSubview(button)
        view.addSubview(progressView)
        button.translatesAutoresizingMaskIntoConstraints = false
        progressView.translatesAutoresizingMaskIntoConstraints = false

        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        progressView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.bottomAnchor.constraint(equalTo: progressView.bottomAnchor, constant: -10).isActive = true

        button.setTitle("Run downloads", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.addTarget(self, action: #selector(runDownloads(_:)), for: .touchUpInside)
        progressView.setProgress(0, animated: true)
        progressView.trackTintColor = .gray
        progressView.progressTintColor = .blue
        progressView.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }

    @objc private func runDownloads(_ sender: UIButton) {
        print("run the downloads, mate")
    }
}


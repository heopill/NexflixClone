//
//  YoutubeViewController.swift
//  NetflixClone
//
//  Created by 허성필 on 5/9/25.
//

import UIKit
import SnapKit
import YouTubeiOSPlayerHelper

class YoutubeViewController: UIViewController, YTPlayerViewDelegate {
    private let key: String
    private let playerView = YTPlayerView()
    
    init(key: String) {
        self.key = key
        super.init(nibName: nil, bundle: nil)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        playerView.delegate = self
        playerView.load(withVideoId: key)
    }
    
    private func configureUI() {
        view.addSubview(playerView)
        playerView.snp.makeConstraints { make in
            make.edges.equalTo(view.safeAreaLayoutGuide.snp.edges)
        }
    }
    
    func playerViewDidBecomeReady(_ playerView: YTPlayerView) {
        playerView.playVideo()
    }
}

//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Yujing Wei on 4/9/25.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var PosterImageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Post Details"
        navigationController?.navigationBar.prefersLargeTitles = false

        textView.text = post.caption.trimHTMLTags() ?? post.caption
        
        if let photo = post.photos.first {
            let url = photo.originalSize.url
            Nuke.loadImage(with: url, into: PosterImageView)
        }

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

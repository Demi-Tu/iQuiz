//
//  QuizTableViewCell.swift
//  iQuiz
//
//  Created by AT on 11/11/17.
//  Copyright © 2017 AT. All rights reserved.
//

import UIKit

class QuizTableViewCell: UITableViewCell {

    @IBOutlet weak var subjectLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

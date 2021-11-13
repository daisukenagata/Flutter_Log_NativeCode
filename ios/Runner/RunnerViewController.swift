import UIKit

class RunnerViewController: UIViewController {

    private var b = UIButton()
    private var titleLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        b.frame = CGRect(x: UIScreen.main.bounds.width/2-50, y: 100, width: 100, height: 50)
        b.setTitle("Push", for: .normal)
        titleLabel.frame = b.frame
        titleLabel.frame.size.width = 200
        titleLabel.frame.origin.y = 200
        titleLabel.text = "RunnerViewController"
        b.addTarget(self, action: #selector(action), for: .touchUpInside)
        b.backgroundColor = .lightGray
        view.addSubview(b)
        view.addSubview(titleLabel)
        view.backgroundColor = .white
    }

    @objc func action() {
        titleLabel.text = "Log count" + Int.random(in: 1..<10).description
        titleLabel.textAlignment = .center
    }
}

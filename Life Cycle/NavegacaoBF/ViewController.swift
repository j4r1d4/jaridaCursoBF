//
//  ViewController.swift
//  NavegacaoBF
//
//  Created by Caio Fabrini on 04/10/22.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(#function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(#function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(#function)
    }
    

    @IBAction func tappedGoScreen02Button(_ sender: UIButton) {
//     // exibindo modal de maneira programatica
//        let vc = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(withIdentifier: "Tela02VC")
//        as? Tela02VC
//        // o present ele exibe a MODAL
//        present(vc ?? UIViewController(), animated: true)
        
        // exibindo NAVIGATION de maneira programatica
        let vc = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(withIdentifier: "Tela02VC") as? Tela02VC
        // o pushViewController ele exibe a tela da controladora
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
    @IBAction func tappedGoScreen03Button(_ sender: UIButton) {
    
    }
    
    
}


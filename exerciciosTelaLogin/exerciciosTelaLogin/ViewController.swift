//
//  ViewController.swift
//  exerciciosTelaLogin
//
//  Created by Járida Freire on 23/09/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTextField()
       loginButton.isEnabled = false
    }
        
        func configTextField(){
            nameTextField.placeholder = "Digite seu nome"
            addressTextField.placeholder = "Digite seu endereço"
            passwordTextField.placeholder = "Digite sua senha"
            confirmPasswordTextField.placeholder = "Digite sua novamente"
            nameTextField.delegate = self
            addressTextField.delegate = self
            passwordTextField.delegate = self
            confirmPasswordTextField.delegate = self
            
            loginButton.setTitle("Cadastrar", for: .normal)
            loginButton.backgroundColor = .blue
            loginButton.setTitleColor(.white, for: .normal)
            loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        }
            
        func textFieldDidBeginEditing(_ textField: UITextField) {
            textField.layer.borderWidth = 2
            textField.layer.borderColor = UIColor.blue.cgColor
        }
            
        func textFieldDidEndEditing(_ textField: UITextField) {
            
            if textField.text == "" {
                textField.layer.borderWidth = 2
                textField.layer.borderColor = UIColor.red.cgColor
            } else {
                textField.layer.borderWidth = 0
            }
            
            if nameTextField.text == "" || addressTextField.text == "" || passwordTextField.text == "" || confirmPasswordTextField.text == "" {
                loginButton.isEnabled = false
            }else{
                loginButton.isEnabled = true
                
            }
            
        }
        
            
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            return true
        }
            
    @IBAction func tappedCadastroButton(_ sender: UIButton) {
        print ("Cadastro realizado com sucesso!")
    }
    
}

extension ViewController: UITextFieldDelegate {
    
}


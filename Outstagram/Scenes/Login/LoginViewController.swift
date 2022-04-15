//
//  LoginViewController.swift
//  Outstagram
//
//  Created by 정은경 on 2022/04/15.
//

import SnapKit
import UIKit

final class LoginViewController: UIViewController {
    
    private lazy var titleLabel: UILabel = {
        let text = UILabel()
        text.text = "Instagram"
        text.font = .systemFont(ofSize: 30, weight: .semibold)
        text.textAlignment = .center
        return text
    }()
    
    private lazy var idField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "전화번호, 사용자 이름 또는 이메일"
        textField.borderStyle = .roundedRect

        return textField
    }()
    
    private lazy var pwField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "비밀번호"
        textField.textColor = .label
        textField.isSecureTextEntry = true
        textField.borderStyle = .roundedRect
        textField.enablePasswordToggle()
        
        return textField
    }()
    
    private lazy var forgotPw: UILabel = {
        let label = UILabel()
        label.text = "비밀번호를 잊으셨나요?"
        label.textColor = .systemBlue
        
        return label
    }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("로그인", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        button.titleLabel?.textColor = .white
        button.layer.cornerRadius = 10
        
        return button
    }()
    
    private lazy var seperatorLabel: UILabel = {
        let label = UILabel()
        label.text = "또는"
        label.backgroundColor = .systemBackground
        label.textColor = .separator
        label.textAlignment = .center
        return label
    }()
    
    private lazy var registerQLabel: UILabel = {
        let label = UILabel()
        label.text = "계정이 없으신가요?"
        label.textColor = .secondaryLabel
        return label
    }()
    
    private lazy var registerLabel: UILabel = {
        let label = UILabel()
        label.text = "가입하기"
        label.textColor = .systemBlue
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupLayout()
    }
    
}

private extension LoginViewController {
    func setupLayout(){
        let separator = SeparatorView()
        let separator2 = SeparatorView()
        
        let stackView = UIStackView(arrangedSubviews: [registerQLabel, registerLabel])
        stackView.axis = .horizontal
        stackView.spacing = 4
        
        [
            titleLabel,
            idField,
            pwField,
            forgotPw,
            loginButton,
            separator,
            seperatorLabel,
            separator2,
            stackView
        ].forEach{ view.addSubview($0) }
        
        let inset: CGFloat = 30
        
        titleLabel.snp.makeConstraints{
            $0.leading.equalToSuperview().inset(inset)
            $0.trailing.equalToSuperview().inset(inset)
            $0.top.equalTo(view.safeAreaLayoutGuide).inset(inset)
            $0.height.equalTo(100)
        }
        
        idField.snp.makeConstraints{
            $0.leading.equalTo(titleLabel.snp.leading)
            $0.trailing.equalTo(titleLabel.snp.trailing)
            $0.top.equalTo(titleLabel.snp.bottom).offset(inset)
            $0.height.equalTo(60)
        }
        
        pwField.snp.makeConstraints{
            $0.leading.equalTo(idField.snp.leading)
            $0.trailing.equalTo(idField.snp.trailing)
            $0.top.equalTo(idField.snp.bottom).offset(inset)
            $0.height.equalTo(60)
        }
        
        forgotPw.snp.makeConstraints{
            $0.trailing.equalTo(idField.snp.trailing)
            $0.top.equalTo(pwField.snp.bottom).offset(inset)
        }
        
        loginButton.snp.makeConstraints{
            $0.leading.equalTo(idField.snp.leading)
            $0.trailing.equalTo(idField.snp.trailing)
            $0.top.equalTo(forgotPw.snp.bottom).offset(inset)
            $0.height.equalTo(60)
        }
        
        separator.snp.makeConstraints{
            $0.leading.equalTo(idField.snp.leading)
            $0.trailing.equalTo(idField.snp.trailing)
            $0.top.equalTo(loginButton.snp.bottom).offset(50)
        }
        
        seperatorLabel.snp.makeConstraints{
            $0.top.equalTo(loginButton.snp.bottom).offset(40)
            $0.centerX.equalTo(loginButton.snp.centerX)
            $0.width.equalTo(70)
        }
        
        separator2.snp.makeConstraints{
            $0.leading.equalTo(idField.snp.leading)
            $0.trailing.equalTo(idField.snp.trailing)
            $0.bottom.equalTo(view.safeAreaLayoutGuide).inset(70)
        }
        
        stackView.snp.makeConstraints{
            $0.centerX.equalTo(loginButton.snp.centerX)
            $0.bottom.equalTo(view.safeAreaLayoutGuide).inset(inset)
        }
    }
}

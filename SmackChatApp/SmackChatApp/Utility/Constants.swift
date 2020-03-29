//
//  Constants.swift
//  SmackChatApp
//
//  Created by mac on 27/03/20.
//  Copyright © 2020 KuldeepBhandari. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Sucess:Bool) -> ()


//URL Constant

let BASE_URL = "https://chattychatjb.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"


//SEGUES
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "to_CreateAccount"
let UNWIND_TO_CHANNEL = "unwindToChannel"
let To_PICKER_AVATAR = "toPickerAvatar"

//Colors

let smackPurplePlaceHolder = #colorLiteral(red: 0.3254901961, green: 0.4196078431, blue: 0.7764705882, alpha: 0.5)



//Noftication Center

let NOTIF_USER_DATA_DID_CHANGE = Notification.Name("notifUserDataChanged")

//User Defaults
let USER_LOGGED_IN = "loginKey"
let AUTH_TOKEN = "token"
let USER_EMAIL = "userEmail"

//Heder



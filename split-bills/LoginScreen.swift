//
//  LoginScreen.swift
//  split-bills
//
//  Created by wimba prasiddha on 23/07/20.
//  Copyright © 2020 wimba prasiddha. All rights reserved.
//

import SwiftUI

struct LoginScreen: View {
    
    let image = "Login"
    
    var body: some View {
        
        VStack {
        Image(image)
           .resizable()
           .aspectRatio(contentMode: .fit)
           .clipped()
            
        Text("Hi.. Selamat Datang")
            .font(.title)
        Text("lorem ipsum et dolor")
            .font(.subheadline)
        
            
        LoginForm()
            
        Register()
        .padding()
        
        Button(action: {
                   
        }) {
        LogginButton()
        }
        .padding()
            
    }
}

struct LoginForm: View {
    
    @State var email = ""
    @State var pass = ""
    
    var body: some View {
        
        VStack{
            
            HStack(spacing:15) {
                Image(systemName: "envelope")

                .foregroundColor(Color.init(#colorLiteral(red: 0.1450980392, green: 0.1568627451, blue: 0.168627451, alpha: 1)))
                TextField("Masukan Alamat Email", text: self.$email )
             
            }
            .padding(.vertical,20)
            Divider()
                   
            HStack(spacing: 15) {
                Image(systemName: "lock")
                .resizable()
                .frame(width: 15, height: 18)
                .foregroundColor(Color.init(#colorLiteral(red: 0.1450980392, green: 0.1568627451, blue: 0.168627451, alpha: 1)))
                SecureField("Masukan Password", text: self.$pass)
                
                Button(action: {
            
                }) {
                    Image(systemName: "eye")
                    .foregroundColor(Color.init(#colorLiteral(red: 0.1450980392, green: 0.1568627451, blue: 0.168627451, alpha: 1)))
                    }
                .padding()
            }
            .padding(.vertical, 20)
            Divider()
        }
        .padding(.vertical)
        .padding(.leading,40)
    }
}

struct LogginButton: View {
    var body: some View {
         Text("MASUK")
                   .foregroundColor(.white)
                   .frame(width: 330, height: 25)
                   .padding()
                   .background(Color.init(#colorLiteral(red: 0.06666666667, green: 0.3019607843, blue: 0.5882352941, alpha: 1)))
                   .cornerRadius(15)
                   .shadow(color: Color.init(#colorLiteral(red: 0.8, green: 0.8392156863, blue: 0.9254901961, alpha: 1)), radius: 8, x: 0, y: 6)
    }
}

       
struct Register: View {
    var body: some View {
        HStack{
            Text("Belum punya akun?")
            Button(action: {
                //type action here
            }) {
                Text("Daftar")
                .foregroundColor(Color.init(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)))
                }
            }
                .padding()
            }
        }

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
    
 
}

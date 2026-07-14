//
//  ContentView.swift
//  expenses
//
//  Created by Ganesh R on 06/07/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        ScrollView {
            VStack{
                HStack {
                    Image(systemName: "chevron.left")
                    Spacer()
                    Text("Profile").font(.title)
                    Spacer()
                    Image(systemName: "square.and.arrow.up")
                    
                }.padding()
            }
            VStack(spacing: 8){
                Circle()
                    .fill(Color.indigo.opacity(0.25))
                    .frame(width: 150, height: 150)
                    .overlay(
                        Image(systemName: "person.fill")
                            .font(.system(size: 90))
                            .foregroundColor(.white)
                    )
                Text("Ganesh Rajendran").font(Font.system(.title, design: .default))
                Text("iOS Developer | Flutter Developer").font(Font.system(.title2, design: .default))
                Label("Virudhunagar,Tamil Nadu", systemImage: "mappin")
            
                HStack(alignment: .firstTextBaseline){
                    Capsule(style: .continuous)
                        .fill(Color.white)
                        .stroke(.black.opacity(0.3), lineWidth: 1)
                        .frame(width: 150,height: 30).overlay(
                            HStack{
                                Image("linkedin").resizable().frame(width: 20, height: 20)
                                
                                Text("Linkedin").font(.subheadline).padding()
                            }
                            
                            
                    )
                    Capsule(style: .continuous)
                        .fill(Color.white)
                        .stroke(.black.opacity(0.3), lineWidth: 1)
                        .frame(width: 150,height: 30).overlay(
                            HStack{
                                Image("github").resizable().frame(width: 20, height: 20)
                                
                                Text("GitHub").font(.subheadline).padding()
                            }
                            
                            
                    )
                    
                }
            }
            
        }.background(Color.blue.opacity(0.1))

    }
}

#Preview {
    ContentView()
}

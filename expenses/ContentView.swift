//
//  ContentView.swift
//  expenses
//
//  Created by Ganesh R on 06/07/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let skills = [
            "Flutter",
            "Swift",
            "SwiftUI",
            "Dart",
            "MVVM",
            "REST API",
            "WebSocket",
            "Git",
            "Firebase",
            
        ]
        NavigationStack{
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
                    Text("iOS Developer | Flutter Developer")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                        .lineLimit(2)
                    Label("Virudhunagar,Tamil Nadu", systemImage: "mappin")
                    
                    HStack(alignment: .firstTextBaseline){
                        Capsule(style: .continuous)
                            .fill(Color.white)
                            .stroke(.black.opacity(0.3), lineWidth: 1)
                            .frame(width: 150,height: 30).overlay(
                                HStack{
                                    Image("linkedin").resizable().frame(width: 20, height: 20)
                                    
                                    Text("Linkedin").font(.subheadline).padding().foregroundStyle(.black)
                                }
                                
                                
                            )
                        Capsule(style: .continuous)
                            .fill(Color.white)
                            .stroke(.black.opacity(0.3), lineWidth: 1)
                            .frame(width: 150,height: 30).overlay(
                                HStack{
                                    Image("github").resizable().frame(width: 20, height: 20)
                                    
                                    Text("GitHub").font(.subheadline).padding().foregroundStyle(.black)
                                }
                                
                                
                            )
                        
                    }
                    Text("Summary")
                        .font(.headline)
                        .frame(maxWidth: .infinity, alignment: .leading).padding(.horizontal)
                    Text("Mobile Application Developer with experience in Flutter and iOS development. Passionate about building scalable, high-performance mobile applications with clean architecture and intuitive user experiences.")
                        .font(.callout)
                        .frame(maxWidth: .infinity, alignment: .leading).padding(.horizontal)
                    Text("Skills")
                        .font(.headline)
                        .frame(maxWidth: .infinity, alignment: .leading).padding(.horizontal)
                    
                    
                    VStack(alignment: .leading, spacing: 15) {
                        ForEach(skills, id: \.self) { skill in
                            SkillRow(title: skill)
                        }
                    }
                    .padding(.horizontal)
                    
                    
                }
                
                
            }.background(Color.blue.opacity(0.1))
            
        }
    }
}

#Preview {
    ContentView()
}



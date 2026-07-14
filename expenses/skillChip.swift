//
//  skillChip.swift
//  expenses
//
//  Created by Ganesh R on 14/07/26.
//

import SwiftUI

struct SkillRow: View {

    
    let title: String

    var body: some View {
        HStack {
            Text(title)

            Spacer()
        }
        .padding()
        .background(Color(.systemBackground))
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color(.separator), lineWidth: 1)
        )
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}
#Preview {
    SkillRow( title:"Flutter")
}

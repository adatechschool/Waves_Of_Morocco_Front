//
//  ProfileSummary.swift
//  AdaSurf
//
//  Created by Delhia Gbelidji on 25/01/2023.
//

import SwiftUI

struct ProfileSummary: View {
    @EnvironmentObject var modelData: ModelData
    var profile: Profile

    var body: some View {
        ScrollView {
            VStack() {
                Text(profile.username)
                    .multilineTextAlignment(.center)
                    .bold()
                    .font(.title)
                Image("Image")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .clipShape(Circle())
                    .shadow(radius: 7)
                    .overlay {
                        Circle().stroke(.white, lineWidth: 4)
                    }
                Spacer()

                VStack{
                Divider()
                    Text("Notifications: \(profile.prefersNotifications ? "On": "Off" )")
                Spacer()
                Text("Level: \(profile.level.rawValue)")
                Text("Date: ") + Text(profile.day, style: .date)
                
                Divider()
                }

            }
            .padding()
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
            .environmentObject(ModelData())
    }
}

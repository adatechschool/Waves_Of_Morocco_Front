//
//  ProfileEditor.swift
//  AdaSurf
//
//  Created by Delhia Gbelidji on 25/01/2023.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile

    var dateRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .year, value: -1, to: profile.day)!
        let max = Calendar.current.date(byAdding: .year, value: 1, to: profile.day)!
        return min...max
    }

    var body: some View {
        List {
            HStack {
                Text("Username").bold()
                Divider()
                TextField("Username", text: $profile.username)
            }

            Toggle(isOn: $profile.prefersNotifications) {
                Text("Enable Notifications").bold()
            }

            VStack(alignment: .leading, spacing: 20) {
                Text("Level").bold()

                Picker("Level", selection: $profile.level) {
                    ForEach(Profile.Level.allCases) { level in
                        Text(level.rawValue).tag(level)
                    }
                }
                .pickerStyle(.segmented)
            }

            DatePicker(selection: $profile.day, in: dateRange, displayedComponents: .date) {
                Text("Date").bold()
            }
        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}

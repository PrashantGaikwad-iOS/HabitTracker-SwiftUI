
import SwiftUI

struct ActivityDetailView: View {
    @ObservedObject var activities: Activities
    var index: Int
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Activity Description: \(self.activities.activities[index].description)")
                .font(.headline)
                .padding()
                Text("Completion Count:  \(self.activities.activities[index].count)")
                .font(.headline)
                .padding()
                Button("Increment the completion count by 1"){
                    var count = self.activities.activities[self.index].count
                    count += 1
                    self.activities.activities[self.index].count = count
                }
                Spacer()
            }
            .padding(.horizontal)
        }
        .navigationBarTitle(Text(self.activities.activities[index].name),displayMode: .inline)
    }
}

import SwiftUI
struct AlertView: View {
    @State var penalty:String
    var body: some View {
        ZStack{
            Image("Box5")
            Text(penalty)
                .foregroundColor(Color.blue)
                .offset(x: 0, y: 80)
        }.foregroundColor(Color.orange)
    }
}

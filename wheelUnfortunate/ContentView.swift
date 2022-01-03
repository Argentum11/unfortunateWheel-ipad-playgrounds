import SwiftUI
import FortuneWheel
struct ContentView: View {
    @State var displayAlert=false
    @State var selectedIndex=0
    var choice=["領養貓","穿燕尾服打球","24小時待在泳池","承受曼陀珠爆炸","跟陌生人借他/她的廁所","在電梯裡跳舞","吃死神辣椒","一整天被手銬銬住"]
    var body: some View {
        ZStack(alignment: .center){
            VStack(alignment: .center){
                FortuneWheel(titles: choice, size: 320, onSpinEnd: { i in
                    selectedIndex = i
                    displayAlert = true
                })
            }
            .alert("你抽到的懲罰是：", isPresented: $displayAlert, actions:{ Button("不....！"){}},message: {Text(choice[selectedIndex])})
        }
    }
}

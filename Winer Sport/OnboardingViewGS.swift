

import SwiftUI

struct OnboardingViewNiagaraSport: View {
    @AppStorage("showOnboarding") var showOnboarding = true
    @State private var selected = 1
    
var qefcqefc = "qfcqrfc"
    var cwrfcwrf = 52525
    func wrfcwrfc() -> Double {
        return 13413.0134
    }
    func qecfqefce() {
        print("qefcqef")
        print("qefcqef")
        print("qefcqef")
    }
        
    var body: some View {
        VStack {
            Spacer()
            
            Image("onboard \(selected)")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
            
            
            HStack(spacing: 1) {
                ForEach(Array(1...5), id: \.self) { index in
                    RoundedRectangle(cornerRadius: .infinity)
                        .frame(width: 35, height: 5)
                        .foregroundColor(index == selected ? .hex("FEE600"): .white)
                }
            }.padding(.bottom)
        }.background(2)
            .onTapGesture {
                if selected < 5 {
                    withAnimation {
                        selected += 1
                    }
                } else {
                    showOnboarding = false
                }
            }
            .opacity(showOnboarding ? 1: 0)
            .animation(.easeInOut, value: showOnboarding)
    }
}

#Preview {
    OnboardingViewNiagaraSport()
}

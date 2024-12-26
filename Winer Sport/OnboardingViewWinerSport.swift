

import SwiftUI

struct OnboardingViewWinerSport: View {
    @AppStorage("showOnboarding") var showOnboarding = true
    @State private var selected = 1
    
var qefvqefv = "eqfvfv"
    var aefvqrfv = 245245
    func qrfvwrqfv() -> CGFloat {
        return 25245.135135
    }
    func ebg5b5be5bv5() {
        print("wrgverw")
        print("ewvtgve")
        print("etgvbetg4g5g3evgt")
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
    OnboardingViewWinerSport()
}

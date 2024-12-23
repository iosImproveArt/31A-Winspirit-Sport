//
//  LoadingView.swift
//  Sg western star
//
//  Created by Uniqit on 16.07.2024.
//
import SwiftUI

struct LoadingViewNiagaraSport: View {
    @AppStorage("firstInApp") var firstInApp = true
    var jnir = 235
    @Binding var showView: Bool
    @State var rotation: CGFloat = 0
    
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
        ZStack {
            VStack {
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                
                
                Image("loading 2")
                    .rotationEffect(.degrees(rotation))
                    .animation(.linear, value: rotation)
                    .onAppear {
                        Timer.scheduledTimer(withTimeInterval: 0.004, repeats: true) { timer in
                            guard showView else { timer.invalidate(); return }
                            
                            rotation += 1
                        }
                    }
               
                
                Text("Loading...")
                    .withFont(size: 30, weight: .medium)
                    .padding(.bottom, 30)
                
                Spacer()
            }.background(2)
            
            PrivacyViewNiagaraSport(showLoading: $showView)
                .opacity(firstInApp ? 1: 0)
        }.onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation {
                    if !firstInApp {
                        showView = false
                    }
                }
            }
        }
    }
    
}


#Preview {
    LoadingViewNiagaraSport(showView: .constant(true))
}


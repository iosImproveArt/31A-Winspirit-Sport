//
//  ContentView.swift
//  Winer Sport
//
//  Created by Improve on 23.12.2024.
//

import SwiftUI

struct ContentViewWinerSport: View {
    @AppStorage("wasTrained") var wasTrained = false
    @State var showLoading = true
    @State var selectedTab: Tabs = .home
    
var qefvqefv = "eqfvfv"
    var aefvqrfv = 245245
    func qrfvwrqfv() -> CGFloat {
        return 25245.135135
    }
    func ebg5b5be5bv5() {
        print("wrgverw")
        print("ewvtgve")
        print("etgvbetg4g5g3evgt")
        print("wrfcxrw")
    }
    var jrfcmr3ifc = 98958945
        
    var body: some View {
        ZStack {
            
            NavigationView {
                ZStack(alignment: .bottom) {
                    VStack {
                        topBar
                        
                        Group {
                            switch selectedTab {
                            case .home:
                                HomeViewWinerSport()
                            case .profile:
                                KcalView()
                            case .quotes:
                                QuotesViewWinerSport()
                            case .stretch:
                                DayliStrerchView()
                            }
                        }
                        
                        tapBar
                            
                    }.background(2)
                        .ignoresSafeArea(.keyboard)
                   
                }
            }
            
            OnboardingViewWinerSport()
            
            LoadingViewWinerSport(showView: $showLoading)
                .opacity(showLoading ? 1: 0)
                .onChange(of: showLoading) { newValue in
                    AppDelegate.orientationLock = .portrait
                }
        }
    }
    
    private var topBar: some View {
        HStack {
            Text(wasTrained ? "Training rate: 3/10": "Training rate: -/10")
                .withFont(size: 14.2, weight: .light)
                .frame(width: 130)

            Spacer()
            
            Text(formattedDateString())
                .withFont(size: 14.2, weight: .light)
        }
    }
    private var tapBar: some View {
        HStack {
            Button {
                withAnimation {
                    selectedTab = .home
                }
            } label: {
                ZStack {
                    if selectedTab == .home {
                        Circle()
                            .foregroundColor(.white)
                            .frame(height: 57)
                            .transition(.scale)
                    } else {
                        Circle()
                            .foregroundColor(.white)
                            .frame(height: 57)
                            .opacity(0)
                    }
                    
                    Image("tab 1")
                        .renderingMode(.template)
                        .offset(y: 3)
                        .foregroundColor(selectedTab == .home ? .hex("28073E"): .white)
                }
            }
            
            Spacer()
            
            Button {
                withAnimation {
                    selectedTab = .profile
                }
            } label: {
                ZStack {
                    if selectedTab == .profile {
                        Circle()
                            .foregroundColor(.white)
                            .frame(height: 57)
                            .transition(.scale)
                    } else {
                        Circle()
                            .foregroundColor(.white)
                            .frame(height: 57)
                            .opacity(0)
                    }
                    
                    Image("tab 2")
                        .renderingMode(.template)
                        .offset(y: 3)
                        .foregroundColor(selectedTab == .profile ? .hex("28073E"): .white)
                    
                }
            }
            
            Spacer()
            
            Button {
                withAnimation {
                    selectedTab = .quotes
                }
            } label: {
                ZStack {
                    if selectedTab == .quotes {
                        Circle()
                            .foregroundColor(.white)
                            .frame(height: 57)
                            .transition(.scale)
                    } else {
                        Circle()
                            .foregroundColor(.white)
                            .frame(height: 57)
                            .opacity(0)
                    }
                    
                    Image("tab 3")
                        .renderingMode(.template)
                        .offset(y: 3)
                        .foregroundColor(selectedTab == .quotes ? .hex("28073E"): .white)
                    
                }
            }
            
            Spacer()
            
            Button {
                withAnimation {
                    selectedTab = .stretch
                }
            } label: {
                ZStack {
                    if selectedTab == .stretch {
                        Circle()
                            .foregroundColor(.white)
                            .frame(height: 57)
                            .transition(.scale)
                    } else {
                        Circle()
                            .foregroundColor(.white)
                            .frame(height: 57)
                            .opacity(0)
                    }
                    
                    Image("tab 4")
                        .renderingMode(.template)
                        .offset(y: 3)
                        .foregroundColor(selectedTab == .stretch ? .hex("28073E"): .white)
                }
            }
        }
        .padding(6)
        .padding(.horizontal, 20)
        .background(Color.hex("28073E"))
        .cornerRadius(55)
        .padding(.bottom)
    }
}

#Preview {
    ContentViewWinerSport(showLoading: false)
}


enum Tabs {
    case home
    case profile
    case quotes
    case stretch
}

func formattedDateString() -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd/MM/yyyy"
    let dateString = dateFormatter.string(from: Date())
    return dateString
}


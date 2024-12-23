//
//  ContentView.swift
//  Winer Sport
//
//  Created by Improve on 23.12.2024.
//

import SwiftUI

struct ContentViewNiagaraSport: View {
    @AppStorage("wasTrained") var wasTrained = false
    @State var showLoading = true
    @State var selectedTab: Tabs = .home
    
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
            
            NavigationView {
                ZStack(alignment: .bottom) {
                    VStack {
                        topBar
                        
                        Group {
                            switch selectedTab {
                            case .home:
                                HomeViewNiagaraSport()
                            case .profile:
                                KcalView()
                            case .quotes:
                                QuotesViewNiagaraSport()
                            case .stretch:
                                DayliStrerchView()
                            }
                        }
                        
                        tapBar
                            
                    }.background(2)
                        .ignoresSafeArea(.keyboard)
                   
                }
            }
            
            OnboardingViewNiagaraSport()
            
            LoadingViewNiagaraSport(showView: $showLoading)
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
    ContentViewNiagaraSport(showLoading: false)
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


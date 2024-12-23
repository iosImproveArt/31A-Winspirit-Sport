


import SwiftUI

struct HomeViewNiagaraSport: View {
    @AppStorage("secondsWaste") var secondsWaste = 0
    @AppStorage("wasTrained") var wasTrained = false
    
    @AppStorage("favourite") var favourite = ""
    
    var egetg = "wrgver"
    var eufncergeier = 25242524
    func wrgw() -> Float {
        return 432355
    }
    func wrtwr() {
        print("wrfwrtgwrr3")
    }
    
    
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    NavigationLink {
                        TrainingViewNiagaraSport(sportType: .tennis)
                    } label: {
                        Image("tennis.label")
                            .overlay {
                                Image("block.label")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(wasTrained ? 1: 0)
                            }
                    }.disabled(wasTrained)
                    
                    NavigationLink {
                        TrainingViewNiagaraSport(sportType: .football)
                    } label: {
                        Image("football.label")
                            .overlay {
                                Image("block.label")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(wasTrained ? 1: 0)
                            }
                    }.disabled(wasTrained)
                    
                    NavigationLink {
                        TrainingViewNiagaraSport(sportType: .basketball)
                    } label: {
                        Image("basketball.label")
                            .overlay {
                                Image("block.label")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(wasTrained ? 1: 0)
                            }
                    }.disabled(wasTrained)
                    
                    NavigationLink {
                        TrainingViewNiagaraSport(sportType: .volleyball)
                    } label: {
                        Image("volleyball.label")
                            .overlay {
                                Image("block.label")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(wasTrained ? 1: 0)
                            }
                    }.disabled(wasTrained)
                    
                    NavigationLink {
                        TrainingViewNiagaraSport(sportType: .golf)
                    } label: {
                        Image("golf.label")
                            .overlay {
                                Image("block.label")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(wasTrained ? 1: 0)
                            }
                    }.disabled(wasTrained)
                }.padding(.horizontal, 8)
                    .padding(.horizontal, -12)
                    .padding(.top)
                    .scrollIndicators(.hidden)
                
                NavigationLink {
                    TrainingViewNiagaraSport(sportType: SportTypes(rawValue: favourite) ?? .basketball )
                } label: {
                    Image("favourite.workout")
                }.padding(.vertical)
                    .disabled(favourite == "")
                    .grayscale(favourite == "" ? 1 : 0)
                
                statsView
                    .padding(.bottom)
                Spacer()
            }.gradientTopAndBottom()
        }
    }
    
    private var statsView: some View {
        VStack(spacing: isSE ? 12: 20) {
            HStack {
                Spacer()
                
                VStack {
                    Image("workouts.label")
                    Image("homefield.label")
                        .overlay {
                            Text(wasTrained ? "1": "0")
                                .withFont(size: 22.66, weight: .regular)
                        }
                }
                
                Spacer()
                
                VStack {
                    Image("workouttime.label")
                    Image("homefield.label")
                        .overlay {
                            Text("\(secondsWaste / 60) min")
                                .withFont(size: 22.66, weight: .regular)
                        }
                }
                
                Spacer()
            }
            
            HStack {
                Spacer()
                
                VStack {
                    Image("lastworkout.label")
                    Image("homefield.label")
                        .overlay {
                            Text(wasTrained ? formattedDateString(): "-")
                                .withFont(size: 22.66, weight: .regular)
                        }
                }
                
                Spacer()
                
                VStack {
                    Image("rating.label")
                    Image("homefield.label")
                        .overlay {
                            Text(wasTrained ? "993/1000": "-/1000")
                                .withFont(size: 22.66, weight: .regular)
                        }
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentViewNiagaraSport(showLoading: false, selectedTab: .home)
}


enum Sports: String {
    case tennis = "tennis"
    case football = "Football"
    case volleyball = "Volleyball"
    case basketball = "Basketball"
    case golf = "golf"
    case fitneNiagaraSport = "FitneNiagaraSport"
    case yoga = "Yoga"
    case pilates = "Pilates"
    case stretch = "Stretch"
}

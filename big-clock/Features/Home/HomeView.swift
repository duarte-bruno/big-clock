import SwiftUI

struct HomeView: View {
    
    // MARK: - Parameters
    
    @State var date = Date()
    
    var dateFormat: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        return formatter
    }
    
    var timeFormat: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        return formatter
    }
    
    var updateTimer: Timer {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in 
            self.date = Date()
        })
    }
    
    // MARK: - View
    
    var body: some View {
        GeometryReader{ g in
            ZStack(alignment: .top, content: {
                Color.black
                    .ignoresSafeArea()
                
                VStack {
                    YearCounterView()
                        .padding(.horizontal, 20)
                        .padding(.bottom, 15)
                    LifeCounterView()
                        .padding(.horizontal, 20)
                    
                    ZStack(alignment: .center, content: {
                        VStack {
                            Text("\(dateFormat.string(from: date))")
                                .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.07: g.size.height * 0.1, weight: .regular))
                                .lineLimit(1)
                                .foregroundStyle(.white)
                            Text("\(timeString(date: date))")
                                .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.23: g.size.height * 0.30, weight: .bold))
                                .lineLimit(1)
                                .foregroundStyle(.white)
                        }
                    })
                    .frame(maxHeight: .infinity)
                }
                .frame(maxWidth: .infinity)
            })
            .onAppear(perform: {let _ = self.updateTimer})
        }
    }
}

// MARK: - Methods

extension HomeView {
    
    func timeString(date: Date) -> String {
        let time = timeFormat.string(from: date)
        return time
    }
}

#Preview {
    HomeView()
}

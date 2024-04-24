import SwiftUI

struct SplashView: View {
    
    // MARK: - Parameters
    
    @Binding var isActive: Bool
    
    // MARK: - View
    
    var body: some View {
        GeometryReader{ g in
            ZStack {
                Color.black
                    .ignoresSafeArea()
                
                VStack {
                    Text("Big Clock")
                        .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.20: g.size.height * 0.30, weight: .bold))
                        .lineLimit(1)
                        .foregroundStyle(.white)
                    Text("by Bruno Duarte")
                        .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.07: g.size.height * 0.1, weight: .regular))
                        .lineLimit(1)
                        .foregroundStyle(.white)
                }
                .frame(maxWidth: .infinity)
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

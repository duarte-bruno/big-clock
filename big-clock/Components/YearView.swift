import SwiftUI

struct YearView: View {
    
    // MARK: - Parameters
    
    // MARK: - View
    
    var body: some View {
        VStack(alignment: .leading, content: {
            Text("\("")% of the year has passed and you only have \("") days, \("") weeks or \("") months left until the year is over.")
                .frame(width: .infinity)
                .font(.system(size: 14, weight: .regular))
                .multilineTextAlignment(.leading)
                .foregroundStyle(.white)
            ProgressView(value: 20, total: 100)
        })
    }
}

#Preview {
    YearView()
}

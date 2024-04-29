import SwiftUI

struct YearView: View {
    
    // MARK: - Parameters
    
    var viewModel = YearViewModel()
    
    // MARK: - View
    
    var body: some View {
        VStack(alignment: .leading, content: {
            Text(viewModel.mainYearText)
                .font(.system(size: 14, weight: .regular))
                .multilineTextAlignment(.leading)
                .foregroundStyle(.white)
                .padding(.horizontal, 0)
            ProgressView(value: viewModel.yearPastPercentage, total: 100)
                .tint(.white)
        })
    }
}

#Preview {
    YearView()
}

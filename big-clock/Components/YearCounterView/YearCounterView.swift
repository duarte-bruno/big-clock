import SwiftUI

struct YearCounterView: View {
    
    // MARK: - Parameters
    
    var viewModel = YearCounterViewModel()
    
    // MARK: - View
    
    var body: some View {
        HStack(alignment: .center, content: {
            Image(systemName: "calendar")
                .font(.system(size: 30))
                .foregroundStyle(.white)
                .padding(0)
                .padding(.trailing, 5)
            
            VStack(alignment: .leading, content: {  
                Text(viewModel.mainYearText)
                    .font(.system(size: 14, weight: .regular))
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(.white)
                    .padding(.horizontal, 0)
                ProgressView(value: viewModel.yearPastPercentage, total: 100)
                    .tint(.cyan)
            })
            .frame(maxWidth: .infinity)
        })
       
    }
}

#Preview {
    YearCounterView()
}

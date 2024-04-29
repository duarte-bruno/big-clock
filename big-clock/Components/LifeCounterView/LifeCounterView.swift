import SwiftUI

struct LifeCounterView: View {
    // MARK: - Parameters
    
    var viewModel = LifeCounterViewModel()
    
    // MARK: - View
    
    var body: some View {
        HStack(alignment: .center, content: {
            Image(systemName: "heart.square")
                .font(.system(size: 33))
                .foregroundStyle(.white)
                .padding(0)
                .padding(.trailing, 5)
            
            VStack(alignment: .leading, content: {  
                Text(viewModel.mainText)
                    .font(.system(size: 14, weight: .regular))
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(.white)
                    .padding(.horizontal, 0)
                ProgressView(value: viewModel.yearPastPercentage, total: 100)
                    .tint(.white)
            })
            .frame(maxWidth: .infinity)
        })
       
    }
}

#Preview {
    LifeCounterView()
}

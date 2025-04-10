import SwiftUI

class CounterViewModel: ObservableObject {
    @Published var count = 0
    
    func increment() {
        count += 1
        AnalyticsService.shared.trackEvent("counter_incremented", parameters: ["count": count])
    }
}

struct CounterView: View {
    @StateObject private var viewModel = CounterViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("\(viewModel.count)")
                .font(.system(size: 48, weight: .bold))
            
            Button(action: viewModel.increment) {
                Text("Увеличить")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
        .navigationTitle("Счетчик")
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CounterView()
        }
    }
} 
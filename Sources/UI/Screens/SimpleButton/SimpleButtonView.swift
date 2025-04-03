import SwiftUI

public struct SimpleButtonView: View {
    @StateObject private var viewModel = SimpleButtonViewModel()
    
    public init() {}
    
    public var body: some View {
        VStack(spacing: 20) {
            Text(viewModel.displayText)
                .font(.title)
                .multilineTextAlignment(.center)
                .accessibilityIdentifier("displayText")
            
            Button(action: {
                viewModel.buttonTapped()
            }) {
                Text("Нажми меня")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .accessibilityIdentifier("tapButton")
            
            Button(action: {
                viewModel.resetCount()
            }) {
                Text("Сбросить")
                    .font(.subheadline)
                    .foregroundColor(.red)
            }
            .accessibilityIdentifier("resetButton")
        }
        .padding()
    }
} 
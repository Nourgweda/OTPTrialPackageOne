import SwiftUI

struct OTPView<Style: TextFieldStyle>: View {
    // MARK: - Data
    @Binding var textFieldCount: Int
    @State internal var data: [String] = []

    // MARK: - Style
    var spacing: CGFloat
    var alignment: VerticalAlignment
    var textFieldCustomStyle: Style

    var body: some View {
        HStack(alignment: alignment, spacing: spacing) {
            ForEach(data.indices, id: \.self) { item in
                TextField("", text: $data[item])
                    .textFieldStyle(textFieldCustomStyle)
            }
        }.onAppear {
            data = Array(repeating: "", count: textFieldCount)
        }
    }
}

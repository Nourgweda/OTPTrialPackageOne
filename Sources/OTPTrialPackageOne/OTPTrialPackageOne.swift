import SwiftUI

public struct OTPView<Style: TextFieldStyle>: View {
    
    private var textFieldCount: Int
    @State private var data: [String] = []
    private var spacing: CGFloat
    private var alignment: VerticalAlignment
    private var textFieldCustomStyle: Style

    public init(textFieldCount: Int, spacing: CGFloat, alignment: VerticalAlignment, textFieldCustomStyle: Style) {
        self.textFieldCount = textFieldCount
        self.spacing = spacing
        self.alignment = alignment
        self.textFieldCustomStyle = textFieldCustomStyle
    }
//
//    // MARK: - Data
//    @Binding var textFieldCount: Int
//    @State internal var data: [String] = []

//    // MARK: - Style
//    var spacing: CGFloat
//    var alignment: VerticalAlignment
//    var textFieldCustomStyle: Style

    public var body: some View {
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

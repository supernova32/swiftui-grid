import SwiftUI
import Grid

struct BiaxialScrollGridView: View {
    @State var items: [Item] = (0...1).map { Item(number: $0) }
    
    var body: some View {
        ScrollView(.vertical) {
            Grid(items) { item in
                Card(title: "\(item.number)", color: item.color).opacity(0.5)
            }
            .frame(width: 700, height: 1000)
        }
        .navigationBarTitle("Biaxial Scroll Grid", displayMode: .inline)
        .gridStyle(
           ModularGridStyle(.vertical, columns: 1, rows: 2, spacing: 0)
        )
    }
}

struct BiaxialScrollGridView_Previews: PreviewProvider {
    static var previews: some View {
        BiaxialScrollGridView()
    }
}

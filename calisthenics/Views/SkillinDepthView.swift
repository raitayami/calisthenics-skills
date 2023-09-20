
import SwiftUI

struct SkillinDepthView: View {
    
    var skill: Skill
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SkillinDepthView_Previews: PreviewProvider {
    static var previews: some View {
        
        var model = ViewModel()
        
        SkillinDepthView(skill: model.skills[0])
    }
}

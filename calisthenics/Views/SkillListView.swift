

import SwiftUI

struct SkillListView: View {
    
    @ObservedObject var model = ViewModel()
    
    var body: some View {
        List(model.skills){ s in
            
            HStack{
            
                Text(s.name)
                    .font(.title2)
            }
            
        }
    }
}

struct SkillListView_Previews: PreviewProvider {
    static var previews: some View {
        SkillListView()
    }
}

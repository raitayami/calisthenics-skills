

import SwiftUI

struct SkillListView: View {
    
    @EnvironmentObject var model:ViewModel
    
    var body: some View {
        
        NavigationView{
            List(model.skills){ s in
                NavigationLink {
                    SkillDetailView(skill: s)
                } label: {
                    HStack{
                    
                        Text(s.name)
                            .font(.title2)
                    }
                }

                
                
            }
            .navigationTitle("Calisthenic Skills")

        }
    }
}

struct SkillListView_Previews: PreviewProvider {
    static var previews: some View {
        SkillListView()
    }
}

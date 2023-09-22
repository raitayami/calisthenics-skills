
import SwiftUI

struct SkillTabView: View {
    var body: some View {
        
        TabView{
            
            SkillFeaturedView()
                .tabItem {
                    VStack{
                        Image(systemName: "star.fill")
                        Text("featured")
                    }
                }
            
            SkillListView()
                .tabItem {
                    VStack{
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
        }
        .environmentObject(ViewModel())
    }
}

struct SkillTabView_Previews: PreviewProvider {
    static var previews: some View {
        SkillTabView()
    }
}


import SwiftUI

struct SkillTabView: View {
    var body: some View {
        
        TabView{
            
            Text("Featured View")
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
    }
}

struct SkillTabView_Previews: PreviewProvider {
    static var previews: some View {
        SkillTabView()
    }
}

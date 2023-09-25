

import SwiftUI

struct SkillListView: View {
    
    @EnvironmentObject var model:ViewModel
    
    var body: some View {
        
        NavigationView{
            
            VStack(alignment: .leading){
                Text("Calisthenics skills")
                    .bold()
                    .padding(.top)
                    .font(.largeTitle)
                
                ScrollView{
                    LazyVStack(alignment: .leading, spacing: 20){
                        ForEach(model.skills){ s in
                            NavigationLink {
                                SkillDetailView(skill: s)
                            } label: {
                                HStack{
                                    Image(s.image)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 100, height: 60, alignment: .center)
                                        .clipped()
                                        .cornerRadius(15)
                                        
                                    
                                    Text(s.name)
                                        .font(.title2)
                                        .foregroundColor(.black)
                                        .padding(.leading, 20)
                                }
                            }
                            
                        }
                        
                    }
                    
                }
            }
            .navigationBarHidden(true)
            .padding(.leading)
            
            
            
        }
    }
}

struct SkillListView_Previews: PreviewProvider {
    static var previews: some View {
        SkillListView()
            .environmentObject(ViewModel())
    }
}

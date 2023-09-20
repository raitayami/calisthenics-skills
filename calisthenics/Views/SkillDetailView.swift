
import SwiftUI

struct SkillDetailView: View {
    
    var skill: Skill
    
    var body: some View {
        ScrollView{
            Image(skill.image)
                .resizable()
                .scaledToFill()
                .cornerRadius(15)
                .padding()
                .shadow(radius: 10)
            
            
            Text("Difficulty level: ")
                .bold()
                .padding([.top, .bottom], 5)

            
            Text(String(skill.difficulty) + "/10")
            
            VStack{
                
                Text("Requirements: ")
                    .bold()
                    .padding([.top, .bottom], 5)
                
                ForEach(skill.requirements, id:\.self){s in
                    Text(s)
                }
                
                
            }
            
            

            
            
        }.navigationTitle(skill.name)
    }
}

struct SkillDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = ViewModel()
        SkillDetailView(skill: model.skills[0])
    }
}

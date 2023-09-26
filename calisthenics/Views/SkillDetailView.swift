
import SwiftUI

struct SkillDetailView: View {
    
    var skill: Skill
    
    var body: some View {
        ScrollView{
            
            VStack(alignment: .leading){
                Image(skill.image)
                    .resizable()
                    .scaledToFill()
                    .cornerRadius(15)
                    .shadow(radius: 10)
                
                VStack(alignment: .leading){
                    
                    Text(skill.name)
                        .padding(.top)
                        .font(.largeTitle)


                    
                    Text("Requirements: ")
                        .bold()
                        .padding([.top, .bottom], 5)

                    
                    ForEach(skill.requirements, id:\.self){s in
                        Text("- " + s)
                    }
                    
                    
//                    NavigationLink {
//
//
//                    } label: {
//                        ZStack{
//                            Rectangle()
//                                .frame(height: 40)
//                                .foregroundColor(.black)
//                                .cornerRadius(15)
//
//                            Text("View Progressions")
//                                .foregroundColor(.white)
//                        }
//                    }

                    Text("Progressions: ")
                        .bold()
                        .padding([.top, .bottom], 5)

                    
                    ForEach(skill.progression, id:\.self){p in
                        Text("- " + p)
                    }
                    
                    Text("Instructions")
                        .bold()
                        .padding([.top, .bottom], 5)
                    
                    ForEach(skill.instructions, id:\.self){i in
                        Text("- " + i)
                    }
                    
                    Text("Method")
                        .bold()
                        .padding([.top, .bottom], 5)

                    ForEach(skill.method, id:\.self){m in
                        Text("- " + m)
                    }
                    
                }
            }
            .padding()
      
        }
//        .navigationTitle(skill.name)
    }
}

struct SkillDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = ViewModel()
        SkillDetailView(skill: model.skills[0])
    }
}

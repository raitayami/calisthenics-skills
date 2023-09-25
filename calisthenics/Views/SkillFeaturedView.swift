
import SwiftUI

struct SkillFeaturedView: View {
    
    @EnvironmentObject var model:ViewModel

    var body: some View {
        
        VStack(alignment: .leading){
            
            Text("Featured Skills")
                .bold()
                .padding(.leading)
                .padding(.top, 40)
                .font(.largeTitle)
            
            GeometryReader{ geo in
                
                TabView{
                    ForEach(0..<model.skills.count){ index in
                        
                        if model.skills[index].featured == true {
                            
                            ZStack{
                                Rectangle()
                                    .foregroundColor(.white)
                                    
                                VStack(spacing: 0){
                                    Image(model.skills[index].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .clipped()
                                    
                                    Text(model.skills[index].name)
                                        .padding(5)
                                }

                            }
                            .frame(width: geo.size.width - 40,
                                    height: geo.size.height - 100, alignment: .center)
                             .cornerRadius(15)
                             .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.5), radius: 10, x: -5, y:5)
                            
                        }
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                
            }
            .padding(.top, -20)
            
            HStack(spacing: 10){
                Text("Difficulty:")
                    .font(.headline)
                Text(String(0))
                
            }
            .padding(.bottom, 50)
            .padding(.leading, 20)

        }
        
        
    }
}

struct SkillFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        SkillFeaturedView()
            .environmentObject(ViewModel())
    }
}


import SwiftUI

struct SkillFeaturedView: View {
    
    @EnvironmentObject var model:ViewModel

    var body: some View {
        Text("This is skill featured view")
    }
}

struct SkillFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        SkillFeaturedView()
    }
}

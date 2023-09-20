
import Foundation

class ViewModel:ObservableObject {
    
    @Published var skills = [Skill]()
    
    init(){
        
        skills.self = DataService.getLocalData()
        
        
    }
    
}

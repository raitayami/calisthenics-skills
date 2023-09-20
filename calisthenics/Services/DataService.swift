
import Foundation

class DataService{
    
    static func getLocalData() -> [Skill]{
        
        let pathString = Bundle.main.path(forResource: "data", ofType: ".json")

        guard pathString != nil else {
            return [Skill]()
        }
        
        let url = URL(filePath: pathString!)
    
        do{
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            do{
                let skillData = try decoder.decode([Skill].self, from: data)
                
                for s in skillData{
                    s.id = UUID()
                }
                
                return skillData
            }
            catch{
                print(error)
            }
            
        }
        catch{
            print(error)
        }
        
        return [Skill]()
    }
}

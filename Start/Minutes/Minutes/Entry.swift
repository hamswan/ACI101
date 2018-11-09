import Foundation

class Entry: Codable
{
    var title:   String = "Hello Hamsa!"
    var content: String = "Enjoy AppCenter"
    
    var id: String = UUID().uuidString
    
    var createdDate: Date = Date()
    
    init()
    {
    }
    
    init(_ initialTitle: String, _ initialContent: String)
    {
        self.title = initialTitle
        self.content = initialContent
    }
}

import Foundation

struct Episode: Identifiable {
	var id = UUID().uuidString
	
	var name: String
	var season: Int
	var thumbnailURLString: String
	var description: String
	var length: Int
	
	var thumbnailURL: URL {
		  URL(string: thumbnailURLString)!
	}
}

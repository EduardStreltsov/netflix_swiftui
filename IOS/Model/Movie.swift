import Foundation

struct Movie: Identifiable {
    
    var id: String = UUID().uuidString
    var name: String
    var thumbnailURL: URL

    var categories: [String]
    
    // MARK - MovieDetail View
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    
    var promotionHeadline: String?
    
    var episodes: [Episode]?
    var currentEpisode: CurrentEpisodeInfo?
    var defaultEpisode: CurrentEpisodeInfo
    var creators: String
    var cast: String
    
    var moreLikeThisMovies: [Movie]
    
    var numberOfSeasonsDisplay: String {
        if let num = numberOfSeasons {
            return "\(num) season" + (num > 1 ? "s" : "")
        }
        return ""
    }
    
    var episodeInfoDisplay: String {
        let episode = currentEpisode == nil ? defaultEpisode : currentEpisode!
        return "S\(episode.season):E\(episode.episode) \(episode.episodeName)"
    }
    
    var episodeDescriptionDisplay: String {
        currentEpisode == nil ? defaultEpisode.description : currentEpisode!.description
    }
}

struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}
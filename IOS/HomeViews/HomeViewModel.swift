import Foundation

class HomeViewModel: ObservableObject {

    // String == Category
    @Published var movies: [String: [Movie]] = [:]

    public var allCategories: [String] {
        movies.keys.map({String($0)})
    }

    init() {
        setupMovies()
    }

    public func getMovie(forCat cat: String) -> [Movie] {
        return movies[cat] ?? []
    }

    private func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Cartoons"] = exampleMovies.shuffled()
        movies["Sci-fi"] = exampleMovies.shuffled()
        movies["Comedy"] = exampleMovies.shuffled()
        movies["Documentary"] = exampleMovies.shuffled()
    }

    static func isCategoryLast(_ movie: Movie, _ cat: String) -> Bool {
        movie.categories[movie.categories.count - 1] == cat
    }
}
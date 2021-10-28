import Foundation
import SwiftUI

let categories = ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"]

let exampleMovie1 = Movie(
	id: UUID().uuidString,
	name: "DARK",
	thumbnailURL: URL(string: "https://picsum.photos/200/300?1")!,
	categories: categories,
	year: 2020,
	rating: "TV-MA",
	numberOfSeasons: 1,
	promotionHeadline: "Best Rated Show",
	defaultEpisode: exampleEpisodeInfo1,
	creators: "Brian Eno, John Black",
	cast: "Jennifer Aniston, Bred Pitt",
	moreLikeThisMovies: [
		exampleMovie2,
		exampleMovie3,
		exampleMovie4,
		exampleMovie5,
		exampleMovie6,
		exampleMovie7
	].shuffled())
let exampleMovie2 = Movie(
	id: UUID().uuidString,
	name: "Travellers",
	thumbnailURL: URL(string: "https://picsum.photos/200/300?2")!,
	categories: categories,
	year: 2020,
	rating: "TV-MA",
	numberOfSeasons: 2,
	promotionHeadline: "Watch season 5 Now",
	defaultEpisode: exampleEpisodeInfo1,
	creators: "Brian Eno, John Black",
	cast: "Jennifer Aniston, Bred Pitt",
	moreLikeThisMovies: [])
let exampleMovie3 = Movie(
	id: UUID().uuidString,
	name: "Community",
	thumbnailURL: URL(string: "https://picsum.photos/200/300?3")!,
	categories: categories,
	year: 2020,
	rating: "TV-MA",
	numberOfSeasons: 3,
	defaultEpisode: exampleEpisodeInfo1,
	creators: "Brian Eno, John Black",
	cast: "Jennifer Aniston, Bred Pitt",
	moreLikeThisMovies: [])
let exampleMovie4 = Movie(
	id: UUID().uuidString,
	name: "Rick & Morty",
	thumbnailURL: URL(string: "https://picsum.photos/200/300?4")!,
	categories: categories,
	year: 2020,
	rating: "TV-MA",
	numberOfSeasons: 4,
	defaultEpisode: exampleEpisodeInfo1,
	creators: "Brian Eno, John Black",
	cast: "Jennifer Aniston, Bred Pitt",
	moreLikeThisMovies: [])
let exampleMovie5 = Movie(
	id: UUID().uuidString,
	name: "Family Guy",
	thumbnailURL: URL(string: "https://picsum.photos/200/300?5")!,
	categories: categories,
	year: 2020,
	rating: "TV-MA",
	numberOfSeasons: 5,
	defaultEpisode: exampleEpisodeInfo1,
	creators: "Brian Eno, John Black",
	cast: "Jennifer Aniston, Bred Pitt",
	moreLikeThisMovies: [])
let exampleMovie6 = Movie(
	id: UUID().uuidString,
	name: "Futurama",
	thumbnailURL: URL(string: "https://picsum.photos/200/300?6")!,
	categories: categories,
	year: 2020,
	rating: "TV-MA",
	defaultEpisode: exampleEpisodeInfo1,
	creators: "Brian Eno, John Black",
	cast: "Jennifer Aniston, Bred Pitt",
	moreLikeThisMovies: [])
let exampleMovie7 = Movie(
	id: UUID().uuidString,
	name: "Futurama",
	thumbnailURL: URL(string: "https://picsum.photos/200/300?6")!,
	categories: categories,
	year: 2020,
	rating: "TV-MA",
	defaultEpisode: exampleEpisodeInfo1,
	creators: "Brian Eno, John Black",
	cast: "Jennifer Aniston, Bred Pitt",
	moreLikeThisMovies: [])

var exampleMovies: [Movie] = [
	exampleMovie1,
	exampleMovie2,
	exampleMovie3,
	exampleMovie4,
	exampleMovie5,
	exampleMovie6,
	exampleMovie7
].shuffled()

let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Family guy",
	description: "Some name", season: 3, episode: 2)

extension LinearGradient {
	static let blackOpacityGradient = LinearGradient(
		gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
		startPoint: .top,
		endPoint: .bottom
	)
}

extension String {
	func widthOfString(usingFont font: UIFont) -> CGFloat {
		let fontAttributes = [NSAttributedString.Key.font: font]
		let size = self.size(withAttributes: fontAttributes)
		return size.width
	}
}
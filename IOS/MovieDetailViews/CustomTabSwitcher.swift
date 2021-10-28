import SwiftUI

struct CustomTabSwitcher: View {
	
	@State private var currentTab: CustomTab = .episodes
	
	var tabs: [CustomTab]
	var movie: Movie
	
	func widthForTab(_ tab: CustomTab) -> CGFloat {
		let string = tab.rawValue
		return string.widthOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
	}
	
	var body: some View {
		VStack {
			// tabs
			ScrollView(.horizontal, showsIndicators: false) {
				HStack(spacing: 20) {
					ForEach(tabs, id: \.self) { tab in
						VStack {
							Rectangle()
								.frame(width: widthForTab(tab), height: 6)
								.foregroundColor(tab == currentTab ? Color.red : Color.clear)
							
							Button(action: {
								currentTab = tab
							}, label: {
								Text(tab.rawValue)
									.font(.system(size: 16, weight: .bold))
									.foregroundColor(tab == currentTab ? Color.white : Color.gray)
							})
								.buttonStyle(PlainButtonStyle())
								.frame(width: widthForTab(tab), height: 30)
						}
					}
				}
			}
			
			switch currentTab {
			case .episodes:
				Text("EPISODES")
			case .trailers:
				Text("TRAILERS")
			case .more:
				MoreLikeThis(movies: movie.moreLikeThisMovies)
			}
		}
			.foregroundColor(.white)
	}
}

struct CustomTabSwitcher_Previews: PreviewProvider {
	static var previews: some View {
		ZStack {
			Color.black.edgesIgnoringSafeArea(.all)
			CustomTabSwitcher(tabs: [.episodes, .trailers, .more], movie: exampleMovie1)
		}
	}
}

enum CustomTab: String {
	case episodes = "EPISODES"
	case trailers = "TRAILERS & MORE"
	case more = "MORE LIKE THIS"
}

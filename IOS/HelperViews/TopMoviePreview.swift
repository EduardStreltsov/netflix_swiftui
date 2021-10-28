import SwiftUI
import KingfisherSwiftUI

struct TopMoviePreview: View {
    var movie: Movie

    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            VStack {
                Spacer()

                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                        HStack {
                            Text(category)
                                .font(.footnote)
                            if !HomeViewModel.isCategoryLast(movie, category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 3))
                            }
                        }
                    }
                }
                HStack {
                    Spacer()

                    SmallVerticalButton(text: "My List",
                        isOnImage: "checkmark",
                        isOffImage: "plus",
                        isOn: true) {

                    }

                    Spacer()

                    PlayButton(text: "Play", imageName: "play.fill") {
                        //
                    }
                        .frame(width: 120)

                    Spacer()

                    SmallVerticalButton(text: "Info",
                        isOnImage: "info.circle",
                        isOffImage: "info.circle",
                        isOn: true) {

                    }
                    Spacer()
                }
            }
                .background(
                    LinearGradient.blackOpacityGradient)
                .padding(.top, 500)
        }
            .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
    }
}

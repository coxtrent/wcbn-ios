//
//  FavoritesView.swift
//  ios-app
//
//  Created by Trenton Cox on 6/29/24.
//

import SwiftUI
/*TODO: Display favorited songs and shows.
        * Show two tabs: one for songs, one for shows.*
        * The songs tab lists favorited songs artist title release and year, as well as the DJ and the show name.*
        * The shows tab lists DJ, show, and episode name if applicable.
        * Include the ability to remove things from favorites, but MAKE SURE the user
            actually wants to delete it. 
            **Keep a recently unfavorited list and have it go every week or two.
 */
struct FavoritesView: View {
    var body: some View {
        Text("Favorited Songs & Shows")
        Spacer()
    }
}

#Preview {
    FavoritesView()
}

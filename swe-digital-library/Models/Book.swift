//
//  Book.swift
//  swe-digital-library
//
//  Created by Astor Song on 2025-03-05.
//

import Foundation

struct Book: Identifiable {
    var id: String = UUID().uuidString
    var title: String
    var author: String
    var genre: String
    var description: String
    var image: String
}

var sampleBooks: [Book] = [
    .init(title: "The Insomnia Breakthrough", author: "Catherine Coleman", genre: "Health", description: "Imagine drifting into a deep, unbroken sleep with ease and waking up each day feeling refreshed and full of energy. This isn't an unreachable dream—it's entirely within your grasp. The advice in this book will help you get there!", image: "TIB"),
    .init(title: "The Brother's War", author: "Jeff Grubb", genre: "Fantasy", description: "The Myth. The Magic. Dominarian legends speak of a mighty conflict, obscured by the mists of history. Of a conflict between the brothers Urza and Mishra for supremacy on the continent of Terisiare. Of titantic engines that scarred and twisted the very planet. Of a final battle that sank continents and shook the skies. The saga of the Brothers’ War.", image: "TBW"),
    .init(title: "Alignment: An Unlikely Road to Bethlehem", author: "Brad Baldwin", genre: "Spirituality", description: "Alignment is a story of hope, healing, and humanity as a small-town American INFJ battles himself, life, and the world seeking to decipher his own life purpose. On the outside, he led an unconventional life path. Culpeper to Los Angeles. Paramount Pictures to the Himalayan foothills. Bollywood to Gandhi Ashram in Ahmedabad, Gujarat. Building nonprofits. Chasing purpose. The Gandhi/King unity project. Troop 1992 Mark Twain. Decades in India.", image: "ALI")
]

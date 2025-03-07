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

var myBook: [Book] = [
    .init(title: "The Hobbit", author: "J.R.R. Tolkien", genre: "Fantasy", description: "Bilbo Baggins is a hobbit who enjoys a comfortable, unambitious life, rarely travelling further than the pantry of his hobbit-hole in Bag End. But his contentment is disturbed when the wizard, Gandalf, and a company of thirteen dwarves arrive on his doorstep one day, to whisk him away on a journey ‘there and back again’. They have a plot to raid the treasure hoard of Smaug the Magnificent, a large and very dangerous dragon…", image: "TH"),
    .init(title: "The Fellowship of the Ring", author: "J.R.R. Tolkien", genre: "Fantasy", description: "", image: "TFOTR"),
    .init(title: "The Two Towers", author: "J.R.R. Tolkien", genre: "Fantasy", description: "", image: "TTT"),
    .init(title: "The Return of the King", author: "J.R.R. Tolkien", genre: "Fantasy", description: "", image: "TROTK")
]

var myCollection: [Book] = [
    .init(title: "The Vagus Nerve, Your Body's Superpower!", author: "Gallen Hart", genre: "Health", description: "According to NAMI or the National Alliance on Mental Illness, 48 million U.S. adults suffer from anxiety disorders annually, and each year 21 million U.S. adults have a major depressive episode. Would you like to know more about the connection between the vagus nerve and your mental or emotional imbalances? If you've been looking for a book offering simple holistic exercises and realistic sustainable habits to maintain a change, then this is the book for you!", image: "TVN"),
    .init(title: "Calm the Mind and the Body Will Follow", author: "N.L. Nelani", genre: "Spirituality", description: "It’s a perfectly simple question. Yet somehow, it makes us wonder more about our state of mind. Lingering on matters like, Am I good enough?", image: "CTM"),
    .init(title: "The Insomnia Breakthrough", author: "Catherine Coleman", genre: "Health", description: "Imagine drifting into a deep, unbroken sleep with ease and waking up each day feeling refreshed and full of energy. This isn't an unreachable dream—it's entirely within your grasp. The advice in this book will help you get there!", image: "TIB"),
]

var libraryList: [Book] = [
    .init(title: "The Hobbit", author: "J.R.R. Tolkien", genre: "Fantasy", description: "Bilbo Baggins is a hobbit who enjoys a comfortable, unambitious life, rarely travelling further than the pantry of his hobbit-hole in Bag End. But his contentment is disturbed when the wizard, Gandalf, and a company of thirteen dwarves arrive on his doorstep one day, to whisk him away on a journey ‘there and back again’. They have a plot to raid the treasure hoard of Smaug the Magnificent, a large and very dangerous dragon…", image: "TH"),
    .init(title: "The Fellowship of the Ring", author: "J.R.R. Tolkien", genre: "Fantasy", description: "", image: "TFOTR"),
    .init(title: "The Two Towers", author: "J.R.R. Tolkien", genre: "Fantasy", description: "", image: "TTT"),
    .init(title: "The Return of the King", author: "J.R.R. Tolkien", genre: "Fantasy", description: "", image: "TROTK"),
    .init(title: "The Hobbit", author: "J.R.R. Tolkien", genre: "Fantasy", description: "Bilbo Baggins is a hobbit who enjoys a comfortable, unambitious life, rarely travelling further than the pantry of his hobbit-hole in Bag End. But his contentment is disturbed when the wizard, Gandalf, and a company of thirteen dwarves arrive on his doorstep one day, to whisk him away on a journey ‘there and back again’. They have a plot to raid the treasure hoard of Smaug the Magnificent, a large and very dangerous dragon…", image: "TH"),
    .init(title: "The Fellowship of the Ring", author: "J.R.R. Tolkien", genre: "Fantasy", description: "", image: "TFOTR"),
    .init(title: "The Two Towers", author: "J.R.R. Tolkien", genre: "Fantasy", description: "", image: "TTT"),
    .init(title: "The Return of the King", author: "J.R.R. Tolkien", genre: "Fantasy", description: "", image: "TROTK"),
    .init(title: "The Hobbit", author: "J.R.R. Tolkien", genre: "Fantasy", description: "Bilbo Baggins is a hobbit who enjoys a comfortable, unambitious life, rarely travelling further than the pantry of his hobbit-hole in Bag End. But his contentment is disturbed when the wizard, Gandalf, and a company of thirteen dwarves arrive on his doorstep one day, to whisk him away on a journey ‘there and back again’. They have a plot to raid the treasure hoard of Smaug the Magnificent, a large and very dangerous dragon…", image: "TH"),
    .init(title: "The Fellowship of the Ring", author: "J.R.R. Tolkien", genre: "Fantasy", description: "", image: "TFOTR"),
    .init(title: "The Two Towers", author: "J.R.R. Tolkien", genre: "Fantasy", description: "", image: "TTT"),
    .init(title: "The Return of the King", author: "J.R.R. Tolkien", genre: "Fantasy", description: "", image: "TROTK")
]

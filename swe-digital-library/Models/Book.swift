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
    .init(title: "The Fellowship of the Ring", author: "J.R.R. Tolkien", genre: "Fantasy", description: "In a sleepy village in the Shire, a young hobbit is entrusted with an immense task. He must make a perilous journey across Middle-earth to the Cracks of Doom, there to destroy the Ruling Ring of Power – the only thing that prevents the Dark Lord Sauron’s evil dominion.", image: "TFOTR"),
    .init(title: "The Two Towers", author: "J.R.R. Tolkien", genre: "Fantasy", description: "Continuing the story of The Hobbit, this is the second part of Tolkien,s epic masterpiece, The Lord of the Rings, featuring an exclusive cover image from the film, the definitive text, and a detailed map of Middle-earth. Frodo and the Companions of the Ring have been beset by danger during their quest to prevent the Ruling Ring from falling into the hands of the Dark Lord by destroying it in the Cracks of Doom. They have lost the wizard, Gandalf, in the battle with an evil spirit in the Mines of Moria; and at the Falls of Rauros, Boromir, seduced by the power of the Ring, tried to seize it by force. While Frodo and Sam made their escape the rest of the company were attacked by Orcs. Now they continue their journey alone down the great River Anduin - alone, that is, save for the mysterious creeping figure that follows wherever they go. To celebrate the release of the first of Peter Jackson,s two-part film adaptation of The Hobbit, THE HOBBIT: AN UNEXPECTED JOURNEY, this second part of The Lord of the Rings is available for a limited time with an exclusive cover image from Peter Jackson,s award-winning trilogy.", image: "TTT"),
    .init(title: "The Return of the King", author: "J.R.R. Tolkien", genre: "Fantasy", description: "Concluding the story of The Hobbit, this is the final part of Tolkien’s epic masterpiece, The Lord of the Rings, featuring a striking black cover based on Tolkien’s own design, the definitive text, and a detailed map of Middle-earth. The armies of the Dark Lord Sauron are massing as his evil shadow spreads even wider. Men, Dwarves, Elves and Ents unite forces to do battle against the Dark. Meanwhile, Frodo and Sam struggle further into Mordor, guided by the treacherous creature Gollum, in their heroic quest to destroy the One Ring… JRR Tolkien’s great work of imaginative fiction has been labelled both a heroic romance and a classic fantasy fiction. By turns comic and homely, epic and diabolic, the narrative moves through countless changes of scene and character in an imaginary world which is totally convincing in its detail. Tolkien created a vast new mythology in an invented world which has proved timeless in its appeal.", image: "TROTK"),
    .init(title: "The Vagus Nerve, Your Body's Superpower!", author: "Gallen Hart", genre: "Health", description: "According to NAMI or the National Alliance on Mental Illness, 48 million U.S. adults suffer from anxiety disorders annually, and each year 21 million U.S. adults have a major depressive episode. Would you like to know more about the connection between the vagus nerve and your mental or emotional imbalances? If you've been looking for a book offering simple holistic exercises and realistic sustainable habits to maintain a change, then this is the book for you!", image: "TVN"),
    .init(title: "Calm the Mind and the Body Will Follow", author: "N.L. Nelani", genre: "Spirituality", description: "It’s a perfectly simple question. Yet somehow, it makes us wonder more about our state of mind. Lingering on matters like, Am I good enough?", image: "CTM"),
    .init(title: "The Insomnia Breakthrough", author: "Catherine Coleman", genre: "Health", description: "Imagine drifting into a deep, unbroken sleep with ease and waking up each day feeling refreshed and full of energy. This isn't an unreachable dream—it's entirely within your grasp. The advice in this book will help you get there!", image: "TIB")
]

var relatedBooks: [Book] = [
    .init(title: "The Greatest Thing in the World and Other Writings", author: "Henry Drummond", genre: "Other", description: "", image: "TGTITW"),
    .init(title: "Alignment: An Unlikely Road to Bethlehem", author: "Brad Baldwin", genre: "Spirituality", description: "Alignment is a story of hope, healing, and humanity as a small-town American INFJ battles himself, life, and the world seeking to decipher his own life purpose. On the outside, he led an unconventional life path. Culpeper to Los Angeles. Paramount Pictures to the Himalayan foothills. Bollywood to Gandhi Ashram in Ahmedabad, Gujarat. Building nonprofits. Chasing purpose. The Gandhi/King unity project. Troop 1992 Mark Twain. Decades in India.", image: "ALI"),
    .init(title: "How to Have Real Joy", author: "Charles H. Spurgeon", genre: "Spirituality", description: "", image: "HTHRJ")
]

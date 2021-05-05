//
//  Band.swift
//  HeroAnimation
//
//  Created by Lucas Silveira on 05/05/21.
//

import Foundation

struct Band: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var description: String
}

extension Band {
    static var data = [
        Band(image: "skidrow", title: "Skid Row", description: "Skid Row is an American rock band, formed in 1986 in Toms River, New Jersey. Their current lineup comprises bassist Rachel Bolan, guitarists Dave Sabo and Scotti Hill, drummer Rob Hammersmith and vocalist ZP Theart. The group achieved commercial success in the late 1980s and early 1990s, with its first two albums Skid Row (1989) and Slave to the Grind (1991) certified multi-platinum, the latter of which reached number one on the Billboard 200."),
        Band(image: "mrbig", title: "Mr. Big", description: "Mr. Big is an American glam metal band formed in Los Angeles, California, in 1988. The band was originally composed of Eric Martin (lead vocals), Paul Gilbert (guitar, backing vocals), Billy Sheehan (bass guitar, backing vocals), and Pat Torpey (drums, percussion, backing vocals). Though primarily a metal band, they are most known for scoring softer hits.[13] Their songs are often marked by strong vocals and vocal harmonies."),
        Band(image: "richiekotzen", title: "Richie Kotzen", description: "Richard Dale Kotzen Jr. (born February 3, 1970)[1] is an American guitarist, singer, songwriter, multi-instrumentalist and producer. As a solo artist, Kotzen has back catalogue of more than 20 album releases. He was a member of glam metal band Poison from 1991 to 1993, Mr. Big from 1999 to 2002, and since 2012, has been the frontman of the band The Winery Dogs. Kotzen was signed to California-based Shrapnel Records from 1988 to 1991, and again from 1995 to 1997."),
        Band(image: "thedarkness", title: "The Darkness", description: "The Darkness are a British rock band formed in Lowestoft, England, in 2000. The band consists of Justin Hawkins (lead vocals, lead guitar), his brother Dan Hawkins (rhythm guitar, backing vocals), Frankie Poullain (bass guitar, backing vocals) and Rufus Tiger Taylor (drums, backing vocals)."),
        Band(image: "dirtyhoney", title: "Dirty Honey", description: "Dirty Honey is an American rock band from Los Angeles, formed in 2017. It consists of singer Marc Labelle, guitarist John Notto, bassist Justin Smolian, and drummer Corey Coverstone."),
        Band(image: "landfall", title: "Landfall", description: "Frontiers Music Srl is pleased to announce the signing of Brazil’s LANDFALL. Hailing from Curitiba, the band features former Auras singer Gui Oliver - a true dead ringer for the legendary Steve Perry - Landfall's sound can be described as falling between classic melodic rock a là Journey with some slightly heavier influences, such as classic era Dokken, White Lion, and Extreme."),
        Band(image: "georgebenson", title: "George Benson", description: "George Washington Benson (born March 22, 1943)[3] is an American guitarist, singer, and songwriter. He began his professional career at the age of 19 as a jazz guitarist. A former child prodigy, Benson first came to prominence in the 1960s, playing soul jazz with Jack McDuff and others. He then launched a successful solo career, alternating between jazz, pop, R&B singing, and scat singing. His album Breezin' was certified triple-platinum, hitting no. 1 on the Billboard album chart in 1976.[4] His concerts were well attended through the 1980s, and he still has a large following.[4] Benson has been honored with a star on the Hollywood Walk of Fame."),
        Band(image: "bonamassa", title: "Joe Bonamassa", description: "Joseph Leonard Bonamassa (/ˌbɑːnəˈmɑːsə/ BAH-nə-MAH-sə;[1] born May 8, 1977) is an American blues rock guitarist, singer and songwriter. He started his career at age 12, when he opened for B.B. King.[2] In the last 13 years Bonamassa has put out 15 solo albums through his independent record label J&R Adventures, of which 11 have reached number 1 on the Billboard Blues charts."),
    ]
}

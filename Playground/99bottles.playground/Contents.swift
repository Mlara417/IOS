import UIKit

func beerSong() -> String {
    var lyrics: String = ""
    
    for number in 1...99 {
        let newLine: String = "\n\(100 - number) bottles of beer on the wall, \(100 - number) bottles of beer. \nTake one down and pass it around, \(100 - number - 1) bottles of beer on the wall.\n"
        lyrics += newLine
    }
    
    lyrics += "\nNo more bottles of beer on the wall, no more bottles of beer. \nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    
    return lyrics
    
}
 print(beerSong())
    

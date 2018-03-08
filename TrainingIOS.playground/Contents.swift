//: Playground - noun: a place where people can play

import UIKit

//this can be assign and set
var str = "Hello, playground"

//this is constanta
let number = 1


str = "Hello"
print(str)

enum Animal : Int{
    case cat = 0
    case dog = 1
    case chicken = 4
    
    func getIcon() -> UIImage{
        switch self {
        case .cat:
            return UIImage(named: "img_cat")!
        case .dog:
            return UIImage(named: "img_dog")!
        case .chicken:
            return UIImage(named: "img_chicken")!
        }
    }
}

class Movie {
    private var _title : String
    private var _year : Int
    
    var title : String{
        get{
            return _title
        }
        set{
            if (!newValue.isEmpty){
                _title = newValue
            }
        }
    }
    
    var year : Int{
        get{
            return _year
        }
        set{
            self._year = newValue
        }
    }
    
    init(title : String, year: Int) {
        self._title = title
        self._year = year
    }
    
    init(){
        self._title = ""
        self._year = 0
    }
    
    convenience init(Something: Any){
        self.init()
    }
    
}

class HorrorMovie : Movie{
    var genre: String
    private var _a: Animal?
    private var _aInt: Int?
    
    var a : Animal{
        get{
            return _a!
        }set{
            if let temp = newValue as? Animal{
                _a = temp
            }
        }
    }
    
    var aInt: Int{
        get{
            return _a!.rawValue
        }set{
            _aInt = newValue
        }
    }
    
    init(title: String, year: Int, genre: String) {
        self.genre = genre
        super.init(title : title, year: year)
    }
    
    override init(){
        self.genre = "Horror"
        super.init(title : "No Title", year: 1900)
    }
    
    func check(){
        if _a != nil{
            print("Is Animal \(_a!)")
        }else{
            print("Is not animal")
        }
    }
}

var movies : Movie = Movie(title: "Shawshank Redemption",year: 1997)
var horrorMovie : HorrorMovie = HorrorMovie(title: "Scary Movies", year: 1998, genre: "Horror")
var movieList: [Movie] = [movies]
movieList.append(Movie(title: "Batman Forever", year: 1998))
horrorMovie.a = .chicken

print(movieList[0].title + " , " + String(movieList[0].year))
print(horrorMovie.title + " , " + String(horrorMovie.year) + " , " + horrorMovie.genre)


horrorMovie.check()

//dictionaries / hashmap
let animals2 : [String:Any] = ["cat": 4, "dog": 4, "snake": 5, "fly": true]
if let a = animals2["fly"] as? Int{
    print(a)
}

//for operation
for m in movieList{
    print(m.title)
}

for i in 0..<movieList.count {
    print(movieList[i].title)
}

//while true{
//
//}
//
//repeat{
//
//}while true

//coalesce operation
let adgf = movieList.count > 2 ? "banyak" : "dikit"
let b = animals2["fly"] as? Bool ?? false

print(adgf)
print(String(b))

//try catch
do{
    let d: Data = try JSONSerialization.data(withJSONObject: animals2)
    let dataString : String = String(data: d, encoding: String.Encoding.utf8)!
    print(dataString)
}catch{
    print(error.localizedDescription)
}

//struct
struct MovieStr{
    var title: String
    var year: Int
    
    func toString() -> String{
        return self.title + " , " + String(self.year)
    }
}

let mov = MovieStr(title: "The movie struct", year: 1993)
print(mov.toString())









import UIKit


var capitals = ["Arkansas":"LittleRock","Georgia":"Atlanta"]

print(capitals);
print(capitals.count);

var numbers: [AnyHashable:Any] = [1: "two",3:"values"]



var courses = [44542:"Java", 44560:"Database", 44613:"Data Visualization"]
               
for (key,values) in numbers{
    print(values)
}

var players : Set<String> = ["David Warner", "Virat Kohli",
"Kane Williamson", "Steve Smith"]

print(players)

var primeNumbers : Set<Int> = [2,3,5,7,11]
var numbersList : Set<Int> = [3,2,5,11]

var unionSet : Set<Int> = primeNumbers.union(numbersList)
print(unionSet)

var intersectionSet : Set<Int> = primeNumbers.intersection(numbersList)
print(intersectionSet)

var subtractionSet : Set<Int> = primeNumbers.subtracting(numbersList)
print(subtractionSet)

var symmDiffSet :Set<Int> = primeNumbers.symmetricDifference(numbersList)
print(symmDiffSet)

print(numbersList.isSubset(of: primeNumbers))

var arr:[Int] = [Int]()

arr.append(6);arr.append(10);arr.append(16);arr.append(30);

arr.popLast();

public struct Stack<ElementType> {
    private var storage:[ElementType] = [];
    
    public init(_ arr: [ElementType]?){
        if arr != nil {
            storage = arr!;
        }
        
    }
    
    public mutating func push(_ element: ElementType){
        storage.append(element);
    }
    
    public mutating func pop()-> ElementType?{
        return storage.popLast();
    }
    
    public func peek()->ElementType?{
        return storage.last
    }
    
    public func toString(){
        print(storage)
    }
    
}


public class Node<T> {
    public var data: T
    public var next: Node<T>?
    
    public init(data: T) {
        self.data = data
        self.next = nil
    }
}
var stk: Stack = Stack<Int>([])

stk.push(2);
stk.push(4);
stk.push(10);

stk.toString()

print(stk.peek()!)






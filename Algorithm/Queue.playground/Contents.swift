import UIKit

// Queue (FIFO)
//https://github.com/raywenderlich/swift-algorithm-club/tree/master/Queue

struct Queue<T> {
    private var array = [T?]()
    private var head = 0
        
    mutating func enqueue(_ element: T)
    {
        array.append(element)
    }
    
    mutating func dequeue() -> T?
    {
        guard head < array.count, let element = array[head] else {
            return nil
        }
        
        array[head] = nil
        head += 1
        
        if head > 1 {
            array.removeFirst(head)
            head = 0
        }
        
        return element
    }
    
    func queueLog() {
        print(array)
    }
}


class Person: NSObject {
    var name: String
    init(name: String) {
        self.name = name
        super.init()
    }
}


var personQueue = Queue<Person>()
personQueue.enqueue(Person(name: "Jason"))
personQueue.queueLog()

personQueue.enqueue(Person(name: "Mike"))
personQueue.queueLog()

personQueue.enqueue(Person(name: "Jackson"))
personQueue.queueLog()

personQueue.enqueue(Person(name: "Jake"))
personQueue.queueLog()

personQueue.dequeue()
personQueue.queueLog()

personQueue.dequeue()
personQueue.queueLog()

personQueue.dequeue()
personQueue.queueLog()

personQueue.dequeue()
personQueue.queueLog()

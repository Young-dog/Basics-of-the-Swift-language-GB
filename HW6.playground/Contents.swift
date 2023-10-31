import UIKit

enum Post {
    case cashier
    case cook
}

struct Worker {
    var name: String
    var salary: Double
    var post: Post
}

class Table {
    var places: Int
    
    var pizzeria: Pizzeria
    
    init(places: Int, pizzeria: Pizzeria) {
        self.places = places
        self.pizzeria = pizzeria
    }
    
    func addGuests(guestsCount: Int) -> Bool {
        return places >= guestsCount
    }
}

protocol Product {
    var cost: Double {get set}
    var size: Int {get set}
}

struct FrenchFries : Product {
    var cost: Double
    var size: Int
}

struct Pizza: Product {
    enum PizzaTypes {
        case pepperoni
        case meat
        case mushroom
        case italian
        case dodo
    }
    
    enum Ingredients {
        case pepperoni
        case meat
        case mushrooms
        case spices
    }
    
    var cost: Double
    var size: Int
    var type: PizzaTypes
    var ingredients: [Ingredients]
    var thickDough: Bool
    
    init(cost: Double, size: Int, type: PizzaTypes, ingredients: [Ingredients], thickDough: Bool) {
        self.cost = cost
        self.size = size
        self.type = type
        self.ingredients = ingredients
        self.thickDough = thickDough
    }
}

enum PizzeriaState {
    case open
    case close
    
    func getMsg() {
        switch (self) {
            case PizzeriaState.open:
                print("Пиццерия открыта")
            case PizzeriaState.close:
                print("Пиццерия закрыта")
        }
    }
}

protocol CloseOpen {
    func action(state: PizzeriaState)
}

class Pizzeria : CloseOpen{
    private var pizzas: [Pizza]
    var workers: [Worker]
    var tables: [Table]
    
    init(pizzas: [Pizza], workers: [Worker]) {
        self.pizzas = pizzas
        self.workers = workers
        tables = []
        for _ in 1...5 {
            let table = Table(places: Int.random(in: 0..<6), pizzeria: self)
            tables.append(table)
        }
    }
    
    func addPizza(pizza: Pizza) {
        pizzas.append(pizza)
    }
    
    func getPizzasInOrder() -> [Pizza] {
        return pizzas
    }
    
}

extension Pizzeria {
    func action(state: PizzeriaState) {
        state.getMsg()
    }
}

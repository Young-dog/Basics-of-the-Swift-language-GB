import UIKit

// 1, 2, 3, 4

protocol Product {
    var cost: Double {get set}
    var size: Int {get set}
}

struct FrenchFries : Product {
    var cost: Double
    var size: Int
    
    init(cost: Double, size: Int) {
        self.cost = cost
        self.size = size
    }
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
    
    init(pizzas: [Pizza]) {
        self.pizzas = pizzas
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

// 5

func subtraction<T: Numeric> (a: T, b: T) -> T {
    var sub = a - b
    return sub
}

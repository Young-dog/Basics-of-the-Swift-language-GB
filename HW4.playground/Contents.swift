import UIKit

let pizza1 = Pizza(price: 100, type: Pizza.PizzaTypes.dodo, ingredients: [], thickDough: false)

let pizza2 = Pizza(price: 200, type: Pizza.PizzaTypes.pepperoni, ingredients: [Pizza.Ingredients.mushrooms, Pizza.Ingredients.pepperoni], thickDough: false)

let pizza3 = Pizza(price: 350, type: Pizza.PizzaTypes.mushroom, ingredients: [Pizza.Ingredients.spices], thickDough: false)

let pizza4 = Pizza(price: 100, type: Pizza.PizzaTypes.meat, ingredients: [], thickDough: false)

var pizzeria: Pizzeria = Pizzeria(pizzas: [pizza1, pizza2, pizza3])

print(pizzeria.getPizzasInOrder())

pizzeria.addPizza(pizza: pizza4)

struct Pizza {
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
    
    var price: Int
    var type: PizzaTypes
    var ingredients: [Ingredients]
    var thickDough: Bool
}

class Pizzeria {
    private var pizzas: [Pizza]
    
    init(pizzas: [Pizza]) {
        self.pizzas = pizzas
    }
    
    func addPizza(pizza: Pizza) {
        self.pizzas.append(pizza)
    }
    
    func getPizzasInOrder() -> [Pizza] {
        return self.pizzas
    }
}


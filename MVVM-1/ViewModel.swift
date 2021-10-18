//
//  ViewModel.swift
//  MVVM-1
//
//  Created by Sergey Lobanov on 18.10.2021.
//

import Foundation

// здесь будет использовать класс, потому что 1. Будем держать ссылку, не будем постоянно копировать.
// 2. Если мы решим делать dependency injection вьюМодели в контроллер через сториборд, то понадобится класс наследник от NSObject.
class ViewModel {
    // тут определяем зависимости от Profile
    // Либо получаем профиль, либо имеем внутри себя профиль.
    // напрямую мы полуить это свойство не можем.
    private var profile = Profile(name: "Jonh", secondName: "Smith", age: 33)

    var name: String {
        return profile.name
    }

    var secondName: String {
        return profile.secondName
    }

    var age: String {
        return String(describing: profile.age)
    }
}

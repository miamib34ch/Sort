func notSortArray(_ mas: [Int], _ notSortStart: Int) -> [Int]{ //функция, которая возвращает неотсортированное подмножество
    var notSortMas = [Int]()
    for i in notSortStart..<mas.count{
        notSortMas.append(mas[i])
    }
    return notSortMas
}

func choiceSort(_ mas: inout[Int]){ //inout - ссылается на объект
    for i in 0..<mas.count{
        var minNotSort = notSortArray(mas,i).min() //находим минимальный элемент в неотсортированном подмножестве
        for j in i..<mas.count{ //нужно найти этот же элемент во всём массиве, чтобы узнать его индекс
            if (mas[j] == minNotSort){ //нашли и меняем местами
                var tmp = mas[j]
                mas[j] = mas[i]
                mas[i] = tmp
                break //чтобы весь массив не перебирался дальше
            }
        }
    }
}

var mas = [5,1,1,2,3,1,2,6,7,8,9,1]
choiceSort(&mas) //& используется с inout
for i in mas {
    print(i)
}

//сортировка выбором, в несортированном множестве находим минимум, меняем с первым элементом множества, выполняется пока не закончатся несортированные множества

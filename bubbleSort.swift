func bubbleSort(_ mas: inout[Int]){ //inout - ссылается на объект
    for i in 0..<mas.count {
        for j in 0..<mas.count - 1{
            if (mas[j+1] < mas[j]){
                mas.swapAt(j,j+1) //меняем местами по индексам
            }
        }
    }
}

var mas = [3,2,1,5]
bubbleSort(&mas) //& используется с inout
for i in mas {
    print(i)
}

//последовательно сравниваются значения соседних элементов и меняются числа местами, если предыдущее оказывается больше последующего 

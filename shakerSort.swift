

func shakerSort(_ mas: inout[Int]){ //inout - ссылается на объект
    var left = 0 //левый конец
    var right = mas.count-1 //правый конец
    while (left <= right){ //пока не дойдёт до середины
        for i in (left...right).reversed() where i>left { //двигаемся с права на лево (левого конца, пока больше него) по массиву
            if (mas[i-1] > mas[i]){
                mas.swapAt(i-1,i) //меняем местами по индексам
            }
        }
        left+=1
        for i in left...right where i<right{ //двигаемся с лева на право (правого конца, пока меньше него) по массиву
            if(mas[i] > mas[i+1]){
                mas.swapAt(i, i+1)
            }
        }
        right-=1
    }
}

var mas = [1,3,2,5]
shakerSort(&mas) //& используется с inout
for i in mas {
    print(i)
}

//как пузырьковая, но сначала идёт с левого конца на правый, затем с правого на левый, чередуясь

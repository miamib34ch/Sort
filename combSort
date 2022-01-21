

func combSort(_ mas: inout[Int]){ //inout - ссылается на объект
    let factor: Double = 1.247 //фактор уменьшения
    var step: Double = Double(mas.count - 1)
    while (step >= 1){
        var j = 0
        while (j+Int(step)>mas.count) {
            if (mas[j] > mas[j+Int(step)]){
                mas.swapAt(j+Int(step),j) //меняем местами по индексам
            }
            j+=1 //увеличиваем индекс
        }
        step /= factor
        for i in 0..<mas.count { //сортировка пузырьком
            for j in 0..<mas.count - 1{
                if (mas[j+1] < mas[j]){
                    mas.swapAt(j,j+1)
                }
            }
        }
    }
}

var mas = [5,1,1,2,3,1,2,6,7,8,9,1]
combSort(&mas) //& используется с inout
for i in mas {
    print(i)
}

//сортировка расчёской, суть в том, что у нас есть два зубца, один в начале массива, другой в конце, и мы избавляемся от маленьких значений из конца сразу 

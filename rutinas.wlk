class Rutina{
    var property tiempo = 0
    var property intensidad = 0
    method caloriasQueQuema(){
        return 100 * (tiempo - self.descanso()) * intensidad
    }
    method descanso(){return 0}
}

class Running inherits Rutina{
    override method descanso(){
        return if (tiempo > 20){
            5
        }
        else {
            2
        }
    }
}

class Maraton inherits Running{

}

class Remo inherits Rutina{

}

class RemoDeCompeticion inherits Remo{

}
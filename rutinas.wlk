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
        return if (tiempo > 20) {5} else {2}
    }
}

class Maraton inherits Running{
    override method caloriasQueQuema(){
        return super() * 2 
    }
}

class Remo inherits Rutina{
    override method descanso(){
        return tiempo / 5
    }
}

class RemoDeCompeticion inherits Remo{
    override method descanso(){
        return 2.max(super() - 3)
    }
}
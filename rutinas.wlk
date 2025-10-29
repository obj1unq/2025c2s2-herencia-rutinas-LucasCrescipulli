class Rutina{
    var property tiempo 
    const intensidad 
    method caloriasQueQuema(){
        return 100 * (tiempo - self.descanso()) * self.intensidad()
    }
    method descanso()
    method intensidad(){
        return intensidad
    }
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

class Remo inherits Rutina(intensidad=1.3){
    override method descanso(){
        return tiempo / 5
    }
}

class RemoDeCompeticion inherits Remo(intensidad=1.7){
    override method descanso(){
        return 2.max(super() - 3)
    }
}
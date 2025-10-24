class Rutina{
    const descanso = 0  // no me cierra esto siendo un atributo, cómo lo modifico en cada caso?
    const intensidad = 0
    method caloriasQueQuema(tiempo){ // tampoco puedo pasar todo como parámetros
        return 100 * (tiempo - descanso) * intensidad
    }
}

class Running inherits Rutina{
    override method caloriasQueQuema(tiempo){
        return if (tiempo > 20){                // es poco descriptivo??? no se entiende mucho
                                                // cómo calculo el descanso?
            100 * (tiempo - 5) * intensidad
        }
        else {
            100 * (tiempo - 2) * intensidad
        }
    }
}

class Maraton inherits Running{

}

class Remo inherits Rutina{

}

class RemoDeCompeticion inherits Remo{

}
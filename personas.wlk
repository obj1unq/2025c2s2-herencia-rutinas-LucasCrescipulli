import rutinas.*

class Persona{
    var property peso = 0

    method practicar(rutina){           // REVISAR DE LEO
        self.validarPracticar(rutina)

    }

    method pesoQuePierdeConRutina(rutina){
        return  rutina.caloriasQueQuema() / self.kilosPorCaloriaQuePierde()
    }

    method validarPracticar(rutina){

    }

    method kilosPorCaloriaQuePierde()

}

class PersonaSedentaria inherits Persona{
    override method kilosPorCaloriaQuePierde(){
        return 7000
    }
}

class PersonaAtleta inherits Persona{
    override method kilosPorCaloriaQuePierde(){
         return 8000
    }
}
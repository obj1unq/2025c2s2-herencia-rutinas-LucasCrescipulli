import rutinas.*

class Persona{
    var property peso = 0
    method pesoQuePierdeConRutina(rutina){
        return  rutina.caloriasQueQuema() / self.kilosPorCaloriaQuePierde()
    }
    method kilosPorCaloriaQuePierde(){
        return 
    }
}

class PersonaSedentaria inherits Persona{
    override method kilosPorCaloriaQuePierde(){
        return 7000
    }
}

class PersonaAtleta inherits Persona{
    override method kilosPorCaloriaQuePierde(){
        
    }
}
import capos.*


object espadaDelDestino {
  
     var fueUsadaEnBatalla = false

    method poderDeArtefactoUsadoPor(personaje) {
    
    return personaje.poderBase() / if (fueUsadaEnBatalla) 1 else 2
    
    }

    method usarArtefacto() {
      
        fueUsadaEnBatalla = true

    }
    
}

object libroDeHechizos {
  
    var hechizosDisponibles = []
    
    

    method poderDeArtefactoUsadoPor(personaje) {
        
    
         return(if(hechizosDisponibles.isEmpty()) {

            0
         } else {
            
            self.primerHechizo().poderDePeleaPara(personaje)
         }
         )
            
    }

    method usarArtefacto() {
      
        hechizosDisponibles.remove(self.primerHechizo())

    }

    method añadirHechizoAlLibro(unHechizo) {
      
        hechizosDisponibles.add(unHechizo)

    }

    //el libro debe de tener al menos un hechizo disponible 
    method primerHechizo() {
      
        return hechizosDisponibles.first()

    }

    

}

object collarDivino {

    var cantidadDeBatallasEnUso = 0

    method poderDeArtefactoUsadoPor(personaje) {

        return self.poderBaseDeArtefacto() + if(personaje.poderBase() > 6) cantidadDeBatallasEnUso else 0

    }

    method usarArtefacto() {
      
        cantidadDeBatallasEnUso = cantidadDeBatallasEnUso + 1

    }

    method poderBaseDeArtefacto() {
      
        return 3

    }

}

object armaduraDeAceroValyrio {
  
    
    
    method poderDeArtefactoUsadoPor(personaje) {

        return 6

    }

    method usarArtefacto() {
      
        

    }

}
import capos.*


object espadaDelDestino {
  
     var cantidadDeBatallasEnUso = 0

    method poderDeArtefactoUsadoPor(personaje) {
    
    return personaje.poderBase() / if (cantidadDeBatallasEnUso == 0) 1 else 2
    
    }

    method usarArtefacto() {
      
        cantidadDeBatallasEnUso = cantidadDeBatallasEnUso + 1

    }
    
}

object libroDeHechizos {
  
    method poderDeArtefactoUsadoPor(personaje) {


    }

}

object collarDivino {

    var cantidadDeBatallasEnUso = 0

    method poderDeArtefactoUsadoPor(personaje) {

        return(
                if(personaje.poderBase() > 6) {

                    cantidadDeBatallasEnUso + 3 
                } else {
                    3
                }

        )

    }

    method usarArtefacto() {
      
        cantidadDeBatallasEnUso = cantidadDeBatallasEnUso + 1

    }

    

}

object armaduraDeAceroValyrio {
  
    var cantidadDeBatallasEnUso = 0  
    
    method poderDeArtefactoUsadoPor(personaje) {

        return 6

    }

    method usarArtefacto() {
      
        cantidadDeBatallasEnUso = cantidadDeBatallasEnUso + 1

    }

}
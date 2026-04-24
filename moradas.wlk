import artefactosMagicos.*
import capos.*

object castillo {
  
  const almacenDeArtefactos = #{}

  method almacenDeArtefactos() {
    
    return almacenDeArtefactos

  }
  method almacenarArtefactosDe(personaje) {
    
    self.almacenDeArtefactos().addAll(personaje.artefactosEnLaMochila())
    
    

  }

  method añadirArtefactoAlAlmacen(artefacto) {
    
    almacenDeArtefactos.add(artefacto)

  }
}

object palacioDeMarmol {
  


}

object fortalezaDeAcero {
  
}

object torreDeMarfil {
  
}
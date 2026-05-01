import artefactosMagicos.*
import capos.*

object castillo {
  
  const almacenDeArtefactos = #{}

  method almacenDeArtefactos() {
    
    return almacenDeArtefactos

  }
  method almacenarArtefactos(artefactos) {
    
    self.almacenDeArtefactos().addAll(artefactos)
    
    

  }

  method añadirArtefactoAlAlmacen(artefacto) {
    
    almacenDeArtefactos.add(artefacto)

  }

  method artefactoMasPoderosoPara(personaje) {
    return almacenDeArtefactos.max({ artefacto => artefacto.poderDeArtefactoUsadoPor(personaje) })
}

}

object palacioDeMarmol {
  


}

object fortalezaDeAcero {
  
}

object torreDeMarfil {
  
}
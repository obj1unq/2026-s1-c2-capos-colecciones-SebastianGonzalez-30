import artefactosMagicos.*
import moradas.*


object rolando {
 
    var capacidadMaxima = 2
    const artefactosEnLaMochila =  #{}
    const historialDeArtefactosEncontrados = [] 

    method encontrarArtefacto(artefacto) {
      
        historialDeArtefactosEncontrados.add(artefacto) 
        self.recolectarArtefactoSiPuede(artefacto)

    }

    method capacidadMaxima() {
      

        return capacidadMaxima
    }

    method capacidadMaxima(_capacidadMaxima) {
      
        capacidadMaxima = _capacidadMaxima
        
    }

    method validarRecoleccionDeArtefacto() {
      
        return artefactosEnLaMochila.size() < self.capacidadMaxima() {

             
        } 
    }

    method recolectarArtefacto(artefacto) {

        artefactosEnLaMochila.add(artefacto)
      
    }

    method recolectarArtefactoSiPuede(artefacto) {
      
        if(self.validarRecoleccionDeArtefacto()) {

            self.recolectarArtefacto(artefacto)
        }

    }

    method artefactosEnLaMochila() {
      
      return artefactosEnLaMochila
    }

    method guardarArtefactosEnMorada(morada) {
      
        
        morada.almacenarArtefactosDe(self)  
        artefactosEnLaMochila.clear()

    }

    method listaDeArtefactosTotales(morada) {
      
        return self.artefactosEnLaMochila().union(morada.almacenDeArtefactos())

    }

}
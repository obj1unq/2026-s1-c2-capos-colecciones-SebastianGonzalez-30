import artefactosMagicos.*
import moradas.*


object rolando {
 
    var capacidadMaxima = 2
    const artefactosEnLaMochila =  []
    const historialDeArtefactosEncontrados = [] 

    method encontrarArtefacto(artefacto) {
      
        historialDeArtefactosEncontrados.add(artefacto) 
        self.validarRecoleccionDeArtefacto()
        self.recolectarArtefacto(artefacto)

    }

    method capacidadMaxima() {
      

        return capacidadMaxima
    }

    method capacidadMaxima(_capacidadMaxima) {
      
        capacidadMaxima = _capacidadMaxima
        
    }

    method validarRecoleccionDeArtefacto() {
      
        if(artefactosEnLaMochila.size() == capacidadMaxima) {

            self.error("no hay suficiente espacio en la mochila para recolectar el artefacto")
        }
    }

    method recolectarArtefacto(artefacto) {

        artefactosEnLaMochila.add(artefacto)
      
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
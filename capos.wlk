import artefactosMagicos.*
import castillo.*


object rolando {
 
    var capacidadMaxima = 2
    const artefactosEnLaMochila =  #{}
    

    method encontrarArtefacto(artefacto) {
      
        self.validarRecoleccionDeArtefacto()
        self.recolectarObjeto(artefacto)

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

    method recolectarObjeto(artefacto) {

        artefactosEnLaMochila.add(artefacto)
      
    }

    method artefactosEnLaMochila() {
      
      return artefactosEnLaMochila
    }

    method guardarObjetosEnMorada(morada) {
      
        
        morada.almacenDeObjetos().addAll(self.artefactosEnLaMochila())
        artefactosEnLaMochila.clear()

    }

    method listaDeArtefactosTotales(morada) {
      
        return 

    }

}
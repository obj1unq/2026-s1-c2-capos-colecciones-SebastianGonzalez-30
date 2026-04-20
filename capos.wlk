import artefactosMagicos.*
import castillo.*


object rolando {
 
    var capacidadMaxima = 2
    const artefactosEnLaMochila =  #{}
    const historialDeArtefactosEncontrados = [] 

    method encontrarArtefacto(artefacto) {
      
        historialDeArtefactosEncontrados.add(artefacto) 
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
      
        
        morada.almacenDeObjetos().addAll(self.artefactosEnLaMochila()) //cambiarlo a la morada como un metodo
        artefactosEnLaMochila.clear()

    }

    method listaDeArtefactosTotales(morada) {
      
        return self.artefactosEnLaMochila().union(morada.almacenDeObjetos())

    }

}
import artefactosMagicos.*
import moradas.*


object rolando {
 
    var capacidadMaxima = 2
    const artefactosEnLaMochila =  #{}
    const historialDeArtefactosEncontrados = [] 
    var poderBase = 5
    const morada = castillo

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

    method guardarArtefactosEnMorada() {
      
        
        morada.almacenarArtefactosDe(self)
        artefactosEnLaMochila.clear()

    }

    method artefactosTotales() {
      
        return self.artefactosEnLaMochila().union(morada.almacenDeArtefactos())

    }

    method poseeArtefacto(artefacto){
        
        return self.artefactosTotales().contains(artefacto)
    }

    method historialDeArtefactosEncontrados() {
      
      return historialDeArtefactosEncontrados
    }

    method poderBase() {
      
        return poderBase

    }

    method poderBase(_poderBase) {
      
        poderBase = _poderBase

    }

    method poderDePelea() {
      
        return poderBase + self.poderDeArtefactos()

    }

    method poderDeArtefactos() {
      
        return artefactosEnLaMochila.sum({artefacto => artefacto.poderDeArtefactoUsadoPor(self)})

    }

    method batalla() {
      
        self.artefactosEnLaMochila().forEach({artefacto => artefacto.usarArtefacto()})
        poderBase = poderBase + 1

    }

}
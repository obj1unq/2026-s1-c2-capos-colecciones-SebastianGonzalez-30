import artefactosMagicos.*
import moradas.*
import enemigos.*



object rolando {
 
    var capacidadMaxima = 2
    const artefactosEnLaMochila =  #{}
    const historialDeArtefactosEncontrados = [] 
    var poderBase = 5
    const morada = castillo
    const enemigos = #{} 


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

    method puedeRecolectarArtefacto() {
      
        return artefactosEnLaMochila.size() < self.capacidadMaxima() 

    }

    method recolectarArtefacto(artefacto) {

        artefactosEnLaMochila.add(artefacto)
      
    }

    method recolectarArtefactoSiPuede(artefacto) {
      
        if(self.puedeRecolectarArtefacto()) {

            self.recolectarArtefacto(artefacto)
        }

    }

    method artefactosEnLaMochila() {
      
      return artefactosEnLaMochila
    }

    method guardarArtefactosEnMorada() {
      
        
        morada.almacenarArtefactos(self.artefactosEnLaMochila())
        artefactosEnLaMochila.clear()

    }

    method posesiones() {
      
        return self.artefactosEnLaMochila().union(morada.almacenDeArtefactos())

    }

    method poseeArtefacto(artefacto){
        
        return self.posesiones().contains(artefacto)
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

    method lucharEnBatalla() {
      
        self.artefactosEnLaMochila().forEach({artefacto => artefacto.usarArtefacto()})
        poderBase = poderBase + 1

    }

    method poderDeArtefactoMasPoderosoEnLaMorada() {
      
        const artefactoMasPoderoso = morada.artefactoMasPoderosoPara(self)

        return artefactoMasPoderoso.poderDeArtefactoUsadoPor(self)
    }

    method puedeVencerA(enemigo) {
      
        return self.poderDePelea() > enemigo.poderDePelea()


    }

    method agregarEnemigos(nuevosEnemigos) {
      
        enemigos.addAll(nuevosEnemigos)

    }

    method moradasConquistablesDe(adversarios) {
      
        const enemigosDerrotados = self.enemigosDerrotables(adversarios)

        return  enemigosDerrotados.map({adversario => adversario.morada()}).asSet()

    }

    method enemigosDerrotables(adversarios) {
      
        return adversarios.filter({adversario => self.puedeVencerA(adversario)})

    }

    method esPoderoso() {
      
        return enemigos.any({enemigo => self.puedeVencerA(enemigo)})

    }

}


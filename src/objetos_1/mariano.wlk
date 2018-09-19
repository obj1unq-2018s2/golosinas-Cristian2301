object mariano {
	var golosinasCompradas = []
	
	method golosinasCompradas() {
		return golosinasCompradas 
	}
	
	method golosinasCompradas(bolsaGolosinas){
		golosinasCompradas = bolsaGolosinas
	}
	
	method comprar(golosina) { 
		golosinasCompradas.add(golosina)
	}
	
	method desechar(golosina){
		golosinasCompradas.remove(golosina)
	}
	
	method probarGolosinas() { 
		golosinasCompradas.forEach({golosina => golosina.mordisco()})
	}
	
	method hayGolosinaSinTACC(){
		return golosinasCompradas.any({golosina => golosina.libreGluten()})
	}
	
	method preciosCuidados(){
		return golosinasCompradas.all({golosina => golosina.precio() <= 10})
	}
	
	method golosinaDeSabor(sabor){
		return golosinasCompradas.find({golosina => golosina.gusto() == sabor})	
	}
	
	 method golosinasDeSabor(sabor){
	 	return golosinasCompradas.filter({golosina => golosina.gusto() == sabor})
	 }
	 
	 method sabores(){
	 	return golosinasCompradas.map({golosina => golosina.gusto()}).withoutDuplicates() 
	 	//return golosinasCompradas.map({golosina => golosina.gusto()}).asSet()             DUDAA!!
	 }
	 
	 method golosinaMasCara(){
	 	return golosinasCompradas.max({golosina => golosina.precio()})
	 }
	 
	 method pesoGolosinas(){
	 	return golosinasCompradas.sum({golosina => golosina.peso()})
	 }
	 
	 method golosinasFaltantes(golosinasDeseadas){
	 	return golosinasDeseadas.filter({golosina => self.esGolosinaFaltante(golosina)})
	 }
	 
	 method esGolosinaFaltante(golosina){
	 	return golosinasCompradas.all({caramelo => caramelo != golosina})
	 }
	 
	 method gustosFaltantes(gustosDeseados){
	 	return gustosDeseados.filter({gusto => self.esGustoFaltante(gusto)})
	 }
	 
	 method esGustoFaltante(gusto){
	 	return golosinasCompradas.all({golosina => golosina.gusto() != gusto})
	 }                                    
}


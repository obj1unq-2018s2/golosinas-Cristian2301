object bombon {
	var peso = 15
	
	method precio() { 
		return 5
	}
	method peso() { 
		return peso
	}
	method mordisco() {
		peso = peso * 0.8 - 1
	}
	method gusto() { 
		return "frutilla"
	}
	method libreGluten() { 
		return true
	}
}

object alfajor {
	var peso = 300
	
	method precio() { 
		return 12
	}
	method peso() { 
		return peso
	}
	method mordisco() { 
		peso = peso * 0.8
	}
	method gusto() { 
		return "chocolate"
	}
	method libreGluten() { 
		return false
	}
}

object caramelo {
	var peso = 5
	
	method precio() { 
		return 1
	}
	method peso() { 
		return peso
	}
	method mordisco() { 
		peso = peso - 1
	}
	method gusto() { 
		return "frutilla"
	}
	method libreGluten() { 
		return true
	}
}
											
object chupetin {
	var peso = 7
	
	method precio() { 
		return 2
	}
	method peso() { 
		return peso
	}
	method mordisco() { 
		if(peso >= 2){
			peso = peso - ((peso * 10) / 100)	
		}
	}
	method gusto() { 
		return "naranja"
	}
	method libreGluten() { 
		return true
	}
}

object oblea {
	var peso = 250
	
	method precio() { 
		return 5
	}
	method peso() { 
		return peso
	}
	method mordisco() { 
		if(peso > 70){
			peso -= (peso * 50) / 100
		}
		else{
			peso -= (peso * 25) / 100
		}
	}
	method gusto() { 
		return "vainilla"
	}
	method libreGluten() { 
		return false
	}
}

object chocolatin {
	var pesoInicial 
	var peso
	
	method pesoInicial(){
		return pesoInicial
	}
	
	method peso(cuanto){
		peso = cuanto
		pesoInicial = cuanto
	}
	
	method precio() { 
		return 0.50 * pesoInicial
	}
	method peso() { 
		return peso
	}
	method mordisco() { 
		peso = peso - 2
	}
	method gusto() { 
		return "chocolate"
	}
	method libreGluten() { 
		return false
	}
}

object golosinaBaniada {
	var golosinaInterior
	var pesoBanio = 4
	
	method pesoBanio(){
		return pesoBanio
	}
	
	method baniaA(unaGolosina) { 
		golosinaInterior = unaGolosina
	}
	method precio() { 
		return golosinaInterior.precio() + 2
	}
	method peso() { 
		return golosinaInterior.peso() + pesoBanio
	}
	method mordisco() {
		golosinaInterior.mordisco()
		if (pesoBanio > 0) { 
			pesoBanio -= 2
		}
		// otra forma de hacer la cuenta: pesoBanio = (pesoBanio - 2).max(0) 
	}	
	method gusto() { 
		return golosinaInterior.gusto()
	}
	method libreGluten() { 
		return golosinaInterior.libreGluten()
	}	
}

object tuttifrutti {
	var peso = 5
	var libreGluten
	var property gusto
	
	method libreGluten(){
		return libreGluten
	}
	
	method libreGluten(gluten){
		libreGluten = gluten
	}
	
	method peso(){
		return peso
	}
	
	method precio(){
		if(libreGluten){
			return 7
		}
		else{
			return 10
		}
	}
	
	// Aca debia resolverse con colecciones.
	// La idea es que basaras el funcionamiente
	// como si fuera el de una ronda.
	method mordisco(){
		if(gusto == "frutilla"){
			self.gusto("chocolate")
		}
		else if(gusto == "chocolate"){
			self.gusto("naranja")
		}
		else{
			self.gusto("frutilla")	
		}
	}
}
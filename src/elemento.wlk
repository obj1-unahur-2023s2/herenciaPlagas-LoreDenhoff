import plaga.*

class Elemento{
	const esBueno
	
	method esBueno()
	method efectoAtaque(plaga)
}

class Hogar inherits Elemento{
	var nivelMugre=0
	var confort=0
	
	override method esBueno()= nivelMugre <= (confort/2)
	override method efectoAtaque(plaga){ nivelMugre+= plaga.nivelDanio()}
}

class Huerta inherits Elemento{
	var capProduccion
	
	override method esBueno()= capProduccion >prod.capacProduc()
	override method efectoAtaque(plaga){
		if(plaga.transmiteEnfermedad()) 
			capProduccion -= ((capProduccion*0.1)+10)
		else
			capProduccion -=10
		}	
}

class Mascota inherits Elemento{
	var nivelSalud
	
	override method esBueno()= nivelSalud>250
	override method efectoAtaque(plaga){
		if(plaga.transmiteEnfermedad()) 
			nivelSalud -= plaga.nivelDanio()
	}

}

object prod{
	var property capacProduc=0
}
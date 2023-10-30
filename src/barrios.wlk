import elemento.*

class Barrio{
	const elementos=[]
	
	method cantBuenos()= elementos.count({e => e.esBueno()})
	method cantMalos()= elementos.count({e => !e.esBueno()})
	method esCopado()= self.cantBuenos() > self.cantMalos()
}
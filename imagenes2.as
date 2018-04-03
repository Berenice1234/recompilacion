package  {
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.events.Event;
	import flash.display.Loader;
	import flash.text.TextField;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import fl.transitions.Tween;
	import flash.display.MovieClip;
	
	public class imagenes2 extends MovieClip {
	
	
		public function imagenes2() {
	}
	public function cargarLista(e:Event){
		datosXML= new XML(e.target.data);
		numeroElementos=datosXML.locacion.length();
		setImagenes();
	}
	public function setImagenes(){
		var posY:uint=0;
		var posX:uint=0;
		for (var i:uint=0;i<numeroElementos; i++){
			var ind:Number =(i)%5;
			if (i>0 && ind==0){
				posY++;
				posX=0;
	}
	//indica la posicionde la imagen
		var imagen:Loader= new Loader();
		imagen.load(new URLRequest(datosXML.locacion[i].imagen));
		imagen.y=posY*245;
		imagen.x=posX*205;
		//se define la animacion que tendran las imagenes
		var queda:int = imagen.y;
		//var animacion1:Tween=new Tween(imagen,"y", Bounce.easeIn, imagen.x, imagen.y,5,true);
		galeria.addChild(imagen);
		//toma el texto de la imagen y lo coloca con la imagen que coresponde
		var texto:TextField=new TextField();
		texto.text=datosXML.locacion[i].info;
		texto.y=queda+205;
		texto.x=imagen.x;
		galeria.addChild(texto);
		
		posX++
			
		}
	}
}
}
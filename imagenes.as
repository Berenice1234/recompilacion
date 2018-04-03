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
	
	
	public class imagenes extends MovieClip {

		public function imagenes() {
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
			var ind:Number =(i)%3;
			if (i>0 && ind==0){
				posY++;
				posX=0;
	}
			
		}
	
}

package  {
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.display.Loader;
	import flash.net.URLRequest;
	import flash.net.URLLoader;
	import flash.text.TextField;
	import flash.display.Sprite;
	import fl.transitions.Tween;
	import flash.display.Sprite;
	import flash.net.*;
	import fl.motion.MotionEvent;
	
	public class practica extends MovieClip {

		public function practica () {
			// constructor code
			
		}
		public function C1(e:MouseEvent):void{
				var miURL: URLRequest = new URLRequest("Practica1.html");
				navigateToURL(miURL, "self");
		} 
			
		public function C2(e:MouseEvent):void{
				var miURL: URLRequest = new URLRequest("Practica2.html");
				navigateToURL(miURL, "self");
		}
		public function C3(e:MouseEvent):void{
				var miURL: URLRequest = new URLRequest("Practica3.html");
				navigateToURL(miURL, "self");
		}
		public function C4(e:MouseEvent):void{
				var miURL: URLRequest = new URLRequest("Practica4.html");
				navigateToURL(miURL, "self");
		}
		public function C5(e:MouseEvent):void{
				var miURL: URLRequest = new URLRequest("practica5.html");
				navigateToURL(miURL, "self");
		}
		public function C6(e:MouseEvent):void{
				var miURL: URLRequest = new URLRequest("Practica5(1).html");
				navigateToURL(miURL, "self");
		}
		public function C7(e:MouseEvent):void{
				var miURL: URLRequest = new URLRequest("practica6.html");
				navigateToURL(miURL, "self");
		}
		public function C8(e:MouseEvent):void{
				var miURL: URLRequest = new URLRequest("galeria.html");
				navigateToURL(miURL, "self");
		}
		public function C9(e:MouseEvent):void{
				var miURL: URLRequest = new URLRequest("practica8-demo.html");
				navigateToURL(miURL, "self");
		}
		public function C10(e:MouseEvent):void{
				var miURL: URLRequest = new URLRequest("Practica 9.html");
				navigateToURL(miURL, "self");
		}
		public function C11
		(e:MouseEvent):void{
				var miURL: URLRequest = new URLRequest("Videos.html");
				navigateToURL(miURL, "self");
		}
		public function C12
		(e:MouseEvent):void{
				var miURL: URLRequest = new URLRequest("galeria2.html");
				navigateToURL(miURL, "self");
		}
		public function T1(e:MouseEvent):void{
				var miURL: URLRequest = new URLRequest("Tarea 1.htm");
				navigateToURL(miURL, "self");
		}
		public function T2(e:MouseEvent):void{
				var miURL: URLRequest = new URLRequest("Tarea 2.htm");
				navigateToURL(miURL, "self");
		}
		public function T3(e:MouseEvent):void{
				var miURL: URLRequest = new URLRequest("Formulario.html");
				navigateToURL(miURL, "self");
		}
		public function T4(e:MouseEvent):void{
				var miURL: URLRequest = new URLRequest("Tarea4.html");
				navigateToURL(miURL, "self");
		}
		public function T5(e:MouseEvent):void{
				var miURL: URLRequest = new URLRequest("MIS COMPROMISOS.htm");
				navigateToURL(miURL, "self");
		}
		public function J1(e:MouseEvent):void{
				var miURL: URLRequest = new URLRequest("practica4_juego.html");
				navigateToURL(miURL, "self");
		}
		public function J2(e:MouseEvent):void{
				var miURL: URLRequest = new URLRequest("Proyecto_1 v3.html");
				navigateToURL(miURL, "self");
		}
		public function J3(e:MouseEvent):void{
				var miURL: URLRequest = new URLRequest("juego2.html");
				navigateToURL(miURL, "self");
		}
		public function v1(event:MouseEvent){
		var v: nose= new nose();
			v.playMyFlv("conclusiones.mp4");
			addChild(v);
		}
		public function v2(event:MouseEvent){
		var v: nose= new nose();
			v.playMyFlv("conclusion2.mp4");
			addChild(v);
		}
		public function G1(e:MouseEvent):void{
			var miURL: URLRequest = new URLRequest("Manual técnico.htm");
			navigateToURL(miURL, "self");
		}
	}
}

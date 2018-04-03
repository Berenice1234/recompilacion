package 
{
	import fl.transitions.easing.*;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import fl.transitions.Tween;
	import flash.display.MovieClip;


	public class Portada extends MovieClip
	{
		private var nom:String;
		private var ed:Number;
		private var sue:Number;
		
		private var c:int = 0;
		private var co:int = 1;
		private var Nempleado:int = 0;
		private var yuu:String;

		private var vector_1:Array= new Array();
		private var vector_2:Array= new Array();
		private var vector_3:Array= new Array();
		private var vector_4:Array= new Array();

		private var hombres:Number = 0;
		private var nominaH:Number = 0;
		private var Tnomina:Number = 0;
		private var edadtercerah:Number = 0;
		private var mujeres:Number = 0;
		private var Tpagar:Number = 0;
		private var Tpago:Number = 0;
		private var edadOtrosh:Number = 0;
		private var edadOtrosm:Number = 0;
		private var edad30h:Number = 0;
		private var edad30m:Number = 0;
		private var nominaM:Number = 0;
		private var edadterceram:Number = 0;
		private var Templeados:Number = 0;
		private var aumentosueldo:Number = 0;


		public function Portada()
		{
			// constructor code
			nomina_btn.addEventListener(MouseEvent.CLICK, siguiente);
		}
		public function siguiente(event:MouseEvent):void
		{
			gotoAndStop(2);
			guardar_btn.addEventListener(MouseEvent.CLICK,guardar);
			
			
		}

		public function guardar(event:MouseEvent)
		{

			//asignar los valores de la caja de texto a las variables 
			nom = nombre_txt.text;
			ed = Number(edad_txt.text);
			sue = Number(sueldo_txt.text);


			//validar edad
			if (isNaN(ed))
			{
				//verdadero: El valor es STRING
				edad_txt.text = "Solo numeros";
			}
			else
			{
				if ( ed==0 || ed>18)
				{
					//sueldo igual a cero
					edad_txt.text = "Datos  incorrectos";
				}
				else
				{

					//validar sueldo
				}
				if (isNaN(sue))
				{
					//verdadero: Es un STRING
					sueldo_txt.text = "Solo numeros";
				}
				else if (isNaN(sue) || sue==0)
				{
					//esta vacio
					sueldo_txt.text = "Vacio";
				}
				else
				{
					//validar si es hombre o mujer 
					if (hombre_chbox.selected == true && mujer_chbox.selected == false)
					{
						yuu = "masculino";
						vector_4[c] = yuu;
						mujer_chbox.selected == false;
						vector_1[c] = nom;
						vector_2[c] = ed;
						vector_3[c] = sue;
						gotoAndStop(3);
						mostrar_btn.addEventListener(MouseEvent.CLICK,mostrardatos);
					}
					else if (mujer_chbox.selected==true&&hombre_chbox.selected==false)
					{
						yuu = "femenino";
						vector_4[c] = yuu;
						hombre_chbox.selected == false;
						vector_1[c] = nom;
						vector_2[c] = ed;
						vector_3[c] = sue;
						gotoAndStop(3);
						mostrar_btn.addEventListener(MouseEvent.CLICK,mostrardatos);

					}
				}//acumuladres de datos
			}

		}
		
		public function mostrardatos(e:MouseEvent){
			if (vector_2[c] >= 26 && vector_2[c] <= 59 && vector_4[c] == "femenino")
			{

				
				mujeres = (mujeres + 1);
				aumento_txt.text = "";
				aumentop_txt.text = "";
				//calcula la nomina de las mujeres
				nominaM = (nominaM + Number(vector_3[c]));
				edad30m = (edad30m + 1);
				//le suma 1 al toal de empleados
				Templeados = (Templeados + 1);
				//suma el sueldo ingresado a la nomina de mujeres
				Tnomina = (Number(Tnomina) + vector_3[c]);
				Tpagar_txt.text = vector_3[c];
				nombre_1.text = vector_1[c];
				sexo_1.text = vector_4[c];
				sueldo_1.text = vector_3[c];
				edad_1.text = vector_2[c];
				Nempleado_1.text = String(co);
			}
			else if (vector_2[c] > 35 && vector_2[c] < 60 && vector_4[c] == "masculino")
			{
				edadOtrosh = (edadOtrosh);
				hombres = (hombres + 1);
				aumentop_txt.text = "";
				aumento_txt.text = "";
				nominaH = (nominaH + vector_3[c]);
				Tnomina = (Number(Tnomina) + vector_3[c]);
				Templeados = (Templeados + 1);
				Tpagar_txt.text = vector_3[c];
				nombre_1.text = vector_1[c];
				sexo_1.text = vector_4[c];
				sueldo_1.text = vector_3[c];
				edad_1.text = vector_2[c];
				Nempleado_1.text = String(co);
			}
			else if (vector_2[c] >= 18 && vector_2[c] <= 29 && vector_4[c] == "masculino")
			{
				edadOtrosh = (edadOtrosh + 1);
				hombres = (hombres + 1);
				aumentop_txt.text = "";
				aumento_txt.text = "";
				nominaH = (nominaH + vector_3[c]);
				Templeados = (Templeados + 1);
				Tnomina = (Tnomina + vector_3[c]);
				Tpagar_txt.text = vector_3[c];
				nombre_1.text = vector_1[c];
				sexo_1.text = vector_4[c];
				sueldo_1.text = vector_3[c];
				edad_1.text = vector_2[c];
				Nempleado_1.text = String(co);

			}
			else if (vector_2[c] >= 18 && vector_2[c] <= 25 &&  vector_4[c] == "femenino")
			{
				mujeres = (mujeres + 1);
				aumento_txt.text = "Con aumentosueldo de ";
				aumentop_txt.text = String(((Number(vector_3[c]) + Number(vector_3[c])) * 0.15));
				Tpagar_txt.text = String((Number(vector_3[c]) + Number(aumentop_txt.text)));
				nominaM = (nominaM + Number(Tpagar_txt.text));
				edadOtrosm = (edadOtrosm + 1);
				Tnomina = (Tnomina + Number(Tpagar_txt.text));
				Templeados = (Templeados + 1);
				nombre_1.text = vector_1[c];
				sexo_1.text = vector_4[c];
				sueldo_1.text = vector_3[c];
				edad_1.text = vector_2[c];
				Nempleado_1.text = String(co);
			}
			else if (vector_2[c] >= 30 && vector_2[c] <= 35 && vector_4[c] == "masculino")
			{
				hombres = (hombres + 1);
				aumento_txt.text = "Con descuento de ";
				aumentop_txt.text = String(((Number(vector_3[c]) + Number(vector_3[c])) * 0.15));
				Tpagar_txt.text = String((Number(vector_3[c]) + Number(aumentop_txt.text)));
				nominaH = (nominaH + Number(Tpagar_txt.text));
				edad30h = (edad30h + 1);
				Tnomina = (Tnomina + Number(Tpagar_txt.text));
				Templeados = (Templeados + 1);
				nombre_1.text = vector_1[c];
				sexo_1.text = vector_4[c];
				sueldo_1.text = vector_3[c];
				edad_1.text = vector_2[c];
				Nempleado_1.text = String(co);
			}
			else if (vector_2[c] >= 60 && vector_2[c] <= 90 && vector_4[c] == "femenino")
			{
				mujeres = (mujeres + 1);
				aumento_txt.text = "Con aumentosueldo de ";
				aumentop_txt.text = String(((Number(vector_3[c]) + Number(vector_3[c])) * 0.2));
				Tpagar_txt.text = String((Number(vector_3[c]) + Number(aumentop_txt.text)));
				nominaM = (nominaM + Number(Tpagar_txt.text));
				Tnomina = (Tnomina + Number(Tpagar_txt.text));
				edadterceram = (edadterceram + 1);
				Templeados = (Templeados + 1);
				nombre_1.text = vector_1[c];
				sexo_1.text = vector_4[c];
				sueldo_1.text = vector_3[c];
				edad_1.text = vector_2[c];
				Nempleado_1.text = String(co);
			}
			else if (vector_2[c] >= 60 && vector_2[c] <= 90 && vector_4[c] == "masculino")
			{
				hombres = (hombres + 1);
				aumento_txt.text = "Con aumentosueldo de ";
				aumento_txt.text = String(((Number(vector_3[c]) + Number(vector_3[c])) * 0.2));
				Tpagar_txt.text = String((Number(vector_3[c]) + Number(aumentop_txt.text)));
				nominaH = (nominaH + Number(Tpagar_txt.text));
				Tnomina = (Tnomina + Number(Tpagar_txt.text));
				edadtercerah = (edadtercerah + 1);
				Templeados = (Templeados + 1);
				nombre_1.text = vector_1[c];
				sexo_1.text = vector_4[c];
				sueldo_1.text = vector_3[c];
				edad_1.text = vector_2[c];
				Nempleado_1.text = String(co);
			}
		}
	}
}
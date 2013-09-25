echo ""
echo ""
echo ""
echo ""
echo "Este script aumenta al volumen maximo las salidas de audio de la BeagleBoard-xM "
echo "------------------------Ronny Jimenez-------------------------------------------"
echo "------Fuente original: Jorge Castro-Godinez, IE, TECNOLOGICO DE COSTA RICA------"
echo ""
echo ""
echo ""
echo ""


read -p "Digite 'y' si desea subir el volumen, o 'n' si desea salir: " OPCION
echo ""
echo ""
case $OPCION in
	"y") echo "Subiendo el volumen";
	     amixer sset 'DAC1 Digital Fine' 65;
	     amixer sset 'Headset' 3;
	     amixer sset 'HeadsetL Mixer AudioL1' on;;
	"n") echo "Saliendo de la aplicacion......."; 
	     echo "..."
	     echo "......"
	     echo "........"
	     echo "............"
	     echo ""
	     echo ""
	     echo ""
	     echo ""
	     exit;
	esac

echo "Operacion terminada"


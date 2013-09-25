
#Original: David Diaz, Modificaciones: Ronny Jimenez
#Las modificaciones instalan las dependencias corrigiendo los errores que salen con respecto a los make[1], make[2] y make[3]

read -p "Desea instalar las dependencias y los plugins de mad: (Y/N)" OPCION
echo ""
echo ""
case $OPCION in
	"Y") echo "Instalando....";

	mkdir tmpMP3;
	cd tmpMP3;
	echo "Source enviroment-setup --> se agregar al entorno de arm";
	source ${HOME}/ti-sdk-beagleboard-06.00.00.00/linux-devkit/environment-setup; 
	echo "-----------------------------------------";
	echo "Instalacion de las dependencias faltantes";
	echo "-----------------------------------------";
	echo "Instalacion de libmad";
	echo "";
	echo "";
	echo "";

	wget http://ftp.de.debian.org/debian/pool/main/libm/libmad/libmad_0.15.1b.orig.tar.gz;
	tar -xzvf libmad_0.15.1b.orig.tar.gz ;
	cd libmad-0.15.1b/;

	./configure --host=arm-none-linux --enable-shared --prefix=${HOME}/ti-sdk-beagleboard-06.00.00.00/targetNFS/usr;
	sudo su;
	source ${HOME}/ti-sdk-beagleboard-06.00.00.00/linux-devkit/environment-setup; 
	make install;

	cd ..;
	echo "Instalacion de libid3tag";

	wget http://ftp.de.debian.org/debian/pool/main/libi/libid3tag/libid3tag_0.15.1b.orig.tar.gz;
	tar -xzvf libid3tag_0.15.1b.orig.tar.gz;

	cd libid3tag-0.15.1b/;
	./configure --host=arm-none-linux --enable-shared --prefix=${HOME}/ti-sdk-beagleboard-06.00.00.00/targetNFS/usr;
	sudo su;
	source ${HOME}/ti-sdk-beagleboard-06.00.00.00/linux-devkit/environment-setup; 
	make install;

	cd ..;

	echo "Instalacion de los plugins 'ugly' con MAD incluido";
	wget http://gstreamer.freedesktop.org/src/gst-plugins-ugly/gst-plugins-ugly-0.10.19.tar.xz;
	tar -xJf gst-plugins-ugly-0.10.19.tar.xz;

	cd gst-plugins-ugly-0.10.19/;

	./configure --host=arm-none-linux --enable-shared --prefix=${HOME}/ti-sdk-beagleboard-06.00.00.00/targetNFS/usr/ CFLAGS="-I${HOME}/ti-sdk-beagleboard-06.00.00.00/targetNFS/usr/include" LIBS="-L${HOME}/ti-sdk-beagleboard-06.00.00.00/targetNFS/usr/lib";
	sudo su;
	source ${HOME}/ti-sdk-beagleboard-06.00.00.00/linux-devkit/environment-setup; 
	make install;

	cd ../..;

	echo "Borrando archivos temporales";
	rm -r tmpMP3;


	echo "Instalacion completa";;

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


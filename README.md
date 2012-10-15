#�D�nde quedamos?

Es un  proyecto  web, dise�ado para brindar informaci�n en forma oportuna y �gil de los bares de la ciudad de Lima.
Permitiendo actualizar  los nuevos bares o dando de baja a los que ya cerraron.

#Integrantes

Luis Oliva Pe�aranda

Luis Miguel Espinoza


## Arquitectura
Para su desarrollo se us� :

	Ruby
	Sinatra
	Bootstrap
	Mongodb

Gemas:

	gem sinatra
	gem sinatra-contrib
	gem mongo
	gem install bson	
	gem bson_ext

## User Story
Nuevos lugares:

	Registrar nuevos bares, en un formato de :
		Titulo          	:  Nombre de bar o apelativo identificable para hacer las b�squedas
		Contenido 	:  Descripci�n del bar, lo que ofrece, horarios de atenci�n y promociones.
		Direcci�n  	:  Lugar exacto de la avenida, calle, jir�n del bar.
		Distrito       	:  Indipensable para la b�usqueda.
		Latitud        	:  Uso de Google Maps
		Longitud    	:  Uso de Google Maps

Dar de baja a lugares:

	Elimina bares, el dato necesario es el titulo, nombre o apelativo del bar.

Ruta del Pisco:

	B�squeda de preferencia bares que ofrecen tragos en base al Pisco

Solo chelas:

	B�squeda de preferencia de bares que ofrecen solo cerveza.

Iniciar sesi�n:

	Permite registrarse como usuario.
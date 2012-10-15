#¿Dónde quedamos?

Es un  proyecto  web, diseñado para brindar información en forma oportuna y ágil de los bares de la ciudad de Lima.
Permitiendo actualizar  los nuevos bares o dando de baja a los que ya cerraron.

#Integrantes

Luis Oliva Peñaranda

Luis Miguel Espinoza


## Arquitectura
Para su desarrollo se usó :

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
		Titulo          	:  Nombre de bar o apelativo identificable para hacer las búsquedas
		Contenido 	:  Descripción del bar, lo que ofrece, horarios de atención y promociones.
		Dirección  	:  Lugar exacto de la avenida, calle, jirón del bar.
		Distrito       	:  Indipensable para la búusqueda.
		Latitud        	:  Uso de Google Maps
		Longitud    	:  Uso de Google Maps

Dar de baja a lugares:

	Elimina bares, el dato necesario es el titulo, nombre o apelativo del bar.

Ruta del Pisco:

	Búsqueda de preferencia bares que ofrecen tragos en base al Pisco

Solo chelas:

	Búsqueda de preferencia de bares que ofrecen solo cerveza.

Iniciar sesión:

	Permite registrarse como usuario.
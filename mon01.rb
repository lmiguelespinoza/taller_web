#require 'rubygems'
#require 'mongo'

module MongoADO

	def MongoADO.find_ruta(pTit)

		connection = Mongo::Connection.new("localhost")

		db = connection.db("dbdq")
		coll = db.collection("ruta")

		djson=coll.find_one("titulo" => pTit)	
		registro=['T00','','','','00.00','00.00']
	
		if djson !=  nil
			contador=0	
			elemento=djson.to_a
			elemento.each do |arreglo|
				contador+=1				
				registro[0]=arreglo[1,1] if contador == 2
				registro[1]=arreglo[1,1] if contador == 3
				registro[2]=arreglo[1,1] if contador == 4		
				registro[3]=arreglo[1,1] if contador == 5
				registro[4]=arreglo[1,1] if contador == 6
				registro[5]=arreglo[1,1] if contador == 7
			end
		end
		registro
	end

	def MongoADO.like_ruta(pTit)

		connection = Mongo::Connection.new("localhost")

		db = connection.db("dbdq")
		coll = db.collection("ruta")

		params = {'search' => pTit}
		search_string = params['search']

		djson = coll.find_one({"titulo" => Regexp.new(search_string)}).to_a
		registro=['T00','','','','00.00','00.00']

		if djson != nil
			contador=0	
			elemento=djson.to_a
			elemento.each do |arreglo|
				contador+=1	
				registro[0]=arreglo[1,1] if contador == 2
				registro[1]=arreglo[1,1] if contador == 3
				registro[2]=arreglo[1,1] if contador == 4	
				registro[3]=arreglo[1,1] if contador == 5
				registro[4]=arreglo[1,1] if contador == 6
				registro[5]=arreglo[1,1] if contador == 7
			end
		end
		registro	
	end


	def MongoADO.add_ruta(pTit, pCon, pDir, pDis, pLat, pLon)

		connection = Mongo::Connection.new("localhost")

		db = connection.db("dbdq")
		coll = db.collection("ruta")

		reg=MongoADO.find_ruta(pTit)
		tit=reg[0].to_s[2,(reg[0].to_s.length - 4)] 
		if  tit != pTit
			doc = {titulo: pTit, contenido: pCon, direccion:pDir, distrito:pDis, lat: pLat, lng:pLon }
			coll.insert(doc)
		end

	end

	def MongoADO.update_ruta( pTit, pCon, pDir, pDis, pLat, pLon)

		connection = Mongo::Connection.new("localhost")

		db = connection.db("dbdq")
		coll = db.collection("ruta")

		coll.update({"titulo" => pTit}, {"$set" => {"contenido" => pCon , "direccion" => pDir , "distrito" => pDis , "lat" => pLat ,  "lng" => pLon }})

	end

	def MongoADO.delete_ruta(pTit)

		connection = Mongo::Connection.new("localhost", 27017)

		db = connection.db("dbdq")
		coll = db.collection("ruta")

		coll.remove("titulo"=>pTit)

	end

end

#puts find_lugar("rincon")
#puts find_lugar("ita")
#puts find_ruta("R02")
# puts find_ruta("R03")
#add_ruta("R01",  "el rincon chelero", "la mejor cerveza", "60", "60.60" )
#add_ruta("R02",  "el anejo", "el mejor pisco", "80", "80.80" )
#add_ruta("R03","nose", "nada nose nada", "99.99", "99.99" )
#update_ruta("R03","el bar", "solo alcohol de verdad", "60.81", "77.01" )
#add_ruta("R04","la sarita", "solo afrodisiacos de la selva", "66.99", "66.98" )
#add_ruta("R05","la sandrita", "solo tragos del norte", "66.70", "66.98" )
#delete_ruta("R03")
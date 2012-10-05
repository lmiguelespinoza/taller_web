require 'rubygems'
require 'mongo'

connection = Mongo::Connection.new("localhost", 27017)

db = connection.db("dbdq")
coll = db.collection("ruta")

doc = {codigo:"R03", titulo: "el nuevo", contenido: "el mejor ???", lat: "60.81", lng:"77.01" }

id = coll.insert(doc)

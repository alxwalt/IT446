import pymongo
from pymongo import MongoClient

client = MongoClient()
db = client.testDatabase
search = {}
UserShoes = db.UserShoes.find(search)

for document in UserShoes:
	print(document['name'] + '<br/>')
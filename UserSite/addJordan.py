import pymongo
from pymongo import MongoClient

client = MongoClient()
db = client.testDatabase
UserShoes = db.UserShoes

insert = {
	"name": "Jordan XXXII"
	
}


result = UserShoes.insert_one(insert)

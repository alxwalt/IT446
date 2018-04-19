import os
import shutil

shutil.rmtree("/var/www/html/MongoBackup")

os.system('mongodump --out /var/www/html/MongoBackup')



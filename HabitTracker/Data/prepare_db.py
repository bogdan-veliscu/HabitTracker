import json
import os
import csv
import copy
# https://github.com/thisbejim/Pyrebase
import pyrebase

LOG_PREFIX = "\n#####\n"
# Import database module.
config = {
    "apiKey": "AIzaSyAdZ0IXtdLb9cx75y5qG5Uz234aHy9yOQU",
    "authDomain": "habittrack3r.firebaseapp.com",
    "databaseURL": "https://habittrack3r.firebaseio.com",
    "projectId": "habittrack3r",
    "storageBucket": "habittrack3r.appspot.com",
    "messagingSenderId": "927152241793",
    "appId": "1:927152241793:web:eaa9cf9d2b31087d60a180",
    "measurementId": "G-05RZZE6EK8"
}





firebase = pyrebase.initialize_app(config)

# Get a reference to the database service
db = firebase.database()

users = db.child("template").get()
print(users.val())
print(LOG_PREFIX)
recipe_dict = {}

template = {
    "color" : "red",
    "commment" : "heart icon",
    "desc" : "Have someone to be with you through good and bad times",
    "icon" : "heart",
    "tags" : {
      "family" : 0,
      "love" : 1
    },
    "title" : "Find Signifiant Other"
  }

habits = {}
with open('Habits.csv') as csv_file:
    reader = csv.reader(csv_file)
    # print(csv_dict)
    for row in reader:
        title = row[0]
        desc = row[1]
        new_template = copy.deepcopy(template)
        new_template["title"] = title
        new_template["desc"] = desc
        habits[title] = new_template

        print (new_template)

json_str = json.dumps(habits)

print (" $$$$ \n")
print(json_str)
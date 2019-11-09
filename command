{
  "name": "starboardsetup",
  "permissions": "NONE",
  "restriction": "1",
  "_id": "GFcOw",
  "actions": [
    {
      "message": "0",
      "varName": "",
      "info": "3",
      "storage": "1",
      "varName2": "auth",
      "name": "Store Message Info"
    },
    {
      "member": "2",
      "varName": "auth",
      "info": "1",
      "storage": "1",
      "varName2": "auth id",
      "name": "Store Member Info"
    },
    {
      "channel": "0",
      "varName": "",
      "message": "what channel would you like to be the starboard?",
      "storage": "0",
      "varName2": "",
      "iffalse": "0",
      "iffalseVal": "",
      "name": "Send Message"
    },
    {
      "storage": "0",
      "varName": "",
      "filter": "author.id === '${tempVars(\"auth id\")}'",
      "max": "1",
      "time": "30000",
      "iftrue": "0",
      "iftrueVal": "",
      "iffalse": "1",
      "iffalseVal": "",
      "storage2": "1",
      "varName2": "channel ",
      "name": "Await Response Call Action"
    },
    {
      "message": "1",
      "varName": "channel ",
      "info": "2",
      "storage": "1",
      "varName2": "channel 2",
      "name": "Store Message Info"
    },
    {
      "channel": "3",
      "varName": "channel 2",
      "info": "1",
      "storage": "1",
      "varName2": "starboard channel id",
      "name": "Store Channel Info"
    },
    {
      "info": "0",
      "find": "${tempVars(\"starboard channel id\")}",
      "storage": "2",
      "varName": "starboard channel",
      "name": "Find Channel"
    },
    {
      "channel": "0",
      "varName": "",
      "message": "great, what should the reaction be. (react to this message)",
      "storage": "1",
      "varName2": "mess",
      "iffalse": "0",
      "iffalseVal": "",
      "name": "Send Message"
    },
    {
      "storage": "1",
      "varName": "mess",
      "filter": "user.id === '${tempVars(\"auth id\")}'",
      "max": "1",
      "time": "30000",
      "maxEmojis": "1",
      "maxUsers": "",
      "iftrue": "0",
      "iftrueVal": "",
      "iffalse": "1",
      "iffalseVal": "",
      "storage2": "1",
      "varName2": "reaction",
      "name": "Await Reaction Call Action"
    },
    {
      "list": "7",
      "varName": "reaction",
      "getType": "0",
      "position": "",
      "storage": "1",
      "varName2": "starboard reaction 1",
      "name": "Get Item from List"
    },
    {
      "reaction": "1",
      "varName": "starboard reaction 1",
      "info": "3",
      "storage": "2",
      "varName2": "starboard emoji name",
      "name": "Store Reaction Info"
    },
    {
      "channel": "0",
      "varName": "",
      "message": "starboard has been setup :)",
      "storage": "0",
      "varName2": "",
      "iffalse": "0",
      "iffalseVal": "",
      "name": "Send Message"
    }
  ]
}

{
  "openapi": "3.0.0",
  "info": {
    "title": "ACNH API",
    "version": "v1",
    "description": "A free Animal Crossing: New Horizons API for critters, furniture, villagers and more!\n\nContact me on Discord: Alexis#8717\n\nThe data can be obtained as an object array instead of a nested JSON by doing requests on https://acnhapi.com/v1a/ instead of https://acnhapi.com/v1/ <!-- ReDoc-Inject: <security-definitions> -->\n\n# Authentication\n\n<!-- ReDoc-Inject: <security-definitions> -->"
  },
  "servers": [
    {
      "url": "http://acnhapi.com"
    },
    {
      "url": "https://acnhapi.com"
    }
  ],
  "paths": {
    "/v1/fish/{fishID}": {
      "parameters": [
        {
          "schema": {
            "type": "string"
          },
          "name": "fishID",
          "in": "path",
          "description": "Either the file-name of a fish or it's ID.",
          "required": true
        }
      ],
      "get": {
        "summary": "Fish",
        "tags": [
          "Fish"
        ],
        "responses": {
          "200": {
            "description": "OK",
            "content": {
              "application/json": {
                "schema": {
                  "type": "object",
                  "properties": {
                    "id": {
                      "type": "integer",
                      "description": "Number of the fish (as found in the critterpedia)."
                    },
                    "file-name": {
                      "type": "string",
                      "description": "Name of the image files."
                    },
                    "name": {
                      "type": "object",
                      "description": "Name of the fish in different languages.",
                      "required": [
                        "name-USen",
                        "name-CNzh",
                        "name-EUde",
                        "name-EUes",
                        "name-EUfr",
                        "name-EUit",
                        "name-JPja",
                        "name-KRko",
                        "name-EUnl",
                        "name-EUru",
                        "name-EUen",
                        "name-USes",
                        "name-USfr",
                        "name-TWzh"
                      ],
                      "properties": {
                        "name-USen": {
                          "type": "string",
                          "description": "English"
                        },
                        "name-CNzh": {
                          "type": "string",
                          "description": "Simplified Chinese"
                        },
                        "name-EUde": {
                          "type": "string",
                          "description": "German"
                        },
                        "name-EUes": {
                          "type": "string",
                          "description": "Spanish"
                        },
                        "name-EUfr": {
                          "type": "string",
                          "description": "French"
                        },
                        "name-EUit": {
                          "type": "string",
                          "description": "Italian"
                        },
                        "name-JPja": {
                          "type": "string",
                          "description": "Japanese"
                        },
                        "name-KRko": {
                          "type": "string",
                          "description": "Korean"
                        },
                        "name-EUnl": {
                          "type": "string",
                          "description": "Dutch"
                        },
                        "name-EUru": {
                          "type": "string",
                          "description": "Russian"
                        },
                        "name-EUen": {
                          "type": "string",
                          "description": "Non US English"
                        },
                        "name-USes": {
                          "type": "string",
                          "description": "Latin American Spanish"
                        },
                        "name-USfr": {
                          "type": "string",
                          "description": "Canadian French"
                        },
                        "name-TWzh": {
                          "type": "string",
                          "description": "Traditional Chinese"
                        }
                      }
                    },
                    "availability": {
                      "type": "object",
                      "description": "When and where to find the fish.",
                      "required": [
                        "isAllDay",
                        "isAllYear",
                        "location",
                        "rarity"
                      ],
                      "properties": {
                        "month-northern": {
                          "type": "string",
                          "description": "Month for the Northern hemisphere, empty if isAllYear is true."
                        },
                        "month-southern": {
                          "type": "string",
                          "description": "Month for the Southern hemisphere, empty if isAllYear is true."
                        },
                        "time": {
                          "type": "string",
                          "description": "Time of availability, empty is isAllDay is true."
                        },
                        "isAllDay": {
                          "type": "boolean",
                          "description": "Is the fish available at any hour?"
                        },
                        "isAllYear": {
                          "type": "boolean",
                          "description": "Is the fish available at any day?"
                        },
                        "location": {
                          "type": "string",
                          "description": "Location of the fish."
                        },
                        "rarity": {
                          "type": "string",
                          "description": "Rarity of the fish."
                        },
                        "month-array-northern": {
                          "type": "array",
                          "description": "Array containing the month when the critter is available in the Northern Hemisphere.",
                          "items": {
                            "type": "number"
                          }
                        },
                        "month-array-southern": {
                          "type": "array",
                          "description": "Array containing the month when the critter is available in the Southern Hemisphere.",
                          "items": {
                            "type": "number"
                          }
                        },
                        "time-array": {
                          "type": "array",
                          "description": "Array containing the hours when the critter is available during the day (24h format).",
                          "items": {
                            "type": "number"
                          }
                        }
                      }
                    },
                    "shadow": {
                      "type": "string",
                      "description": "Size and/or shape of the shadow."
                    },
                    "price": {
                      "type": "number",
                      "description": "Selling price."
                    },
                    "price-cj": {
                      "type": "number",
                      "description": "Selling price from C.J."
                    },
                    "catch-phrase": {
                      "type": "string",
                      "description": "Phrase (or often pun) when the fish is caught."
                    },
                    "museum-phrase": {
                      "type": "string",
                      "description": "Description from Blathers."
                    },
                    "alt-catch-phrase": {
                      "type": "array",
                      "description": "Alternate catch phrases, when available.",
                      "items": {
                        "type": "string"
                      }
                    },
                    "icon_uri": {
                      "type": "string",
                      "description": "URI for icon"
                    },
                    "image_uri": {
                      "type": "string",
                      "description": "URI for image"
                    }
                  },
                  "required": [
                    "id",
                    "file-name",
                    "name",
                    "availability",
                    "shadow",
                    "price",
                    "price-cj",
                    "catch-phrase",
                    "museum-phrase",
                    "icon_uri",
                    "image_uri"
                  ]
                },
                "examples": {
                  "/v1/fish/1": {
                    "value": {
                      "id": 1,
                      "file-name": "bitterling",
                      "name": {
                        "name-USen": "bitterling",
                        "name-EUen": "bitterling",
                        "name-EUde": "Bitterling",
                        "name-EUes": "amarguillo",
                        "name-USes": "amarguillo",
                        "name-EUfr": "bouvière",
                        "name-USfr": "bouvière",
                        "name-EUit": "rodeo",
                        "name-EUnl": "bittervoorn",
                        "name-CNzh": "红目鲫",
                        "name-TWzh": "紅目鯽",
                        "name-JPja": "タナゴ",
                        "name-KRko": "납줄개",
                        "name-EUru": "горчак"
                      },
                      "availability": {
                        "month-northern": "11-3",
                        "month-southern": "5-9",
                        "time": "",
                        "isAllDay": true,
                        "isAllYear": false,
                        "location": "River",
                        "rarity": "Common",
                        "month-array-northern": [
                          11,
                          12,
                          1,
                          2,
                          3
                        ],
                        "month-array-southern": [
                          5,
                          6,
                          7,
                          8,
                          9
                        ],
                        "time-array": [
                          0,
                          1,
                          2,
                          3,
                          4,
                          5,
                          6,
                          7,
                          8,
                          9,
                          10,
                          11,
                          12,
                          13,
                          14,
                          15,
                          16,
                          17,
                          18,
                          19,
                          20,
                          21,
                          22,
                          23
                        ]
                      },
                      "shadow": "Smallest (1)",
                      "price": 900,
                      "price-cj": 1350,
                      "catch-phrase": "I caught a bitterling! It's mad at me, but only a little.",
                      "museum-phrase": "Bitterlings hide their eggs inside large bivalves—like clams—where the young can stay safe until grown. The bitterling isn't being sneaky. No, their young help keep the bivalve healthy by eating invading parasites! It's a wonderful bit of evolutionary deal making, don't you think? Each one keeping the other safe... Though eating parasites does not sound like a happy childhood... Is that why the fish is so bitter?",
                      "image_uri": "https://acnhapi.com/v1/images/fish/1",
                      "icon_uri": "https://acnhapi.com/v1/icons/fish/1"
                    }
                  }
                }
              }
            }
          },
          "404": {
            "description": "Not Found"
          }
        },
        "operationId": "get-fish-fishID",
        "description": "Get fish data in JSON format. \n\nThe {fishID} parameter is optional and can be removed to get all the fish data."
      }
    },
    "/v1/sea/{seaID}": {
      "parameters": [
        {
          "schema": {
            "type": "string"
          },
          "name": "seaID",
          "in": "path",
          "description": "Either the file-name of a sea creature or it's ID.",
          "required": true
        }
      ],
      "get": {
        "summary": "Sea Creatures",
        "tags": [
          "Sea Creatures"
        ],
        "responses": {
          "200": {
            "description": "OK",
            "content": {
              "application/json": {
                "schema": {
                  "type": "object",
                  "properties": {
                    "id": {
                      "type": "integer",
                      "description": "Number of the sea creature (as found in the critterpedia)."
                    },
                    "file-name": {
                      "type": "string",
                      "description": "Name of the image files."
                    },
                    "name": {
                      "type": "object",
                      "description": "Name of the sea creature in different languages.",
                      "required": [
                        "name-USen",
                        "name-CNzh",
                        "name-EUde",
                        "name-EUes",
                        "name-EUfr",
                        "name-EUit",
                        "name-JPja",
                        "name-KRko",
                        "name-EUnl",
                        "name-EUru",
                        "name-EUen",
                        "name-USes",
                        "name-USfr",
                        "name-TWzh"
                      ],
                      "properties": {
                        "name-USen": {
                          "type": "string",
                          "description": "English"
                        },
                        "name-CNzh": {
                          "type": "string",
                          "description": "Simplified Chinese"
                        },
                        "name-EUde": {
                          "type": "string",
                          "description": "German"
                        },
                        "name-EUes": {
                          "type": "string",
                          "description": "Spanish"
                        },
                        "name-EUfr": {
                          "type": "string",
                          "description": "French"
                        },
                        "name-EUit": {
                          "type": "string",
                          "description": "Italian"
                        },
                        "name-JPja": {
                          "type": "string",
                          "description": "Japanese"
                        },
                        "name-KRko": {
                          "type": "string",
                          "description": "Korean"
                        },
                        "name-EUnl": {
                          "type": "string",
                          "description": "Dutch"
                        },
                        "name-EUru": {
                          "type": "string",
                          "description": "Russian"
                        },
                        "name-EUen": {
                          "type": "string",
                          "description": "Non US English"
                        },
                        "name-USes": {
                          "type": "string",
                          "description": "Latin American Spanish"
                        },
                        "name-USfr": {
                          "type": "string",
                          "description": "Canadian French"
                        },
                        "name-TWzh": {
                          "type": "string",
                          "description": "Traditional Chinese"
                        }
                      }
                    },
                    "availability": {
                      "type": "object",
                      "description": "When to find the sea creature.",
                      "required": [
                        "isAllDay",
                        "isAllYear",
                        "location",
                        "rarity"
                      ],
                      "properties": {
                        "month-northern": {
                          "type": "string",
                          "description": "Month for the Northern hemisphere, empty if isAllYear is true."
                        },
                        "month-southern": {
                          "type": "string",
                          "description": "Month for the Southern hemisphere, empty if isAllYear is true."
                        },
                        "time": {
                          "type": "string",
                          "description": "Time of availability, empty is isAllDay is true."
                        },
                        "isAllDay": {
                          "type": "boolean",
                          "description": "Is the sea creature available at any hour?"
                        },
                        "isAllYear": {
                          "type": "boolean",
                          "description": "Is the sea creature available at any day?"
                        },
                        "month-array-northern": {
                          "type": "array",
                          "description": "Array containing the month when the critter is available in the Northern Hemisphere.",
                          "items": {
                            "type": "number"
                          }
                        },
                        "month-array-southern": {
                          "type": "array",
                          "description": "Array containing the month when the critter is available in the Southern Hemisphere.",
                          "items": {
                            "type": "number"
                          }
                        },
                        "time-array": {
                          "type": "array",
                          "description": "Array containing the hours when the critter is available during the day (24h format).",
                          "items": {
                            "type": "number"
                          }
                        }
                      }
                    },
                    "speed": {
                      "type": "string",
                      "description": "Speed of the sea creature"
                    },
                    "shadow": {
                      "type": "string",
                      "description": "Size of the shadow."
                    },
                    "price": {
                      "type": "number",
                      "description": "Selling price."
                    },
                    "catch-phrase": {
                      "type": "string",
                      "description": "Catch phrase of the sea creature"
                    },
                    "icon_uri": {
                      "type": "string",
                      "description": "URI for icon"
                    },
                    "image_uri": {
                      "type": "string",
                      "description": "URI for image"
                    },
                    "museum-phrase": {
                      "type": "string",
                      "description": "Facts from Blathers"
                    }
                  },
                  "required": [
                    "id",
                    "file-name",
                    "name",
                    "availability",
                    "speed",
                    "shadow",
                    "price",
                    "catch-phrase",
                    "icon_uri",
                    "image_uri",
                    "museum-phrase"
                  ]
                },
                "examples": {
                  "/v1/sea/1": {
                    "value": {
                      "id": 1,
                      "file-name": "seaweed",
                      "name": {
                        "name-USen": "seaweed",
                        "name-EUen": "seaweed",
                        "name-EUnl": "zeewier",
                        "name-EUde": "Wakame-Alge",
                        "name-EUes": "alga wakame",
                        "name-USes": "alga wakame",
                        "name-EUfr": "wakame",
                        "name-USfr": "wakamé",
                        "name-EUit": "alga wakame",
                        "name-CNzh": "裙带菜",
                        "name-TWzh": "裙帶菜",
                        "name-JPja": "ワカメ",
                        "name-KRko": "미역",
                        "name-EUru": "морские водоросли"
                      },
                      "availability": {
                        "month-northern": "10-7",
                        "month-southern": "4-1",
                        "time": "",
                        "isAllDay": true,
                        "isAllYear": false,
                        "month-array-northern": [
                          10,
                          11,
                          12,
                          1,
                          2,
                          3,
                          4,
                          5,
                          6,
                          7
                        ],
                        "month-array-southern": [
                          4,
                          5,
                          6,
                          7,
                          8,
                          9,
                          10,
                          11,
                          12,
                          1
                        ],
                        "time-array": [
                          0,
                          1,
                          2,
                          3,
                          4,
                          5,
                          6,
                          7,
                          8,
                          9,
                          10,
                          11,
                          12,
                          13,
                          14,
                          15,
                          16,
                          17,
                          18,
                          19,
                          20,
                          21,
                          22,
                          23
                        ]
                      },
                      "speed": "Stationary",
                      "shadow": "Large",
                      "price": 600,
                      "catch-phrase": "I got some seaweed! I couldn't kelp myself.",
                      "image_uri": "https://acnhapi.com/v1/images/sea/1",
                      "icon_uri": "https://acnhapi.com/v1/icons/sea/1",
                      "museum-phrase": "Let it be known that seaweed is a misnomer of the highest order! That is, it is not a noxious weed so much as it is a marine algae most beneficial to life on land and sea. Seaweed, you see, provides essential habitat and food for all manner of marine creatures. And it creates a great deal of the oxygen we land lovers love to breath too, hoo! And yet, I can't help but shudder when the slimy stuff touches my toes during a swim. Hoot! The horror!"
                    }
                  }
                }
              }
            }
          },
          "404": {
            "description": "Not Found"
          }
        },
        "operationId": "get-sea-seaID",
        "description": "Get sea creature data in JSON format. \n\nThe {seaID} parameter is optional and can be removed to get all the sea creature data."
      }
    },
    "/v1/bugs/{bugID}": {
      "parameters": [
        {
          "schema": {
            "type": "string"
          },
          "name": "bugID",
          "in": "path",
          "description": "Either the file-name of a bug or it's ID.",
          "required": true
        }
      ],
      "get": {
        "summary": "Bugs",
        "responses": {
          "200": {
            "description": "OK",
            "content": {
              "application/json": {
                "schema": {
                  "type": "object",
                  "properties": {
                    "id": {
                      "type": "number"
                    },
                    "file-name": {
                      "type": "string"
                    },
                    "name": {
                      "type": "object",
                      "description": "Name of the bug in different languages.",
                      "required": [
                        "name-USen",
                        "name-CNzh",
                        "name-EUde",
                        "name-EUes",
                        "name-EUfr",
                        "name-EUit",
                        "name-JPja",
                        "name-KRko",
                        "name-EUnl",
                        "name-EUru",
                        "name-EUen",
                        "name-USes",
                        "name-USfr",
                        "name-TWzh"
                      ],
                      "properties": {
                        "name-USen": {
                          "type": "string",
                          "description": "English"
                        },
                        "name-CNzh": {
                          "type": "string",
                          "description": "Simplified Chinese"
                        },
                        "name-EUde": {
                          "type": "string",
                          "description": "German"
                        },
                        "name-EUes": {
                          "type": "string",
                          "description": "Spanish"
                        },
                        "name-EUfr": {
                          "type": "string",
                          "description": "French"
                        },
                        "name-EUit": {
                          "type": "string",
                          "description": "Italian"
                        },
                        "name-JPja": {
                          "type": "string",
                          "description": "Japanese"
                        },
                        "name-KRko": {
                          "type": "string",
                          "description": "Korean"
                        },
                        "name-EUnl": {
                          "type": "string",
                          "description": "Dutch"
                        },
                        "name-EUru": {
                          "type": "string",
                          "description": "Russian"
                        },
                        "name-EUen": {
                          "type": "string",
                          "description": "Non US English"
                        },
                        "name-USes": {
                          "type": "string",
                          "description": "Latin American Spanish"
                        },
                        "name-USfr": {
                          "type": "string",
                          "description": "Canadian French"
                        },
                        "name-TWzh": {
                          "type": "string",
                          "description": "Traditional Chinese"
                        }
                      }
                    },
                    "availability": {
                      "type": "object",
                      "description": "When and where to find the bug.",
                      "required": [
                        "isAllDay",
                        "isAllYear",
                        "location",
                        "rarity"
                      ],
                      "properties": {
                        "month-northern": {
                          "type": "string",
                          "description": "Month for the Northern hemisphere, empty if isAllYear is true."
                        },
                        "month-southern": {
                          "type": "string",
                          "description": "Month for the Southern hemisphere, empty if isAllYear is true."
                        },
                        "time": {
                          "type": "string",
                          "description": "Time of availability, empty is isAllDay is true."
                        },
                        "isAllDay": {
                          "type": "boolean",
                          "description": "Is the bug available at any hour?"
                        },
                        "isAllYear": {
                          "type": "boolean",
                          "description": "Is the bug available at any day?"
                        },
                        "location": {
                          "type": "string",
                          "description": "Location of the bug."
                        },
                        "rarity": {
                          "type": "string",
                          "description": "Rarity of the bug."
                        },
                        "month-array-northern": {
                          "type": "array",
                          "description": "Array containing the month when the critter is available in the Northern Hemisphere.",
                          "items": {
                            "type": "number"
                          }
                        },
                        "month-array-southern": {
                          "type": "array",
                          "description": "Array containing the month when the critter is available in the Southern Hemisphere.",
                          "items": {
                            "type": "number"
                          }
                        },
                        "time-array": {
                          "type": "array",
                          "description": "Array containing the hours when the critter is available during the day (24h format).",
                          "items": {
                            "type": "number"
                          }
                        }
                      }
                    },
                    "price": {
                      "type": "string",
                      "description": "Selling price."
                    },
                    "price-flick": {
                      "type": "string",
                      "description": "Selling price from Flick."
                    },
                    "catch-phrase": {
                      "type": "string",
                      "description": "Phrase (or often pun) when the bug is caught."
                    },
                    "museum-phrase": {
                      "type": "string",
                      "description": "Description from Blathers."
                    },
                    "alt-catch-phrase": {
                      "type": "array",
                      "description": "Alternate catch phrases, when available.",
                      "items": {
                        "type": "string"
                      }
                    },
                    "icon_uri": {
                      "type": "string",
                      "description": "URI for icon"
                    },
                    "image_uri": {
                      "type": "string",
                      "description": "URI for image"
                    }
                  },
                  "required": [
                    "id",
                    "file-name",
                    "name",
                    "availability",
                    "price",
                    "price-flick",
                    "catch-phrase",
                    "museum-phrase",
                    "icon_uri",
                    "image_uri"
                  ]
                },
                "examples": {
                  "/v1/bugs/1": {
                    "value": {
                      "id": 1,
                      "file-name": "common_butterfly",
                      "name": {
                        "name-USen": "common butterfly",
                        "name-EUen": "common butterfly",
                        "name-EUde": "Kohlweißling",
                        "name-EUes": "mariposa común",
                        "name-USes": "mariposa común",
                        "name-EUfr": "piéride de la rave",
                        "name-USfr": "piéride de la rave",
                        "name-EUit": "farfalla comune",
                        "name-EUnl": "koolwitje",
                        "name-CNzh": "白粉蝶",
                        "name-TWzh": "白粉蝶",
                        "name-JPja": "モンシロチョウ",
                        "name-KRko": "배추흰나비",
                        "name-EUru": "белянка"
                      },
                      "availability": {
                        "month-northern": "9-6",
                        "month-southern": "3-12",
                        "time": "4am - 7pm",
                        "isAllDay": false,
                        "isAllYear": false,
                        "location": "Flying",
                        "rarity": "Common",
                        "month-array-northern": [
                          9,
                          10,
                          11,
                          12,
                          1,
                          2,
                          3,
                          4,
                          5,
                          6
                        ],
                        "month-array-southern": [
                          3,
                          4,
                          5,
                          6,
                          7,
                          8,
                          9,
                          10,
                          11,
                          12
                        ],
                        "time-array": [
                          4,
                          5,
                          6,
                          7,
                          8,
                          9,
                          10,
                          11,
                          12,
                          13,
                          14,
                          15,
                          16,
                          17,
                          18
                        ]
                      },
                      "price": 160,
                      "price-flick": 240,
                      "catch-phrase": "I caught a common butterfly! They often flutter by!",
                      "museum-phrase": "The common butterfly would have you believe it is but a beautiful friend flitting prettily about the flowers. Bah, I say! They may seem innocent things with their pretty white wings, but they hide a dark side! The common butterfly caterpillar is called a cabbage worm, you see, and it's a most voracious pest. The ravenous beasts chew through cabbage, broccoli, kale and the like with a devastating gusto. And my feathers! Their green coloring is truly GROSS! A hoo-rrific hue, I say.",
                      "image_uri": "https://acnhapi.com/v1/images/bugs/1",
                      "icon_uri": "https://acnhapi.com/v1/icons/bugs/1"
                    }
                  }
                }
              }
            }
          },
          "404": {
            "description": "Not Found"
          }
        },
        "operationId": "get-bugs-bugID",
        "description": "Get bugs data in JSON format. \n\nThe {bugID} parameter is optional and can be removed to get all the bugs data.",
        "tags": [
          "Bugs"
        ]
      }
    },
    "/v1/fossils/{fossilName}": {
      "parameters": [
        {
          "schema": {
            "type": "string"
          },
          "name": "fossilName",
          "in": "path",
          "description": "The file-name of a fossil.",
          "required": true
        }
      ],
      "get": {
        "summary": "Fossils",
        "responses": {
          "200": {
            "description": "OK",
            "content": {
              "application/json": {
                "schema": {
                  "type": "object",
                  "properties": {
                    "file-name": {
                      "type": "string",
                      "description": "Name of the image files."
                    },
                    "name": {
                      "type": "object",
                      "description": "Name of the fossil in different languages.",
                      "required": [
                        "name-USen",
                        "name-CNzh",
                        "name-EUde",
                        "name-EUes",
                        "name-EUfr",
                        "name-EUit",
                        "name-JPja",
                        "name-KRko",
                        "name-EUnl",
                        "name-EUru",
                        "name-EUen",
                        "name-USes",
                        "name-USfr",
                        "name-TWzh"
                      ],
                      "properties": {
                        "name-USen": {
                          "type": "string",
                          "description": "English"
                        },
                        "name-CNzh": {
                          "type": "string",
                          "description": "Simplified Chinese"
                        },
                        "name-EUde": {
                          "type": "string",
                          "description": "German"
                        },
                        "name-EUes": {
                          "type": "string",
                          "description": "Spanish"
                        },
                        "name-EUfr": {
                          "type": "string",
                          "description": "French"
                        },
                        "name-EUit": {
                          "type": "string",
                          "description": "Italian"
                        },
                        "name-JPja": {
                          "type": "string",
                          "description": "Japanese"
                        },
                        "name-KRko": {
                          "type": "string",
                          "description": "Korean"
                        },
                        "name-EUnl": {
                          "type": "string",
                          "description": "Dutch"
                        },
                        "name-EUru": {
                          "type": "string",
                          "description": "Russian"
                        },
                        "name-EUen": {
                          "type": "string",
                          "description": "Non American English"
                        },
                        "name-USes": {
                          "type": "string",
                          "description": "Latin American Spanish"
                        },
                        "name-USfr": {
                          "type": "string",
                          "description": "Canadian French"
                        },
                        "name-TWzh": {
                          "type": "string",
                          "description": "Traditional Chinese"
                        }
                      }
                    },
                    "price": {
                      "type": "number",
                      "description": "Selling price."
                    },
                    "museum-phrase": {
                      "type": "string",
                      "description": "Description from Blathers."
                    },
                    "image_uri": {
                      "type": "string",
                      "description": "URI for icon"
                    }
                  },
                  "required": [
                    "file-name",
                    "name",
                    "price",
                    "museum-phrase",
                    "image_uri"
                  ]
                },
                "examples": {
                  "/v1/fossils/amber": {
                    "value": {
                      "file-name": "amber",
                      "name": {
                        "name-USen": "amber",
                        "name-EUen": "amber",
                        "name-EUde": "Bernstein",
                        "name-EUes": "ámbar",
                        "name-USes": "ámbar",
                        "name-EUfr": "ambre",
                        "name-USfr": "ambre",
                        "name-EUit": "ambra",
                        "name-EUnl": "barnsteen",
                        "name-CNzh": "琥珀",
                        "name-TWzh": "琥珀",
                        "name-JPja": "コハク",
                        "name-KRko": "호박",
                        "name-EUru": "янтарь"
                      },
                      "price": 1200,
                      "museum-phrase": "Amber is formed from the sap of ancient trees that hardened over time. Because of its beauty, it has often been traded and used as jewelry throughout history. However, individual specimens may contain ancient plants or insects trapped inside them! These are valuable resources for learning about ancient eras, such as when the dinosaurs roamed... And this is why they are sometimes displayed in certain...ahem... exceptional museums! Like mine.",
                      "image_uri": "https://acnhapi.com/v1/images/fossils/amber"
                    }
                  }
                }
              }
            }
          },
          "404": {
            "description": "Not Found"
          }
        },
        "operationId": "get-fossils-fossilName",
        "description": "Get fossil data in JSON format. \n\nThe {fossilName} parameter is optional and can be removed to get all the fossils data.",
        "tags": [
          "Fossils"
        ]
      }
    },
    "/v1/villagers/{villagerID}": {
      "parameters": [
        {
          "schema": {
            "type": "string"
          },
          "name": "villagerID",
          "in": "path",
          "description": "Either the file-name of a villager or it's ID.",
          "required": true
        }
      ],
      "get": {
        "summary": "Villagers",
        "responses": {
          "200": {
            "description": "OK",
            "content": {
              "application/json": {
                "schema": {
                  "type": "object",
                  "properties": {
                    "id": {
                      "type": "number",
                      "description": "ID of the villager."
                    },
                    "file-name": {
                      "type": "string",
                      "description": "Name of the image files."
                    },
                    "name": {
                      "type": "object",
                      "description": "Name of the villager in different languages.",
                      "required": [
                        "name-USen",
                        "name-CNzh",
                        "name-EUde",
                        "name-EUes",
                        "name-EUfr",
                        "name-EUit",
                        "name-JPja",
                        "name-KRko",
                        "name-EUnl",
                        "name-EUru",
                        "name-EUen",
                        "name-USes",
                        "name-USfr",
                        "name-TWzh"
                      ],
                      "properties": {
                        "name-USen": {
                          "type": "string",
                          "description": "English"
                        },
                        "name-CNzh": {
                          "type": "string",
                          "description": "Simplified Chinese"
                        },
                        "name-EUde": {
                          "type": "string",
                          "description": "German"
                        },
                        "name-EUes": {
                          "type": "string",
                          "description": "Spanish"
                        },
                        "name-EUfr": {
                          "type": "string",
                          "description": "French"
                        },
                        "name-EUit": {
                          "type": "string",
                          "description": "Italian"
                        },
                        "name-JPja": {
                          "type": "string",
                          "description": "Japanese"
                        },
                        "name-KRko": {
                          "type": "string",
                          "description": "Korean"
                        },
                        "name-EUnl": {
                          "type": "string",
                          "description": "Dutch"
                        },
                        "name-EUru": {
                          "type": "string",
                          "description": "Russian"
                        },
                        "name-EUen": {
                          "type": "string",
                          "description": "Non American English"
                        },
                        "name-USes": {
                          "type": "string",
                          "description": "Latin American Spanish"
                        },
                        "name-USfr": {
                          "type": "string",
                          "description": "Canadian French"
                        },
                        "name-TWzh": {
                          "type": "string",
                          "description": "Traditional Chinese"
                        }
                      }
                    },
                    "personality": {
                      "type": "string",
                      "description": "The personality of the villager."
                    },
                    "birthday": {
                      "type": "string",
                      "description": "Birthday of the villager in Day/Month format."
                    },
                    "species": {
                      "type": "string",
                      "description": "Species of the villager."
                    },
                    "gender": {
                      "type": "string",
                      "description": "Gender of the villager, either \"Male\" or \"Female\"."
                    },
                    "catch-phrase": {
                      "type": "string",
                      "description": "The catch phrase of a villager."
                    },
                    "birthday-string": {
                      "type": "string",
                      "description": "String of the birthday (Day/Month format)."
                    },
                    "icon_uri": {
                      "type": "string",
                      "description": "URI for icon"
                    },
                    "image_uri": {
                      "type": "string",
                      "description": "URI for image"
                    }
                  },
                  "required": [
                    "id",
                    "file-name",
                    "name",
                    "personality",
                    "birthday",
                    "species",
                    "gender",
                    "catch-phrase",
                    "birthday-string",
                    "icon_uri",
                    "image_uri"
                  ]
                },
                "examples": {
                  "/v1/villagers/1": {
                    "value": {
                      "id": 1,
                      "file-name": "ant00",
                      "name": {
                        "name-USen": "Cyrano",
                        "name-EUen": "Cyrano",
                        "name-EUde": "Theo",
                        "name-EUes": "Cirano",
                        "name-USes": "Cirano",
                        "name-EUfr": "Cyrano",
                        "name-USfr": "Cyrano",
                        "name-EUit": "Cirano",
                        "name-EUnl": "Cyrano",
                        "name-CNzh": "阳明",
                        "name-TWzh": "陽明",
                        "name-JPja": "さくらじま",
                        "name-KRko": "사지마",
                        "name-EUru": "Сирано"
                      },
                      "personality": "Cranky",
                      "birthday-string": "March 9th",
                      "birthday": "9/3",
                      "species": "Anteater",
                      "gender": "Male",
                      "catch-phrase": "ah-CHOO",
                      "icon_uri": "https://acnhapi.com/v1/icons/villagers/1",
                      "image_uri": "https://acnhapi.com/v1/images/villagers/1"
                    }
                  }
                }
              }
            }
          },
          "404": {
            "description": "Not Found"
          }
        },
        "operationId": "get-villagers-villagerID",
        "description": "Get villager data in JSON format. \n\nThe {villagerID} parameter is optional and can be removed to get all the villagers data.",
        "tags": [
          "Villagers"
        ]
      }
    },
    "/v1/icons/fish/{fishID}": {
      "parameters": [
        {
          "schema": {
            "type": "string"
          },
          "name": "fishID",
          "in": "path",
          "required": true,
          "description": "Either the file-name of a fish or it's ID."
        }
      ],
      "get": {
        "summary": "Fish icons",
        "responses": {
          "200": {
            "description": "OK"
          },
          "404": {
            "description": "Not Found"
          }
        },
        "operationId": "get-icons-fish-fishID",
        "description": "Get fish icons in PNG format. \n\nThe {fishID} parameter can be found using the /v1/fish/ endpoint.",
        "tags": [
          "Icons"
        ]
      }
    },
    "/v1/icons/bugs/{bugID}": {
      "parameters": [
        {
          "schema": {
            "type": "string"
          },
          "name": "bugID",
          "in": "path",
          "required": true,
          "description": "Either the file-name of a bug or it's ID."
        }
      ],
      "get": {
        "summary": "Bugs icons",
        "responses": {
          "200": {
            "description": "OK"
          },
          "404": {
            "description": "Not Found"
          }
        },
        "operationId": "get-icons-bugs-bugsID",
        "description": "Get bugs icons in PNG format. \n\nThe {bugID} parameter can be found using the /v1/bugs/ endpoint.",
        "tags": [
          "Icons"
        ]
      }
    },
    "/v1/icons/villagers/{villagerID}": {
      "parameters": [
        {
          "schema": {
            "type": "string"
          },
          "name": "villagerID",
          "in": "path",
          "required": true,
          "description": "Either the file-name of a villager or it's ID."
        }
      ],
      "get": {
        "summary": "Villager icons",
        "responses": {
          "200": {
            "description": "OK"
          },
          "404": {
            "description": "Not Found"
          }
        },
        "operationId": "get-icons-villagers-villagerID",
        "description": "Get villager icons in PNG format. \n\nThe {villagerID} parameter can be found using the /v1/villagers/ endpoint.",
        "tags": [
          "Icons"
        ]
      }
    },
    "/v1/images/fish/{fishID}": {
      "parameters": [
        {
          "schema": {
            "type": "string"
          },
          "name": "fishID",
          "in": "path",
          "required": true,
          "description": "Either the file-name of a fish or it's ID."
        }
      ],
      "get": {
        "summary": "Fish images",
        "responses": {
          "200": {
            "description": "OK"
          },
          "404": {
            "description": "Not Found"
          }
        },
        "operationId": "get-images-fish-fishID",
        "description": "Get fish images in PNG format. \n\nThe {fishID} parameter can be found using the /v1/fish/ endpoint.",
        "tags": [
          "Images"
        ]
      }
    },
    "/v1/images/bugs/{bugID}": {
      "parameters": [
        {
          "schema": {
            "type": "string"
          },
          "name": "bugID",
          "in": "path",
          "required": true,
          "description": "Either the file-name of a bug or it's ID."
        }
      ],
      "get": {
        "summary": "Bugs images",
        "responses": {
          "200": {
            "description": "OK"
          },
          "404": {
            "description": "Not Found"
          }
        },
        "operationId": "get-images-bugs-bugID",
        "description": "Get bugs images in PNG format. \n\nThe {bugID} parameter can be found using the /v1/bugs/ endpoint.",
        "tags": [
          "Images"
        ]
      }
    },
    "/v1/images/villagers/{villagerID}": {
      "parameters": [
        {
          "schema": {
            "type": "string"
          },
          "name": "villagerID",
          "in": "path",
          "required": true,
          "description": "Either the file-name of a villager or it's ID."
        }
      ],
      "get": {
        "summary": "Villager images",
        "tags": [
          "Images"
        ],
        "responses": {
          "200": {
            "description": "OK"
          },
          "404": {
            "description": "Not Found"
          }
        },
        "operationId": "get-images-villagers-villagerID",
        "description": "Get villager images in PNG format. \n\nThe {villagerID} parameter can be found using the /v1/villagers/ endpoint."
      }
    },
    "/v1/images/fossils/{fossilName}": {
      "parameters": [
        {
          "schema": {
            "type": "string"
          },
          "name": "fossilName",
          "in": "path",
          "required": true,
          "description": "The file-name of a fossil."
        }
      ],
      "get": {
        "summary": "Fossils images",
        "tags": [
          "Images"
        ],
        "responses": {
          "200": {
            "description": "OK"
          },
          "404": {
            "description": "Not Found"
          }
        },
        "operationId": "get-images-fossils-fossilName",
        "description": "Get fossil images in PNG format. \n\nThe {fossilName} parameter can be found using the /v1/fossils/ endpoint."
      }
    },
    "/v1/songs/{songID}": {
      "parameters": [
        {
          "schema": {
            "type": "string"
          },
          "name": "songID",
          "in": "path",
          "required": true
        }
      ],
      "get": {
        "summary": "Songs",
        "tags": [
          "Songs"
        ],
        "responses": {
          "200": {
            "description": "OK",
            "content": {
              "application/json": {
                "schema": {
                  "type": "object",
                  "properties": {
                    "id": {
                      "type": "boolean",
                      "description": "ID of the song."
                    },
                    "file-name": {
                      "type": "string",
                      "description": "String to access the MP3 and the song cover files."
                    },
                    "name": {
                      "type": "object",
                      "description": "Translations of the song.",
                      "required": [
                        "name-USen",
                        "name-CNzh",
                        "name-EUde",
                        "name-EUes",
                        "name-EUfr",
                        "name-EUit",
                        "name-JPja",
                        "name-KRko",
                        "name-EUnl",
                        "name-EUru",
                        "name-EUen",
                        "name-USes",
                        "name-USfr",
                        "name-TWzh"
                      ],
                      "properties": {
                        "name-USen": {
                          "type": "string",
                          "description": "English"
                        },
                        "name-CNzh": {
                          "type": "string",
                          "description": "Simplified Chinese"
                        },
                        "name-EUde": {
                          "type": "string",
                          "description": "German"
                        },
                        "name-EUes": {
                          "type": "string",
                          "description": "Spanish"
                        },
                        "name-EUfr": {
                          "type": "string",
                          "description": "French"
                        },
                        "name-EUit": {
                          "type": "string",
                          "description": "Italian"
                        },
                        "name-JPja": {
                          "type": "string",
                          "description": "Japanese"
                        },
                        "name-KRko": {
                          "type": "string",
                          "description": "Korean"
                        },
                        "name-EUnl": {
                          "type": "string",
                          "description": "Dutch"
                        },
                        "name-EUru": {
                          "type": "string",
                          "description": "Russian"
                        },
                        "name-EUen": {
                          "type": "string",
                          "description": "Non American English"
                        },
                        "name-USes": {
                          "type": "string",
                          "description": "Latin American Spanish"
                        },
                        "name-USfr": {
                          "type": "string",
                          "description": "Canadian French"
                        },
                        "name-TWzh": {
                          "type": "string",
                          "description": "Traditional Chinese"
                        }
                      }
                    },
                    "buy-price": {
                      "type": "number",
                      "nullable": true,
                      "description": "Price at which the song is sold, is null if the song can't be purchased"
                    },
                    "sell-price": {
                      "type": "number",
                      "description": "Selling price."
                    },
                    "isOrderable": {
                      "type": "boolean",
                      "description": "Can the song be ordered from the catalogue?"
                    },
                    "image_uri": {
                      "type": "string",
                      "description": "URI for image"
                    },
                    "music_uri": {
                      "type": "string",
                      "description": "URI for music"
                    }
                  },
                  "required": [
                    "id",
                    "file-name",
                    "name",
                    "buy-price",
                    "sell-price",
                    "isOrderable",
                    "image_uri",
                    "music_uri"
                  ]
                },
                "examples": {
                  "/v1/songs/1": {
                    "value": {
                      "id": 1,
                      "file-name": "mjk_Keiji",
                      "name": {
                        "name-USen": "Agent K.K.",
                        "name-EUen": "Agent K.K.",
                        "name-EUde": "Agent K.K.",
                        "name-EUes": "Agente Totakeke",
                        "name-USes": "Agente Totakeke",
                        "name-EUfr": "Agent Kéké",
                        "name-USfr": "Agent Kéké",
                        "name-EUit": "Agente K.K.",
                        "name-EUnl": "Agent K.K.",
                        "name-CNzh": "K.K.刑警",
                        "name-TWzh": "K.K.刑警",
                        "name-JPja": "けけけいじ",
                        "name-KRko": "K.K.형사",
                        "name-EUru": "Агент К. К."
                      },
                      "buy-price": 3200,
                      "sell-price": 800,
                      "isOrderable": true,
                      "music_uri": "https://acnhapi.com/v1/music/1",
                      "image_uri": "https://acnhapi.com/v1/images/songs/1"
                    }
                  }
                }
              }
            }
          },
          "404": {
            "description": "Not Found"
          }
        },
        "operationId": "get-songs-songID",
        "description": "Get K.K. songs data in JSON format. \n\nThe {songID} parameter is optional and can be removed to get all the songs data."
      }
    },
    "/v1/images/songs/{songID}": {
      "parameters": [
        {
          "schema": {
            "type": "string"
          },
          "name": "songID",
          "in": "path",
          "required": true
        }
      ],
      "get": {
        "responses": {
          "200": {
            "description": "OK"
          },
          "404": {
            "description": "Not Found"
          }
        },
        "summary": "Song images",
        "tags": [
          "Images"
        ],
        "operationId": "get-images-songs-songID",
        "description": "Get song cover images in PNG format. \n\nThe {songID} parameter can be found using the /v1/songs/ endpoint."
      }
    },
    "/v1/music/{songID}": {
      "parameters": [
        {
          "schema": {
            "type": "string"
          },
          "name": "songID",
          "in": "path",
          "required": true
        }
      ],
      "get": {
        "summary": "Music",
        "tags": [
          "Music"
        ],
        "responses": {
          "200": {
            "description": "OK"
          },
          "404": {
            "description": "Not Found"
          }
        },
        "operationId": "get-music-songID",
        "description": "Get K.K. songs data in MP3 format. \n\nThe {songID} parameter can be found using the /songs/ endpoint."
      }
    },
    "/v1/art/{artID}": {
      "parameters": [
        {
          "schema": {
            "type": "string"
          },
          "name": "artID",
          "in": "path",
          "required": true
        }
      ],
      "get": {
        "summary": "Art",
        "tags": [
          "Art"
        ],
        "responses": {
          "200": {
            "description": "OK",
            "content": {
              "application/json": {
                "schema": {
                  "type": "object",
                  "properties": {
                    "id": {
                      "type": "number"
                    },
                    "file-name": {
                      "type": "string"
                    },
                    "name": {
                      "type": "object",
                      "description": "Name of the art in different languages.",
                      "required": [
                        "name-en",
                        "name-eneu",
                        "name-de",
                        "name-sp",
                        "name-spus",
                        "name-fr",
                        "name-frus",
                        "name-it",
                        "name-nl",
                        "name-cn",
                        "name-tw",
                        "name-jp",
                        "name-kr",
                        "name-ru"
                      ],
                      "properties": {
                        "name-en": {
                          "type": "string",
                          "description": "English"
                        },
                        "name-eneu": {
                          "type": "string",
                          "description": "Non American English"
                        },
                        "name-de": {
                          "type": "string",
                          "description": "German"
                        },
                        "name-sp": {
                          "type": "string",
                          "description": "Spanish"
                        },
                        "name-spus": {
                          "type": "string",
                          "description": "Latin American Spanish"
                        },
                        "name-fr": {
                          "type": "string",
                          "description": "French"
                        },
                        "name-frus": {
                          "type": "string",
                          "description": "Canadian French"
                        },
                        "name-it": {
                          "type": "string",
                          "description": "Italian"
                        },
                        "name-nl": {
                          "type": "string",
                          "description": "Dutch"
                        },
                        "name-cn": {
                          "type": "string",
                          "description": "Simplified Chinese"
                        },
                        "name-tw": {
                          "type": "string",
                          "description": "Traditional Chinese"
                        },
                        "name-jp": {
                          "type": "string",
                          "description": "Japanese"
                        },
                        "name-kr": {
                          "type": "string",
                          "description": "Korean"
                        },
                        "name-ru": {
                          "type": "string",
                          "description": "Russian"
                        }
                      }
                    },
                    "hasFake": {
                      "type": "boolean",
                      "description": "Can the art be fake."
                    },
                    "buy-price": {
                      "type": "number",
                      "description": "Price at which Redd sells the art"
                    },
                    "sell-price": {
                      "type": "number",
                      "description": "Price it which the art will sell (if genuine)"
                    },
                    "image_uri": {
                      "type": "string",
                      "description": "URI for image"
                    },
                    "museum-desc": {
                      "type": "string",
                      "description": "Description inside the museum"
                    }
                  },
                  "required": [
                    "id",
                    "file-name",
                    "name",
                    "hasFake",
                    "buy-price",
                    "sell-price",
                    "image_uri",
                    "museum-desc"
                  ]
                },
                "examples": {
                  "/v1/art/1": {
                    "value": {
                      "id": 1,
                      "file-name": "academic_painting",
                      "name": {
                        "name-USen": "academic painting",
                        "name-EUen": "academic painting",
                        "name-EUde": "Wissenschaftsgemälde",
                        "name-EUes": "cuadro anatómico",
                        "name-USes": "cuadro anatómico",
                        "name-EUfr": "toile académique",
                        "name-USfr": "toile académique",
                        "name-EUit": "quadro accademico",
                        "name-EUnl": "academische schilderij",
                        "name-CNzh": "学术性的名画",
                        "name-TWzh": "學術性的名畫",
                        "name-JPja": "アカデミックなめいが",
                        "name-KRko": "아카데믹한 명화",
                        "name-EUru": "академическая картина"
                      },
                      "hasFake": true,
                      "buy-price": 4980,
                      "sell-price": 1245,
                      "image_uri": "https://acnhapi.com/v1/images/art/academic_painting",
                      "museum-desc": "This drawing is based on the \"ideal\" human-body ratio, as stated in \"De architectura.\" \"De architectura\" was a treatise by Vitruvius, an architect from the early 1st century BCE."
                    }
                  }
                }
              }
            }
          },
          "404": {
            "description": "Not Found"
          }
        },
        "operationId": "get-art-artID",
        "description": "Get art data in JSON format. \n\nThe {artID} parameter is optional and can be removed to get all the art data."
      }
    },
    "/v1/icons/art/{artID}": {
      "parameters": [
        {
          "schema": {
            "type": "string"
          },
          "name": "artID",
          "in": "path",
          "required": true
        }
      ],
      "get": {
        "summary": "Your GET endpoint",
        "tags": [
          "Icons"
        ],
        "responses": {
          "200": {
            "description": "OK"
          },
          "404": {
            "description": "Not Found"
          }
        },
        "operationId": "get-icons-art-artID",
        "description": "Get art icons in PNG format. \n\nThe {artID} parameter can be found using the /art/ endpoint."
      }
    },
    "/v1/hourly/{songID}": {
      "parameters": [
        {
          "schema": {
            "type": "string"
          },
          "name": "songID",
          "in": "path",
          "required": true
        }
      ],
      "get": {
        "summary": "Hourly music",
        "tags": [
          "Hourly music"
        ],
        "responses": {
          "200": {
            "description": "OK"
          },
          "404": {
            "description": "Not Found"
          }
        },
        "operationId": "get-v1-hourly-songID",
        "description": "Get hourly songs data in MP3 format. \n\nThe {songID} parameter can be found using the /backgroundmusic/ endpoint."
      }
    },
    "/v1/backgroundmusic/{songID}": {
      "parameters": [
        {
          "schema": {
            "type": "string"
          },
          "name": "songID",
          "in": "path",
          "required": true
        }
      ],
      "get": {
        "summary": "BGM",
        "tags": [
          "BGM"
        ],
        "responses": {
          "200": {
            "description": "OK",
            "content": {
              "application/json": {
                "schema": {
                  "type": "object",
                  "properties": {
                    "id": {
                      "type": "string",
                      "description": "ID of the song."
                    },
                    "file-name": {
                      "type": "string",
                      "description": "File name of the song"
                    },
                    "hour": {
                      "type": "number",
                      "description": "Hour in 24h format at which the song plays"
                    },
                    "weather": {
                      "type": "string",
                      "description": "Weather"
                    },
                    "music_uri": {
                      "type": "string",
                      "description": "URI for music"
                    }
                  },
                  "required": [
                    "id",
                    "file-name",
                    "hour",
                    "weather",
                    "music_uri"
                  ]
                },
                "examples": {
                  "/v1/backgroundmusic/1": {
                    "value": {
                      "id": 1,
                      "file-name": "BGM_24Hour_00_Rainy",
                      "hour": 0,
                      "weather": "Rainy"
                    }
                  }
                }
              }
            }
          },
          "404": {
            "description": "Not Found"
          }
        },
        "operationId": "get-v1-backgroundmusic-songID",
        "description": "Get hourly songs data in JSON format. \n\nThe {songID} parameter is optional and can be removed to get all the songs data."
      }
    },
    "/v1/houseware/{housewareID}": {
      "parameters": [
        {
          "schema": {
            "type": "string"
          },
          "name": "housewareID",
          "in": "path",
          "required": true
        }
      ],
      "get": {
        "summary": "Houseware",
        "tags": [
          "Items"
        ],
        "responses": {
          "200": {
            "description": "OK",
            "content": {
              "application/json": {
                "schema": {
                  "type": "array",
                  "description": "Returns an array of variant for the furniture specified as housewareID",
                  "items": {
                    "type": "object",
                    "description": "A variant object",
                    "properties": {
                      "variant": {
                        "type": "string",
                        "nullable": true,
                        "description": "Name of the variant, null if the furniture only has one."
                      },
                      "body-title": {
                        "type": "string",
                        "nullable": true,
                        "description": "Type of body variant"
                      },
                      "pattern": {
                        "type": "string",
                        "nullable": true,
                        "description": "Name of the pattern variant"
                      },
                      "pattern-title": {
                        "type": "string",
                        "nullable": true,
                        "description": "Type of the pattern variant"
                      },
                      "isDIY": {
                        "type": "boolean",
                        "description": "Can the item be crafted?"
                      },
                      "canCustomizeBody": {
                        "type": "boolean",
                        "description": "Can you customize the body?"
                      },
                      "canCustomizePattern": {
                        "type": "boolean",
                        "description": "Can you customize the pattern?"
                      },
                      "kit-cost": {
                        "type": "number",
                        "nullable": true,
                        "description": "Number of kit required to customize, null if can't be customized"
                      },
                      "color-1": {
                        "type": "string",
                        "description": "Primary color"
                      },
                      "color-2": {
                        "type": "string",
                        "description": "Secondary color"
                      },
                      "size": {
                        "type": "string",
                        "description": "Size of the item"
                      },
                      "miles-price": {
                        "type": "number",
                        "nullable": true,
                        "description": "Number of miles to purchase the item at the Nook Stop"
                      },
                      "source": {
                        "type": "string",
                        "description": "Where to get the item from, separated by a \";\" if there are multiple sources."
                      },
                      "source-detail": {
                        "type": "string",
                        "description": "Details on said sources"
                      },
                      "version": {
                        "type": "string",
                        "description": "Version of the game the item was introduced in."
                      },
                      "hha-concept-1": {
                        "type": "string",
                        "nullable": true,
                        "description": "First HHA theme."
                      },
                      "hha-concept-2": {
                        "type": "string",
                        "nullable": true,
                        "description": "First HHA theme."
                      },
                      "hha-series": {
                        "type": "string",
                        "nullable": true,
                        "description": "Second HHA theme."
                      },
                      "hha-set": {
                        "type": "string",
                        "nullable": true,
                        "description": "HHA set the item is in"
                      },
                      "isInteractive": {
                        "type": "boolean",
                        "description": "Can you interact with the item?"
                      },
                      "tag": {
                        "type": "string",
                        "description": "Tag associated with the object."
                      },
                      "isOutdoor": {
                        "type": "boolean",
                        "description": "Can the item be placed outdoors?"
                      },
                      "speaker-type": {
                        "type": "string",
                        "nullable": true,
                        "description": "Type of speaker, null if not a speaker"
                      },
                      "lighting-type": {
                        "type": "string",
                        "nullable": true,
                        "description": "Type of lighting, null if not a light source"
                      },
                      "isCatalog": {
                        "type": "boolean",
                        "description": "Can the item be ordered from the catalog?"
                      },
                      "file-name": {
                        "type": "string",
                        "description": "Name of the file for the image endpoint"
                      },
                      "variant-id": {
                        "type": "string",
                        "nullable": true,
                        "description": "ID of the variant, null if the item doesnt have variants."
                      },
                      "internal-id": {
                        "type": "number",
                        "description": "Internal ID of the objects (in the game)"
                      },
                      "name": {
                        "type": "object",
                        "required": [
                          "name-USen",
                          "name-EUde",
                          "name-EUes",
                          "name-USes",
                          "name-EUfr",
                          "name-USfr",
                          "name-EUit",
                          "name-EUnl",
                          "name-CNzh",
                          "name-TWzh",
                          "name-JPja",
                          "name-KRko",
                          "name-EUru",
                          "name-EUen"
                        ],
                        "description": "Translations",
                        "properties": {
                          "name-USen": {
                            "type": "string",
                            "description": "American English"
                          },
                          "name-EUde": {
                            "type": "string",
                            "description": "German"
                          },
                          "name-EUes": {
                            "type": "string",
                            "description": "Spanish"
                          },
                          "name-USes": {
                            "type": "string",
                            "description": "Latin American Spanish"
                          },
                          "name-EUfr": {
                            "type": "string",
                            "description": "French"
                          },
                          "name-USfr": {
                            "type": "string",
                            "description": "Canadian French"
                          },
                          "name-EUit": {
                            "type": "string",
                            "description": "Italian"
                          },
                          "name-EUnl": {
                            "type": "string",
                            "description": "Dutch"
                          },
                          "name-CNzh": {
                            "type": "string",
                            "description": "Simplified Chinese"
                          },
                          "name-TWzh": {
                            "type": "string",
                            "description": "Traditional Chinese"
                          },
                          "name-JPja": {
                            "type": "string",
                            "description": "Japanese"
                          },
                          "name-KRko": {
                            "type": "string",
                            "description": "Korean"
                          },
                          "name-EUru": {
                            "type": "string",
                            "description": "Russian"
                          },
                          "name-EUen": {
                            "type": "string",
                            "description": "English"
                          }
                        }
                      },
                      "buy-price": {
                        "type": "number",
                        "nullable": true,
                        "description": "Price at which the item is purchased"
                      },
                      "sell-price": {
                        "type": "number",
                        "nullable": true,
                        "description": "Price at which the item is sold"
                      },
                      "image_uri": {
                        "type": "string",
                        "description": "URI for image"
                      }
                    },
                    "required": [
                      "variant",
                      "body-title",
                      "pattern",
                      "pattern-title",
                      "canCustomizeBody",
                      "canCustomizePattern",
                      "kit-cost",
                      "color-1",
                      "color-2",
                      "size",
                      "miles-price",
                      "source",
                      "source-detail",
                      "version",
                      "hha-concept-1",
                      "hha-concept-2",
                      "hha-series",
                      "hha-set",
                      "isInteractive",
                      "tag",
                      "isOutdoor",
                      "speaker-type",
                      "lighting-type",
                      "isCatalog",
                      "file-name",
                      "variant-id",
                      "internal-id",
                      "name",
                      "buy-price",
                      "sell-price",
                      "image_uri"
                    ]
                  }
                },
                "examples": {
                  "/v1/houseware/alto_saxophone": {
                    "value": [
                      {
                        "variant": null,
                        "body-title": null,
                        "pattern": null,
                        "pattern-title": null,
                        "isDIY": false,
                        "canCustomizeBody": false,
                        "canCustomizePattern": false,
                        "kit-cost": null,
                        "color-1": "Yellow",
                        "color-2": "Yellow",
                        "size": "1x1",
                        "miles-price": null,
                        "source": "Nook's Cranny",
                        "source-detail": "Available in Nook's Cranny (upgraded only), in the unique furniture slot",
                        "version": "1.0.0",
                        "hha-concept-1": "music",
                        "hha-concept-2": null,
                        "hha-series": null,
                        "hha-set": null,
                        "isInteractive": true,
                        "tag": "Musical Instrument",
                        "isOutdoor": false,
                        "speaker-type": null,
                        "lighting-type": null,
                        "isCatalog": true,
                        "file-name": "FtrAltosax",
                        "variant-id": null,
                        "internal-id": 846,
                        "name": {
                          "name-USen": "alto saxophone",
                          "name-EUen": "alto saxophone",
                          "name-EUde": "Saxofon",
                          "name-EUes": "saxofón",
                          "name-USes": "saxofón",
                          "name-EUfr": "saxophone alto",
                          "name-USfr": "saxophone alto",
                          "name-EUit": "sax contralto",
                          "name-EUnl": "altsaxofoon",
                          "name-CNzh": "中音萨克斯风",
                          "name-TWzh": "中音薩克斯風",
                          "name-JPja": "アルトサックス",
                          "name-KRko": "알토 색소폰",
                          "name-EUru": "альтовый саксофон"
                        },
                        "buy-price": 3400,
                        "sell-price": 850,
                        "image_uri": "https://acnhapi.com/v1/images/furniture/FtrAltosax"
                      }
                    ]
                  }
                }
              }
            }
          },
          "404": {
            "description": "Not Found"
          }
        },
        "operationId": "get-v1-houseware-housewareName",
        "description": "Get houseware data in JSON format. \n\nThe {housewareID} parameter is optional and can be removed to get all the housewareID data."
      }
    },
    "/v1/wallmounted/{wallmountedID}": {
      "parameters": [
        {
          "schema": {
            "type": "string"
          },
          "name": "wallmountedID",
          "in": "path",
          "required": true
        }
      ],
      "get": {
        "summary": "Wallmounted",
        "tags": [
          "Items"
        ],
        "responses": {
          "200": {
            "description": "OK"
          },
          "404": {
            "description": "Not Found"
          }
        }
      }
    },
    "/v1/misc/{miscID}": {
      "parameters": [
        {
          "schema": {
            "type": "string"
          },
          "name": "miscID",
          "in": "path",
          "required": true
        }
      ],
      "get": {
        "summary": "Misc",
        "tags": [
          "Items"
        ],
        "responses": {
          "200": {
            "description": "OK"
          },
          "404": {
            "description": "Not Found"
          }
        },
        "operationId": "get-v1-misc-miscID",
        "description": "see /v1/houseware endpoint."
      }
    },
    "/v1/images/funiture/{furnitureFileName}": {
      "parameters": [
        {
          "schema": {
            "type": "string"
          },
          "name": "furnitureFileName",
          "in": "path",
          "required": true
        }
      ],
      "get": {
        "summary": "Furniture images",
        "tags": [
          "Images"
        ],
        "responses": {
          "200": {
            "description": "OK"
          },
          "404": {
            "description": "Not Found"
          }
        },
        "operationId": "get-v1-images-funiture-furnitureFileName",
        "description": "Get furniture images in PNG format. \n\nThe {furnitureFileName} parameter can be found using the file-name key in an houseware/wallmounted/misc variant object (eg: FtrJewelrystand_Remake_0_0)."
      }
    }
  },
  "components": {
    "schemas": {},
    "securitySchemes": {}
  },
  "security": []
}

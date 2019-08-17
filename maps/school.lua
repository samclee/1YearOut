return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.2.4",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 24,
  height = 32,
  tilewidth = 8,
  tileheight = 8,
  nextlayerid = 9,
  nextobjectid = 73,
  properties = {},
  tilesets = {
    {
      name = "dungeon_set",
      firstgid = 1,
      tilewidth = 8,
      tileheight = 8,
      spacing = 0,
      margin = 0,
      columns = 8,
      image = "../sprites/dungeon_set.png",
      imagewidth = 64,
      imageheight = 40,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 8,
        height = 8
      },
      properties = {},
      terrains = {},
      tilecount = 40,
      tiles = {}
    }
  },
  layers = {
    {
      type = "objectgroup",
      id = 4,
      name = "myobjects",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 1,
          name = "Player",
          type = "",
          shape = "rectangle",
          x = 92,
          y = 224,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "school_exit",
          type = "Sign",
          shape = "rectangle",
          x = 88,
          y = 248,
          width = 16,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "charlie",
          type = "Sign",
          shape = "rectangle",
          x = 80,
          y = 152,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "charlie"
          }
        },
        {
          id = 4,
          name = "bryan",
          type = "Sign",
          shape = "rectangle",
          x = 16,
          y = 40,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "bryan"
          }
        },
        {
          id = 10,
          name = "grace",
          type = "Sign",
          shape = "rectangle",
          x = 160,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "grace"
          }
        },
        {
          id = 16,
          name = "door",
          type = "Sign",
          shape = "rectangle",
          x = 56,
          y = 152,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "door"
          }
        },
        {
          id = 17,
          name = "barrierA",
          type = "Sign",
          shape = "rectangle",
          x = 72,
          y = 128,
          width = 48,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["inactive"] = true
          }
        },
        {
          id = 18,
          name = "barrierB",
          type = "Sign",
          shape = "rectangle",
          x = 72,
          y = 64,
          width = 48,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["inactive"] = true
          }
        },
        {
          id = 34,
          name = "chairs2",
          type = "Sign",
          shape = "rectangle",
          x = 104,
          y = 240,
          width = 80,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "chairs2"
          }
        },
        {
          id = 35,
          name = "chairs",
          type = "Sign",
          shape = "rectangle",
          x = 8,
          y = 240,
          width = 76,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "chairs"
          }
        },
        {
          id = 36,
          name = "cap",
          type = "Sign",
          shape = "rectangle",
          x = 160,
          y = 232,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "cap"
          }
        },
        {
          id = 37,
          name = "airhorn",
          type = "Sign",
          shape = "rectangle",
          x = 24,
          y = 232,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "airhorn"
          }
        },
        {
          id = 38,
          name = "screen",
          type = "Sign",
          shape = "rectangle",
          x = 136,
          y = 192,
          width = 46,
          height = 22,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "screentext"
          }
        },
        {
          id = 39,
          name = "TriggerA",
          type = "StepTrigger",
          shape = "rectangle",
          x = 72,
          y = 160,
          width = 48,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["inactive"] = true
          }
        },
        {
          id = 42,
          name = "counter",
          type = "Sign",
          shape = "rectangle",
          x = 136,
          y = 72,
          width = 48,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "counter"
          }
        },
        {
          id = 43,
          name = "easelA",
          type = "Sign",
          shape = "rectangle",
          x = 136,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "easelA"
          }
        },
        {
          id = 44,
          name = "easelB",
          type = "Sign",
          shape = "rectangle",
          x = 176,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "easelB"
          }
        },
        {
          id = 46,
          name = "sml_house",
          type = "Sign",
          shape = "rectangle",
          x = 176,
          y = 112,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "sml_house"
          }
        },
        {
          id = 47,
          name = "photoA",
          type = "Sign",
          shape = "rectangle",
          x = 176,
          y = 104,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "photoA"
          }
        },
        {
          id = 48,
          name = "photoB",
          type = "Sign",
          shape = "rectangle",
          x = 136,
          y = 112,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "photoB"
          }
        },
        {
          id = 49,
          name = "portA",
          type = "Sign",
          shape = "rectangle",
          x = 152,
          y = 104,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "portA"
          }
        },
        {
          id = 51,
          name = "portB",
          type = "Sign",
          shape = "rectangle",
          x = 160,
          y = 96,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "portB"
          }
        },
        {
          id = 54,
          name = "flyer",
          type = "Sign",
          shape = "rectangle",
          x = 72,
          y = 168,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "paper_full"
          }
        },
        {
          id = 55,
          name = "corkboard",
          type = "Sign",
          shape = "rectangle",
          x = 119,
          y = 136,
          width = 8,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "corkboard"
          }
        },
        {
          id = 56,
          name = "backpack",
          type = "Sign",
          shape = "rectangle",
          x = 110,
          y = 152,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "backpack"
          }
        },
        {
          id = 57,
          name = "boots",
          type = "Sign",
          shape = "rectangle",
          x = 110,
          y = 144,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "boots"
          }
        },
        {
          id = 58,
          name = "trash",
          type = "Sign",
          shape = "rectangle",
          x = 111,
          y = 176,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "trash"
          }
        },
        {
          id = 60,
          name = "computerA",
          type = "Sign",
          shape = "rectangle",
          x = 8,
          y = 9,
          width = 24,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "computer"
          }
        },
        {
          id = 61,
          name = "computerB",
          type = "Sign",
          shape = "rectangle",
          x = 32,
          y = 9,
          width = 24,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "computerchairs"
          }
        },
        {
          id = 63,
          name = "chair",
          type = "Sign",
          shape = "rectangle",
          x = 8,
          y = 24,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "chairbackpack"
          }
        },
        {
          id = 64,
          name = "error",
          type = "Sign",
          shape = "rectangle",
          x = 10,
          y = 192,
          width = 46,
          height = 22,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "screenerror"
          }
        },
        {
          id = 65,
          name = "podium",
          type = "Sign",
          shape = "rectangle",
          x = 88,
          y = 200,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "podium"
          }
        },
        {
          id = 66,
          name = "printer",
          type = "Sign",
          shape = "rectangle",
          x = 48,
          y = 40,
          width = 8,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "printer"
          }
        },
        {
          id = 68,
          name = "gracenote",
          type = "Sign",
          shape = "rectangle",
          x = 160,
          y = 80,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["inactive"] = true,
            ["spr_name"] = "paper_headline"
          }
        },
        {
          id = 69,
          name = "charlienote",
          type = "Sign",
          shape = "rectangle",
          x = 80,
          y = 152,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["inactive"] = true,
            ["spr_name"] = "paper_headline"
          }
        },
        {
          id = 70,
          name = "gracefinal",
          type = "Sign",
          shape = "rectangle",
          x = 112,
          y = 216,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["inactive"] = true,
            ["spr_name"] = "grace"
          }
        },
        {
          id = 71,
          name = "bryanfinal",
          type = "Sign",
          shape = "rectangle",
          x = 72,
          y = 216,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["inactive"] = true,
            ["spr_name"] = "bryan"
          }
        },
        {
          id = 72,
          name = "charliefinal",
          type = "Sign",
          shape = "rectangle",
          x = 80,
          y = 232,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["inactive"] = true,
            ["spr_name"] = "charlie"
          }
        }
      }
    },
    {
      type = "tilelayer",
      id = 7,
      name = "bg",
      x = 0,
      y = 0,
      width = 24,
      height = 32,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33
      }
    },
    {
      type = "tilelayer",
      id = 8,
      name = "walls",
      x = 0,
      y = 0,
      width = 24,
      height = 32,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      encoding = "lua",
      data = {
        25, 29, 28, 29, 28, 29, 28, 25, 25, 29, 28, 29, 28, 29, 28, 25, 0, 0, 0, 0, 0, 0, 0, 0,
        26, 0, 0, 0, 0, 0, 0, 26, 26, 0, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 0, 0,
        27, 0, 0, 0, 0, 0, 0, 27, 27, 0, 0, 0, 0, 0, 0, 26, 0, 0, 0, 0, 0, 0, 0, 0,
        26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 0, 0,
        27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 0, 0, 0, 0, 0, 0, 0, 0,
        26, 0, 0, 0, 0, 0, 0, 26, 26, 0, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 0, 0,
        27, 0, 0, 0, 0, 0, 0, 27, 27, 0, 0, 0, 0, 0, 0, 26, 0, 0, 0, 0, 0, 0, 0, 0,
        25, 28, 29, 28, 29, 28, 29, 25, 25, 0, 0, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 25, 25, 29, 28, 29, 28, 29, 28, 25,
        0, 0, 0, 0, 0, 0, 0, 0, 26, 0, 0, 0, 0, 0, 0, 27, 27, 0, 0, 0, 0, 0, 0, 27,
        0, 0, 0, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 26, 26, 0, 0, 0, 0, 0, 0, 26,
        0, 0, 0, 0, 0, 0, 0, 0, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27,
        0, 0, 0, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26,
        0, 0, 0, 0, 0, 0, 0, 0, 26, 0, 0, 0, 0, 0, 0, 27, 27, 0, 0, 0, 0, 0, 0, 27,
        0, 0, 0, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 26, 26, 0, 0, 0, 0, 0, 0, 26,
        0, 0, 0, 0, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 25, 25, 28, 29, 28, 29, 28, 29, 25,
        0, 0, 0, 0, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 26, 0, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 26, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 26, 0, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 26, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0,
        25, 29, 28, 29, 28, 29, 28, 25, 25, 0, 0, 0, 0, 0, 0, 25, 25, 29, 28, 29, 28, 29, 28, 25,
        26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27,
        27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26,
        26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27,
        27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26,
        26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27,
        27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26,
        25, 28, 29, 28, 29, 28, 29, 25, 25, 28, 29, 0, 0, 28, 29, 25, 25, 28, 29, 28, 29, 28, 29, 25
      }
    }
  }
}

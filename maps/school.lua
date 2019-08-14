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
  nextobjectid = 42,
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
          x = 88,
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
          x = 24,
          y = 24,
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
          y = 96,
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
          id = 30,
          name = "charliefinal",
          type = "Sign",
          shape = "rectangle",
          x = 40,
          y = 216,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["inactive"] = true,
            ["spr_name"] = "charlie"
          }
        },
        {
          id = 31,
          name = "bryanfinal",
          type = "Sign",
          shape = "rectangle",
          x = 24,
          y = 224,
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
          id = 32,
          name = "gracefinal",
          type = "Sign",
          shape = "rectangle",
          x = 48,
          y = 232,
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
          id = 34,
          name = "chairs2",
          type = "Sign",
          shape = "rectangle",
          x = 136,
          y = 240,
          width = 48,
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
          width = 48,
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
          y = 48,
          width = 48,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["inactive"] = true
          }
        },
        {
          id = 40,
          name = "TriggerC",
          type = "StepTrigger",
          shape = "rectangle",
          x = 72,
          y = 144,
          width = 48,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["inactive"] = true
          }
        },
        {
          id = 41,
          name = "TriggerB",
          type = "StepTrigger",
          shape = "rectangle",
          x = 72,
          y = 88,
          width = 48,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["inactive"] = true
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

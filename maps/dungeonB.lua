return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.2.4",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 24,
  height = 24,
  tilewidth = 8,
  tileheight = 8,
  nextlayerid = 4,
  nextobjectid = 21,
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
      id = 3,
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
          x = 96,
          y = 24,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["entry_conv"] = "entryB",
            ["goal"] = 3
          }
        },
        {
          id = 2,
          name = "bryan_enemyA",
          type = "Sign",
          shape = "rectangle",
          x = 80,
          y = 104,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "alien"
          }
        },
        {
          id = 3,
          name = "exitB",
          type = "Exit",
          shape = "rectangle",
          x = 88,
          y = 160,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "portal"
          }
        },
        {
          id = 4,
          name = "",
          type = "Destructable",
          shape = "rectangle",
          x = 88,
          y = 56,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["active"] = "ice",
            ["destroyed"] = "ice2",
            ["type"] = 2
          }
        },
        {
          id = 5,
          name = "",
          type = "Destructable",
          shape = "rectangle",
          x = 80,
          y = 56,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["active"] = "ice",
            ["destroyed"] = "ice2",
            ["type"] = 2
          }
        },
        {
          id = 6,
          name = "",
          type = "Destructable",
          shape = "rectangle",
          x = 112,
          y = 96,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["active"] = "ice",
            ["destroyed"] = "ice2",
            ["type"] = 2
          }
        },
        {
          id = 7,
          name = "",
          type = "Destructable",
          shape = "rectangle",
          x = 104,
          y = 96,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["active"] = "ice",
            ["destroyed"] = "ice2",
            ["type"] = 2
          }
        },
        {
          id = 8,
          name = "",
          type = "Destructable",
          shape = "rectangle",
          x = 104,
          y = 104,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["active"] = "ice",
            ["destroyed"] = "ice2",
            ["type"] = 2
          }
        },
        {
          id = 10,
          name = "",
          type = "Destructable",
          shape = "rectangle",
          x = 104,
          y = 112,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["active"] = "ice",
            ["destroyed"] = "ice2",
            ["type"] = 2
          }
        },
        {
          id = 11,
          name = "",
          type = "Destructable",
          shape = "rectangle",
          x = 24,
          y = 72,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["active"] = "ice",
            ["destroyed"] = "ice2",
            ["type"] = 2
          }
        },
        {
          id = 12,
          name = "",
          type = "Destructable",
          shape = "rectangle",
          x = 32,
          y = 72,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["active"] = "ice",
            ["destroyed"] = "ice2",
            ["type"] = 2
          }
        },
        {
          id = 13,
          name = "",
          type = "Destructable",
          shape = "rectangle",
          x = 40,
          y = 72,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["active"] = "ice",
            ["destroyed"] = "ice2",
            ["type"] = 2
          }
        },
        {
          id = 14,
          name = "",
          type = "Destructable",
          shape = "rectangle",
          x = 40,
          y = 64,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["active"] = "ice",
            ["destroyed"] = "ice2",
            ["type"] = 2
          }
        },
        {
          id = 15,
          name = "",
          type = "Destructable",
          shape = "rectangle",
          x = 32,
          y = 64,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["active"] = "ice",
            ["destroyed"] = "ice2",
            ["type"] = 2
          }
        },
        {
          id = 16,
          name = "",
          type = "Destructable",
          shape = "rectangle",
          x = 24,
          y = 160,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["active"] = "ice",
            ["destroyed"] = "ice2",
            ["type"] = 2
          }
        },
        {
          id = 17,
          name = "",
          type = "Destructable",
          shape = "rectangle",
          x = 10.1888,
          y = 157.841,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["active"] = "ice",
            ["destroyed"] = "ice2",
            ["type"] = 2
          }
        },
        {
          id = 18,
          name = "",
          type = "Destructable",
          shape = "rectangle",
          x = 15.7313,
          y = 159.615,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["active"] = "ice",
            ["destroyed"] = "ice2",
            ["type"] = 2
          }
        },
        {
          id = 19,
          name = "",
          type = "Destructable",
          shape = "rectangle",
          x = 24,
          y = 176,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["active"] = "ice",
            ["destroyed"] = "ice2",
            ["type"] = 2
          }
        },
        {
          id = 20,
          name = "",
          type = "Destructable",
          shape = "rectangle",
          x = 23.7125,
          y = 167.596,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["active"] = "ice",
            ["destroyed"] = "ice2",
            ["type"] = 2
          }
        }
      }
    },
    {
      type = "tilelayer",
      id = 2,
      name = "bg",
      x = 0,
      y = 0,
      width = 24,
      height = 24,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16,
        16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16,
        16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16,
        16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16,
        16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16,
        16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16,
        16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16,
        16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16,
        16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16,
        16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16,
        16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16,
        16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16,
        16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16,
        16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16,
        16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16,
        16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16,
        16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16,
        16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16,
        16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16,
        16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16,
        16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16,
        16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16,
        16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16,
        16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16
      }
    },
    {
      type = "tilelayer",
      id = 1,
      name = "walls",
      x = 0,
      y = 0,
      width = 24,
      height = 24,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      encoding = "lua",
      data = {
        10, 9, 9, 9, 9, 9, 9, 10, 10, 9, 9, 9, 9, 9, 9, 10, 0, 0, 0, 0, 0, 0, 0, 0,
        11, 0, 0, 0, 0, 0, 0, 11, 11, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0,
        11, 0, 0, 0, 0, 0, 0, 11, 11, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0,
        11, 0, 0, 0, 0, 0, 0, 11, 11, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0,
        11, 0, 0, 0, 0, 0, 0, 11, 11, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0,
        11, 0, 0, 0, 0, 0, 0, 11, 11, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0,
        11, 0, 0, 0, 0, 0, 0, 11, 11, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0,
        10, 9, 9, 9, 0, 0, 9, 10, 10, 9, 0, 0, 9, 9, 9, 10, 0, 0, 0, 0, 0, 0, 0, 0,
        10, 9, 9, 9, 0, 0, 9, 10, 10, 9, 0, 0, 9, 9, 9, 10, 10, 9, 9, 9, 9, 9, 9, 10,
        11, 0, 0, 0, 0, 0, 0, 11, 11, 0, 0, 0, 0, 0, 0, 11, 11, 0, 0, 0, 0, 0, 0, 11,
        11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 11, 0, 0, 0, 0, 0, 0, 11,
        11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 11, 0, 0, 0, 0, 0, 0, 11,
        11, 0, 0, 0, 0, 0, 0, 11, 11, 0, 0, 0, 0, 0, 0, 11, 11, 0, 0, 0, 0, 0, 0, 11,
        11, 0, 0, 0, 0, 0, 0, 11, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11,
        11, 0, 0, 0, 0, 0, 0, 11, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11,
        10, 9, 9, 0, 0, 9, 9, 10, 10, 9, 9, 9, 9, 9, 9, 10, 10, 9, 9, 9, 9, 9, 9, 10,
        10, 9, 9, 0, 0, 9, 9, 10, 10, 9, 9, 9, 9, 9, 9, 10, 0, 0, 0, 0, 0, 0, 0, 0,
        11, 0, 0, 0, 0, 0, 0, 11, 11, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0,
        11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0,
        11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0,
        11, 0, 0, 0, 0, 0, 0, 11, 11, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0,
        11, 0, 0, 0, 0, 0, 0, 11, 11, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0,
        11, 0, 0, 0, 0, 0, 0, 11, 11, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0,
        10, 9, 9, 9, 9, 9, 9, 10, 10, 9, 9, 9, 9, 9, 9, 10, 0, 0, 0, 0, 0, 0, 0, 0
      }
    }
  }
}

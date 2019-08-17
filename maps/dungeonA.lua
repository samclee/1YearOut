return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.2.4",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 16,
  height = 16,
  tilewidth = 8,
  tileheight = 8,
  nextlayerid = 7,
  nextobjectid = 12,
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
          x = 28,
          y = 28,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["entry_conv"] = "entryA",
            ["goal"] = 0
          }
        },
        {
          id = 3,
          name = "exitA",
          type = "Exit",
          shape = "rectangle",
          x = 88,
          y = 96,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "portal"
          }
        },
        {
          id = 8,
          name = "charlie_trophy",
          type = "Sign",
          shape = "rectangle",
          x = 104,
          y = 104,
          width = 10,
          height = 12,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "frozentrophy2"
          }
        },
        {
          id = 9,
          name = "charlie_notebookA",
          type = "Sign",
          shape = "rectangle",
          x = 32,
          y = 112,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "frozencomp2"
          }
        },
        {
          id = 10,
          name = "charlie_photos",
          type = "Sign",
          shape = "rectangle",
          x = 88,
          y = 8,
          width = 18,
          height = 12,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "frozencorkboard"
          }
        },
        {
          id = 11,
          name = "charlie_notebookB",
          type = "Sign",
          shape = "rectangle",
          x = 8,
          y = 88,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["spr_name"] = "frozencomp1"
          }
        }
      }
    },
    {
      type = "tilelayer",
      id = 5,
      name = "bg",
      x = 0,
      y = 0,
      width = 16,
      height = 16,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
        8, 5, 8, 8, 8, 8, 5, 8, 8, 4, 7, 8, 8, 6, 8, 8,
        8, 8, 8, 8, 8, 8, 8, 8, 8, 4, 6, 8, 8, 7, 4, 8,
        8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 7, 6, 8, 6, 8, 8,
        8, 8, 8, 8, 8, 8, 8, 8, 8, 4, 6, 8, 8, 7, 4, 8,
        8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 7, 8, 8, 6, 8, 8,
        8, 5, 8, 8, 8, 8, 5, 8, 8, 4, 6, 8, 8, 7, 4, 8,
        8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
        8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
        8, 6, 7, 6, 7, 6, 7, 8, 6, 6, 8, 8, 8, 5, 5, 8,
        8, 8, 5, 8, 8, 8, 5, 8, 8, 8, 6, 7, 6, 8, 8, 8,
        8, 8, 8, 8, 8, 8, 5, 8, 8, 8, 8, 8, 8, 6, 8, 8,
        8, 5, 8, 8, 8, 5, 8, 8, 8, 8, 8, 8, 8, 7, 8, 8,
        8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 7, 6, 7, 8, 8, 8,
        8, 8, 5, 8, 8, 5, 8, 8, 7, 7, 8, 8, 5, 8, 5, 8,
        8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8
      }
    },
    {
      type = "tilelayer",
      id = 6,
      name = "walls",
      x = 0,
      y = 0,
      width = 16,
      height = 16,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      encoding = "lua",
      data = {
        1, 2, 2, 2, 2, 2, 2, 1, 1, 2, 2, 2, 2, 2, 2, 1,
        3, 0, 0, 0, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 3,
        3, 0, 0, 0, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 3,
        3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3,
        3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3,
        3, 0, 0, 0, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 3,
        3, 0, 0, 0, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 3,
        1, 2, 2, 2, 2, 2, 2, 1, 1, 2, 0, 0, 2, 2, 2, 1,
        1, 2, 2, 2, 2, 2, 2, 1, 1, 2, 0, 0, 2, 2, 2, 1,
        3, 0, 0, 0, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 3,
        3, 0, 0, 0, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 3,
        3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3,
        3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3,
        3, 0, 0, 0, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 3,
        3, 0, 0, 0, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 3,
        1, 2, 2, 2, 2, 2, 2, 1, 1, 2, 2, 2, 2, 2, 2, 1
      }
    }
  }
}

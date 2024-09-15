-- technology-fusion-robots
-- TODO: Correct Artwork

data:extend(
{
  {
    type = "technology",
    name = "fission-robotics",
    icon = "__Fission_Robots__/graphics/technology-fusion-robotics.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "construction-robot-fission"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-robot-fission"
      },
    },
    prerequisites = {"construction-robotics", "logistic-robotics", "uranium-processing"},
    unit =
    {
      count = 450,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    order = "c-k-b",
  },
})

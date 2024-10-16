return {
  next_actions = {
    -- idle
    idle = { "idle", "idle_left", "standtosit", "walk", "walk_left", "poop", "angry", "surprise", "jump" },
    idle_left = { "idle", "idle_left", "standtosit", "walk", "walk_left", "poop", "angry", "surprise", "jump" },
    lie = { "lie", "lietosit" },
    sit = { "sit", "sittolie", "sittostand", "stand_two_legs" },

    -- Movement
    run = { "run", "walk" },
    run_left = { "run_left", "walk_left" },

    walk = { "walk", "run", "walk_to_stop"},
    walk_left = { "walk_left", "run_left", "walk_to_stop" },

    -- Reactions
    poop = { "walk" },
    angry = { "idle"},
    surprise = { "jump" },
    jump = { "run" },
    stand_two_legs = { "sit", "walk_two_legs", "stand_two_legs" },
    walk_to_stop = { "walk", "walk_left", "idle"},
    walk_to_stop_left = { "walk", "walk_left", "idle_left"},

    walk_two_legs = { "stand_two_legs", "walk_two_legs"},
    -- Transition
    lietosit = { "sit" },
    sittolie = { "lie"},
    sittostand = { "idle" },
    standtosit = { "sit" },
  },
  idle_actions = { "idle", "sit", "lie" },
  first_action = "idle",
  movements = {
      right = {
          normal = { "walk" },
          fast = { "run", "jump" },
          slow = { "walk_two_legs"}
      },
      left = {
          normal = { "walk_left" },
          fast = { "run_left" },
      },
  },
  get_death_animation = function(current_action)
    -- local split_animations = { "split_idle", "divide", "split_walk", "split_walk_left", "split_swap" }
    -- if vim.tbl_contains(split_animations, current_action) then
    --   return "split_die"
    -- end
    return "die"
  end,
}

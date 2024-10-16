local stand_actions = { "idle", "standtosit", "walk", "walk_left", "poop", "angry", "surprise", "jump", "pounce" }
local sit_actions = { "sit", "sittolie", "sittostand", "stand_two_legs", "wait_to_scare" }
local lie_actions = { "lie", "sleep", "lietosit" }

return {
  next_actions = {
    -- idle
    idle = stand_actions,  -- Using the predefined stand_actions
    idle_left = stand_actions,  -- You can reuse it like this
    lie = lie_actions,
    sleep = {"sleep", "lie"},
    sit = sit_actions,

    -- Movement
    run = { "run", "walk", "walk_to_stop" },
    run_left = { "run_left", "walk_left", "walk_to_stop_left" },

    walk = { "walk", "run", "idle", "standtosit" },
    walk_left = { "walk_left", "run_left", "idle_left" },

    -- Reactions
    poop = { "poop", "walk" },
    angry = { "angry", "pounce" },
    stand_two_legs = { "walk_two_legs", "stand_two_legs" },
    walk_to_stop = { "walk", "walk_left", "idle", "standtosit" },
    walk_to_stop_left = { "walk", "walk_left", "idle_left" },

    wait_to_scare = { "wait_to_scare", "surprise", "dash", "jump" },
    dash = stand_actions,
    surprise = { "jump", "dash" },
    jump = { "dash" },
    pounce = stand_actions,

    walk_two_legs = { "stand_two_legs", "walk_two_legs", "sit" },
    -- Transition
    lietosit = {"sit"},
    sittolie = {"lie", "sleep"},
    sittostand = stand_actions,
    standtosit = {"sit", "sittolie"},
  },
  idle_actions = { "idle", "sit", "lie", "sleep" },
  first_action = "idle",
  movements = {
    right = {
      normal = { "walk" },
      fast = { "run", "jump", "dash" },
      slow = { "walk_two_legs" }
    },
    left = {
      normal = { "walk_left" },
      fast = { "run_left" },
    },
  },
  get_death_animation = function(current_action)
    return "die"
  end,
}

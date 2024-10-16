local stand_actions = { "idle", "standtosit", "walk", "walk_left", "poop", "angry", "surprise", "jump", "pounce", "dash" }
local sit_actions = { "sit", "sittolie", "sittostand", "stand_two_legs", "wait_to_scare" }
local lie_actions = { "lie", "lietosit", "sleep" }

return {
  next_actions = {
    -- idle
    idle = stand_actions,  -- Using the predefined stand_actions
    idle_left = stand_actions,  -- You can reuse it like this
    lie = lie_actions,
    sleep = lie_actions,
    sit = sit_actions,

    -- Movement
    run = { "run", "walk", "walk_to_stop" },
    run_left = { "run_left", "walk_left", "walk_to_stop_left" },

    walk = { "walk", "run", "idle", "standtosit" },
    walk_left = { "walk_left", "run_left", "idle_left" },

    -- Reactions
    poop = { "walk" },
    angry = { "pounce" },
    stand_two_legs = { "walk_two_legs", "stand_two_legs" },
    walk_to_stop = { "walk", "walk_left", "idle", "standtosit" },
    walk_to_stop_left = { "walk", "walk_left", "idle_left" },

    wait_to_scare = { "surprise", "dash" },
    dash = stand_actions,
    surprise = { "jump" },
    jump = { "dash" },
    pounce = stand_actions,

    walk_two_legs = { "stand_two_legs", "walk_two_legs", "sit" },
    -- Transition
    lietosit = sit_actions,
    sittolie = lie_actions,
    sittostand = stand_actions,
    standtosit = sit_actions,
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

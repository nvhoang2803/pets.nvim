stand_actions = { "idle", "idle_left", "standtosit", "walk", "walk_left", "poop", "angry", "surprise", "jump", "pounce" }

return {
  next_actions = {
    -- idle
    idle = stand_actions,  -- Using the predefined stand_actions
    idle_left = stand_actions,  -- You can reuse it like this
    lie = { "lie", "lietosit", "sleep" },
    sleep = { "lie", "lietosit", "sleep" },
    sit = { "sit", "sittolie", "sittostand", "stand_two_legs", "wait_to_scare" },

    -- Movement
    run = { "run", "walk", "walk_to_stop" },
    run_left = { "run_left", "walk_left", "walk_to_stop_left" },

    walk = { "walk", "run", "idle" },
    walk_left = { "walk_left", "run_left", "idle_left" },

    -- Reactions
    poop = { "walk" },
    angry = { "idle" },
    stand_two_legs = { "sit", "walk_two_legs", "stand_two_legs" },
    walk_to_stop = { "walk", "walk_left", "idle" },
    walk_to_stop_left = { "walk", "walk_left", "idle_left" },

    wait_to_scare = { "surprise", "dash" },
    surprise = { "jump" },
    jump = { "run" },
    pounce = { "idle" },

    walk_two_legs = { "stand_two_legs", "walk_two_legs" },
    
    -- Transition
    lietosit = { "sit", "sittostand" },
    sittolie = { "lie" },
    sittostand = stand_actions,
    standtosit = { "sit" },
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
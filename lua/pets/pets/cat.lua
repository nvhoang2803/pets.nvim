return {
  next_actions = {
    idle = { "idle", "standtosit", "walk", "walk_left", "poop" },
    poop = { "idle" },
    lie = { "lie", "lietosit" },
    run = { "run", "walk" },
    run_left = { "run_left", "walk_left" },
    sit = { "sit", "sittolie", "sittostand" },
    walk = { "walk", "run", "idle", "walk_left"},
    walk_left = { "walk_left", "walk", "run_left", "idle" },
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
          fast = { "run" },
      },
      left = {
          normal = { "walk_left" },
          fast = { "run_left" },
      },
  },
}

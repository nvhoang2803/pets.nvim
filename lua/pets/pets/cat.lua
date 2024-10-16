return {
  next_actions = {
      idle = { "idle", "sit", "lie", "walk", "run", "walk_left" },
      lie = { "lie", "sittolie", "idle", "lietosit" },
      lietosit = { "lietosit", "sit", "idle" },
      run = { "run", "walk", "idle", "run_left" },
      run_left = { "run_left", "walk_left", "idle", "run" },
      sit = { "sit", "sittolie", "idle", "sittostand" },
      sittolie = { "sittolie", "lie", "idle" },
      sittostand = { "sittostand", "idle", "sit", "walk" },
      standtosit = { "standtosit", "sit", "idle" },
      walk = { "walk", "run", "idle", "walk_left" },
      walk_left = { "walk_left", "run_left", "idle" },
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

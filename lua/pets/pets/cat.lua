return {
  next_actions = {
      idle = { "idle", "sit", "lie", "walk", "run", "walk_left" },
      lie = { "standtosit", "sittolie", "lie", "lietosit", "sittostand", "idle" },
      run = { "run", "walk", "idle", "run_left", "idle" },
      run_left = { "run_left", "walk_left", "idle", "run", "idle" },
      sit = { "standtosit", "sit", "sittolie", "lie", "lietosit", "sittostand" },
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

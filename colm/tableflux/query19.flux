// Cannot use now option with tableFind, which is necessary to implementa min.
// Instead use -3y as start.
// option now = () => 2020-02-22T18:00:00Z

@tableflux.h2o_temperature{location, state,
		bottom_degrees, surface_degrees, time > -3y}
	|> select(fn: min(bottom_degrees), by: ["state"], window: 1h)

#!/usr/bin/env awk -f

# Fuel required to launch a given module is based on its mass.
# Specifically, to find the fuel required for a module, take its mass, divide by three, round down, and subtract 2.

{ fuel += (int($1 / 3) - 2) }
END { print fuel }

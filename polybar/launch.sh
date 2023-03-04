#!/bin/bash

# Terminate currently running polybar instances
killall -q polybar

# Launch polybar
polybar mybar 2>&1 | tee -a /tmp/polybar.log & disown

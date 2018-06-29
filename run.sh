#!/bin/sh

Xvfb :1 -screen 0 800x600x16 &
DISPLAY=:1.0 /usr/bin/EmptyEpsilon

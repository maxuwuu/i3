#!/bin/bash
playerctl --player=spotify metadata --format "{{ title }} | {{ artist }}"

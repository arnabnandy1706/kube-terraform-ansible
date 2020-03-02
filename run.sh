#!/bin/bash

terraform output | awk -F '=' '{print $2}' | awk -F ':' '{print $2}' | tr -s ',' '\n' | tr -s '[' ' ' | tr -s ']' ' '
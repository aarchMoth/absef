#!/bin/zsh

# This REQUIRES Zsh to work!!

# aarchMoth Bash Sound Engine Framework (aBSEF)
# Version 0.1.1

BPM=80 # BPM works different here, lower values increase speed
whole=$(( $BPM / 60.0 ))
half=$(( $whole / 2.0 ))
quarter=$(( $half / 2.0 ))
eight=$(( $quarter / 2.0 ))
sixnth=$(( $eight / 2.0 ))

# Instruments spec:
# play -q "[your sample]" speed $(( 2.0 ** $(( $1.0 / 12.0 )) )) &
# note values are 1 per semitone starting at 0, negative direction is lower and positive is higher.

# Drums can also be one-shots with no pitch value, instead opting to use the value as a sample selector.

# Example instruments:
inst1(){ # pitched instruments
    play -q "[your sample]" speed $(( 2.0 ** $(( $1.0 / 12.0 )) )) &
}

inst2(){ # non-pitched instruments
    play -q "$1.wav" gain -3 &
}

inst1(){ # multi-sample pitched instruments
    play -q "$2.wav" speed $(( 2.0 ** $(( $1.0 / 12.0 )) )) &
}

# Pattern spec:
# just format it however you want lmao
# but just make sure each pattern is a function

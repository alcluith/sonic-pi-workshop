# Welcome to Sonic Pi v2.1.1
# Sonic Pi version of the intro to Placebo's cover
# of "Running up that Hill" by Kate Bush
# Coded by Claire Quigley

use_bpm 90

#define note length values
quaver = 0.5 #Eight note
crotchet = 1 #Quarter note
minim = 2 #Half note
semibreve = 4 #Whole note


live_loop:heartbeat do
  6.times do
    sample :drum_bass_soft,  attack: 0,amp: 2, decay: 0.2,release: 0.05
    sleep (0.5)
    sample :drum_bass_soft,  attack: 0,amp: 2, decay: 0.2,release: 0.05
    sleep (0.25)
    sample :drum_bass_soft,  attack: 0, amp: 2,decay: 0.2,release: 0.05
    sleep (0.25)
  end
  sample :drum_bass_soft,  attack: 0,amp: 1, release: 0.05
  sleep (0.25)
  sample :drum_bass_soft,  attack: 0, amp: 1,decay: 0.1, release: 0.05
  sleep (0.25)
  sample :drum_bass_soft,  attack: 0, amp: 1,release: 0.05
  sleep (0.25)
  sample :drum_bass_soft,  attack: 0,amp: 1, release: 0.05
  sleep (0.25)
  sample :drum_bass_soft,  attack: 0,amp: 1, release: 0.05
  sleep (0.5)
  sample :drum_bass_soft,  attack: 0,amp: 1, release: 0.05
  sleep (0.25)
  sample :drum_bass_soft,  attack: 0,amp: 1, release: 0.05
  sleep (0.25)
end

live_loop:strings do
  use_synth :tb303
  play :c8, amp: 0.1, pan: 1
  sleep 0.25
  play :c8, amp: 0.1, pan: 1
  sleep 0.25
  play :c8, amp: 0.1, pan: 1
  sleep 0.25
  play :c8, amp: 0.1, pan: 0
  sleep 0.25
  play :c8, amp: 0.1, pan: 0
  sleep 0.25
  play :c8, amp: 0.1, pan: -1
  sleep 0.25
  play :c8, amp: 0.1, pan: -1
  sleep 0.25
  play :c8, amp: 0.1, pan: -1
  sleep 0.25
end

live_loop:intro_melody do
  use_synth :supersaw
  play :c4 , attack: 0.1, release: 2
  play :ef4 , attack: 0.1, release: 2
  sleep minim
  play_pattern_timed [:bf4, :g4, :c4], [ crotchet, quaver, quaver]
  sleep minim
  play_pattern_timed [:bf4, :g4, :c4], [crotchet, quaver, quaver]
  sleep minim
  play_pattern_timed [:bf4, :g4, :c4], [crotchet, quaver, quaver]
  sleep minim
  sleep quaver
  play_pattern_timed [:bf3, :c4,:ef4], [ quaver, quaver,quaver]
  sleep minim
  sleep crotchet
  play_pattern_timed [:bf4, :c4], [ quaver, quaver]
  sleep minim
  sleep crotchet
  play_pattern_timed [:bf4, :c4], [ quaver, quaver]
  sleep minim
  sleep crotchet
  play_pattern_timed [:g4, :f4,:ef4,:c4], [ crotchet, crotchet,quaver, quaver]
  sleep minim
end
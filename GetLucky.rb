########################################################################
# Get Lucky by Daft Punk
# live_loop version by Claire Quigley
# based on the original in-thread version here:
# https://github.com/juneauprojects/Sonic-Pi-Code/blob/master/Get%20Lucky.rb
########################################################################

use_bpm 60

live_loop :chords do
  use_synth :prophet
  use_synth_defaults release: 0.25, attack: 0.5, cutoff: 100
  
  with_fx :reverb do
    play chord(:A3, :minor)
    play :A2
    sleep 2
    play chord(:C4, :major)
    play :C3
    sleep 2
    play chord(:E3, :minor)
    play :E3
    sleep 2
    play chord(:D4, :major)
    play :D3
    sleep 2
    play chord(:A3, :minor)
    play :A2
    sleep 2
    play chord(:C4, :major)
    play :C3
    sleep 2
    play chord(:E3, :minor)
    play :E3
    sleep 2
    play chord(:D4, :major)
    play :Gb3
    sleep 2
  end
end


live_loop :tune do
  with_fx :krush do
    use_synth :prophet
    use_synth_defaults attack: 0.1, release: 0.2
    
    2.times do
      sleep 0.25
      play :C5
      sleep 0.25
      play :C5
      sleep 0.25
      play :C5
      sleep 0.125
      play :C5
      sleep 0.25
      play :C5
      sleep 0.125
      play :C5
      sleep 0.25
      play :D5
      sleep 0.5
    end
    sleep 0.25
    play :B4
    sleep 0.25
    play :B4
    sleep 0.25
    play :B4
    sleep 0.125
    play :B4
    sleep 0.25
    play :B4
    sleep 0.125
    play :B4
    sleep 0.25
    play :D5
    sleep 0.5
    sleep 0.25
    play :A4
    sleep 0.25
    play :A4
    sleep 0.25
    play :A4
    sleep 0.125
    play :A4
    sleep 0.25
    play :A4
    sleep 0.125
    play :B4
    sleep 0.25
    play :A4
    sleep 0.25
    play :G4
    sleep 0.25
  end
end


live_loop :drums do
  with_fx :compressor do
    3.times do
      sample :drum_heavy_kick
      sleep 0.5
      sample :drum_snare_hard
      sleep 0.5
      sample :drum_heavy_kick
      sleep 0.5
      sample :drum_snare_hard
      sleep 0.5
    end
    sample :drum_heavy_kick
    sleep 0.5
    sample :drum_snare_hard
    sleep 0.5
    sample :drum_heavy_kick
    sleep 0.25
    sample :drum_snare_hard
    sleep 0.25
    sample :drum_heavy_kick
    sleep 0.25
    sample :drum_snare_hard
    sleep 0.25
    
  end
end
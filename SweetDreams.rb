
##| "Sweet Dreams"
##| by the Eurythmics

##| Coded by Claire Quigley

use_bpm 60

sb = 2    # note that lasts 4 beats
m = 1     # note that lasts 2 beats
c = 0.5   # note that lasts 1 beat
q = 0.25  # note that lasts 1/2 a beat

#drum on every beat
live_loop :bass do
  with_fx :reverb, room: 0.5 do
    #strong beat on first beat in the bar
    sample :drum_bass_hard, amp: 2
    sleep 0.5
    # weaker beat on other 3 beats
    3.times do
      sample :drum_bass_hard
      sleep 0.5
    end
  end
end

sleep 2

sync :bass
live_loop :chords do
  with_fx :bitcrusher, amp:1.5 do
    ringone = ring(:r,:r, :g2, :g2, :bf2,
                   :bf2, :g2, :g2, :ef2,:r,
                   :ef2, :d2, :r, :r, :r,:r)
    use_synth :blade
    play ringone.tick
    sleep 0.25
  end
end

sleep 8

live_loop :verse1 do
  sync :chords
  with_fx :reverb, amp:1 do
    use_synth :blade
    use_synth_defaults  vibrato:1
    sleep 0.5
    ##| sweet dreams are made of this
    play_pattern_timed [:bf4,:bf4,:g4, :bf4, :bf4, :a],
      [c,    c,    c,   q,   c,   m-q + c]
    ##| who am i to disagree
    play_pattern_timed [:bf4,:bf4,:bf4,:g4, :bf4,:c5, :bf4, :a],
      [q,    c,   c+q,  c,    q,   c +q,  q,  c]
    ##| I've travelled the world  and the seven seas
    play_pattern_timed [:a4,:bf4,:bf4,:g4, :bf4,:bf4,:g4, :bf4,:bf4, :a4],
      [q,    q,  q,  q,    c,  c,q, q,  c,  m+q]
    ##| Everybody's looking for something
    play_pattern_timed [:bf4,:g4,:bf4,:g4, :bf4,:bf4,:c5, :bf4, :a4],
      [c,    q,  c,  c+q,    q,  q,q, c,    m-q]
    
  end
  
  use_synth :zawa
  use_synth_defaults amp:0.5, release: 0.5
  with_fx :bitcrusher do
    ##| some of them ...
    play_pattern_timed [:bf4,:bf4,:g4, :bf4, :g4,:bf4, :g],
      [q,    q,    c,   c,   q,   c ,m+c+q]
    
    ##| some of ...
    play_pattern_timed [:bf4,:bf4,:g4, :bf4,:bf4, :g4,:bf4,:c5,:bf4, :a],
      [q,    q,    c,   q,q,q,   c,c,   c ,m-q]
    ##| some of them...
    play_pattern_timed [:bf4,:bf4,:g4, :bf4, :g4,:bf4, :g],
      [q,    q,    c,   c,   q,   c ,m+c+q]
    
    ##| some of them...
    play_pattern_timed [:bf4,:bf4,:g4, :bf4, :g4,:bf4,:c5,:bf4, :a],
      [q,    q,    c,   c,q,   c,c,   c ,m-q]
    
  end
end


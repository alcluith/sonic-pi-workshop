##| "This is what you came for" - Calvin Harris
##| Claire Quigley, March 2017

q= 0.25
c = 0.5
m = 1
sb = 2

live_loop :beats do
  with_fx :wobble, phase: 0.25 do
    sample :bd_boom
    sleep 0.5
    sample :bd_haus
    sleep 0.25
    sample :bd_haus
    sleep 0.25
  end
end

live_loop :tune do
  sync :beats
  with_fx :lpf, cutoff: 100 do
    use_synth :zawa
    sleep 0.5
    play_pattern_timed [:e5, :a4,:a4,:a4,:a4,:a4,:a4,:g4 ],[c, m, q,q,q,q,c,c]
    sleep 0.5
    play_pattern_timed [:e5, :a4,:a4,:a4,:a4,:a4,:g4,:g4 ],[c, m, c,q,q,c,q,c+sb]
    sleep 1.5
    play_pattern_timed [:d5,:e5, :d5,:e5,:d5,:e5,:g5,:e5 ],[q,q, q,q,q,q,q,m]
    play_pattern_timed [:c5, :c5,:c5,:c5,:d5,:g4],[q,q ,q,q,c,sb]
  end
  sleep 6
end


live_loop :bass do
  sync :beats
  use_synth :piano
  2.times do
    play  chord(:a3, :minor)
    sleep 0.75
  end
  
  play  chord(:a3, :minor)
  sleep 0.5
  2.times do
    play  chord(:f3, :major)
    sleep 0.75
  end
  play  chord(:f3, :major)
  sleep 0.5
  2.times do
    play  chord(:c3, :major)
    sleep 0.75
  end
  play  chord(:c3, :major)
  sleep 0.5
  2.times do
    play  chord(:g3, :major)
    sleep 0.75
  end
  play  chord(:g3, :major)
  sleep 0.5
  
end

live_loop :basstwo do
  with_fx :reverb,amp:1.5 do
    with_fx :echo do
      use_synth :pluck
      play :a2
      sleep 2
      play :f2
      sleep 2
      play :c2
      sleep 2
      play :g2
      sleep 2
    end
  end
end



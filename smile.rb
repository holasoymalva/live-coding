# Welcome to Sonic Pi
use_bpm 120

detune = 0.7

# Definimos Acordes y melodia
acordes = chord(:e3, :m6)
acordesMenores = chord(:C, :m6)
melodia_1 = [:C,:D,:E,:F,:G,:A,:B,:C5,:C6,:D4]
melodia_2 = [:C4,:D6,:E4,:F4,:G6,:A,:B,:C,:C,:D]

live_loop :acordes do
  4.times do
    play_chord acordes
    sleep 1
  end
end

# Reproducir Melodia
live_loop :melodia_1 do
  play melodia_1.tick
  sleep 0.5
end

live_loop :melodia_2 do
  10.times do
    play melodia_2.tick
    sleep 1
  end
end

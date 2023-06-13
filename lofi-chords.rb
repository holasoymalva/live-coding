use_bpm 90

# Definir patrón de batería
live_loop :drums do
  sample :drum_bass_soft
  sleep 1
  sample :drum_snare_soft
  sleep 1
end

# Definir acordes y melodía
acordes = chord(:C4, :minor7)
melodia = [:C4, :Eb4, :G4, :Bb4, :e3]

# Reproducir acordes y melodía
live_loop :chords do
  play_chord acordes, release: 2
  sleep 2
end

live_loop :melody do
  with_fx :reverb, mix: 1 do
    5.times do
      play_pattern_timed melodia, [1, 1, 1, 1,1]
    end
  end
end

# Configuración inicial
use_bpm 120

# Definir patrón de batería
live_loop :drums do
  sample :drum_bass_hard
  sleep 0.5
  sample :drum_snare_hard
  sleep 0.5
end

# Definir acordes y melodía
acordes = chord(:C4, :minor)
melodia = [:C4, :Eb4, :G4, :Bb4]

# Reproducir acordes y melodía
live_loop :chords do
  with_synth :piano do
    play_chord acordes, release: 4, amp: 0.25
  end
  sleep 2
end

live_loop :melody do
  with_synth :blade do
    with_fx :echo, mix: 0.5, phase: 0.5 do
      play_pattern_timed melodia, [1, 1, 0.5, 0.5], release: 1.5, amp: 0.8
    end
  end
end

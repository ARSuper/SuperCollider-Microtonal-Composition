s.boot;

~playMelody = {
  var melodyDegrees = [0, 4, 7, 11];
  var duration = 0.3;

  melodyDegrees.do { |degree|
    var freq = ~edoFreq.value(degree);
    Synth(\microtonalSynth, [\out, 0, \freq, freq, \release, duration];
    duration.wait;
  };
};

Routine {
  inf.do {
    ~playRandomChords.value;
    7.0.wait;

    ~playMelody.value;
    1.0.wait;
  };
}.play;

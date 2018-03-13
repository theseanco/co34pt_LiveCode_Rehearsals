~r = {0}

p.clock.tempo = 1.45

d[\scale] = Scale.minor
(
~midiPattern = Pbind(
    \type, \midi,
    \midicmd, \noteOn,
	\midiout, d[\m],
    \chan, 0,
	\scale,Scale.chromatic,
    \root,Pkr(~r),
	\degree, Pseq([0,3,2,5,7],inf),
	\octave, 3,
	\dur, 0.25,
	\legato, 0.1
)
)


//today i'm going to be playing with phasing synths.

//I've been listening to a lot of Terry Riley, so i figured i'd see how some of those techniques can sound using my setup

//The synth is a Make Noise 0 Coast, a patchable standalone synth

//i'm starting from a basic patch that uses two DelayC Ugens to throw a pattern out of phase across two channels, like so

//i'm going to try and make something nice out of it.

//here goes.




~synthDry.stop

~delayx.play
~delayx = {Pan2.ar(Mix.ar(DelayC.ar(~synthDry.ar,4,(p.clock.tempo/4)*5,1)),1)}
~delay = {Pan2.ar(Mix.ar(DelayC.ar(~synthDry.ar,4,(p.clock.tempo/4)*5 + LFTri.kr(0.001).range(0,(p.clock.tempo/4)*5),1)),-1)}
~synthDry = {Pan2.ar(SoundIn.ar(0),0)};

~sin = Pbind(\instrument,\sinfb,\scale,d[\scale],\root,Pkr(~r),\octave,4,\degree,Pseq([0,2,4],inf),\dur,0.25,\amp,0.3,\fb,0.1,\rel,0.3);

~sin.stop


~k = Pbind(\instrument,\bplay,\buf,d["bk"][0],\dur,2,\amp,1);

~k.stop
~delay.play




(
~synthExt = {Out.ar(2,Pan2.ar(SoundIn.ar(0)))};
~synthDry = {Pan2.ar(SoundIn.ar(0),1)};
~synthWet = {SoundIn.ar([2,3],1.4)};
)



d[\m]
MIDIFunc.trace

~midiPattern.play
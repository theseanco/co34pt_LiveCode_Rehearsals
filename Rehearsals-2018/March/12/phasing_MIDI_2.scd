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
	\degree, Place([0,3,2,5,[7!10,12].flat],inf),
	\octave, 3,
	\dur, 0.25,
	\legato, 0.1
)
)
~delay2.stop
~synthDry.stop




(
~midiPattern = Pbind(
    \type, \midi,
    \midicmd, \noteOn,
	\midiout, d[\m],
    \chan, 0,
	\scale,Scale.major,
    \root,Pkr(~r),
	\degree, Place([[0!30,[3,4],0!15],[3!15,4!15,6!10,7!9].flat],inf),
	\octave, 3,
	\dur, 0.25,
	\legato, 0.1
)
)

d.keys

~k = Pbind(\instrument,\bplay,\buf,d["k"][9],\dur,Pseq([1,1.25],inf),\amp,1);


~k.clear
StageLimiter.deactivate

~r = {15}



(
~chords = Pbind(\instrument,\bpfsaw,
	\dur,Pwhite(4.5,7.0,inf),
	\scale,Scale.chromatic,
	\root,Pkr(~r),
	\octave,[2,3],
	\degree,0,
	\detune, Pexprand(0.05,0.2,inf),
	\cfmin,100,
	\cfmax,1500,
	\rqmin,Pexprand(0.02,0.15,inf),
	\atk,Pwhite(2.0,2.5,inf),
	\rel,Pwhite(6.5,10.0,inf),
	\ldb,12,
	\amp,Pwhite(0.1,2.0),
	\out,0)
)


(
SynthDef(\sinfb3, {
	arg freq = 440, atk = 0.01, sus = 0, rel = 1, fb = 0, amp = 0.3, out = 0, pan=0, det = 0;
	var sig,sig2,sig3, env;
	env = EnvGen.ar(Env.linen(atk,sus,rel),1,1,0,1,2);
	sig = SinOscFB.ar(freq,fb,1);
	sig2 = SinOscFB.ar(freq-det,fb,1);
	sig3 = SinOscFB.ar(freq+det,fb,1);
	sig = Mix.ar([sig,sig2,sig3])*env;
	Out.ar(out,Pan2.ar(sig,pan,amp));
}).add;
);


~sinfb = Pbind(\instrument,\sinfb3,\scale,d[\scale],\root,Pkr(~r),\octave,[2,3],\degree,0,\dur,1.25*8,\amp,0.3,\fb,0.8,\rel,0.3,\det,Pwhite(0.01,2),\atk,0.1,\rel,4);


~sinfb.play
~chords.play

//today i'm going to be playing with phasing synths.

//I've been listening to a lot of Terry Riley, so i figured i'd see how some of those techniques can sound using my setup

//The synth is a Make Noise 0 Coast, a patchable standalone synth

//i'm starting from a basic patch that uses two DelayC Ugens to throw a pattern out of phase across two channels, like so

//i'm going to try and make something nice out of it.

//here goes.



p.fadeTime = 4

~synthDry.stop
~chorus2.stop
~delay2.play

(
~delayx = {Pan2.ar(Mix.ar(DelayC.ar(~synthDry.ar,4,(p.clock.tempo/4)*5,1)),1,0.9)};
~delay = {Pan2.ar(Mix.ar(DelayC.ar(~synthDry.ar,4,(p.clock.tempo/4)*5 + LFTri.kr(0.0003).range(0,(p.clock.tempo/4)*5),1)),-0.9)};
~delay2 = {PitchShift.ar(Pan2.ar(Mix.ar(DelayC.ar(~synthDry.ar,4,(p.clock.tempo/4)*5 + LFTri.kr(0.0006).range(0,(p.clock.tempo/4)*5),1)),LFNoise1.kr(0.9).range(-1,1)),0.03,2,0.01,0.01)};
)
ProxyMixer.new(p)
~k = Pbind(\instrument,\bplay,\buf,d["k"][0],\dur,1.25*8,\amp,1);


d["k"][30].play~delay = {Pan2.ar(Mix.ar(DelayC.ar(~synthDry.ar,4,(p.clock.tempo/4)*5 + LFTri.kr(0.0003).range(0,(p.clock.tempo/4)*5),1)),-0.9)};


//oh no.

//that was fun tho.
~delay2.play


//adding some chorusing to try and beef up the channels a bit
(
~chorus = {PitchShift.ar(~delay.ar,0.2,0.995,0,0,0.8)};
~chorus2 = {PitchShift.ar(~delay.ar,0.2,0.99,0,0,0.8)};
~chorusx = {PitchShift.ar(~delayx.ar,0.2,1+LFNoise1.kr(0.1,0.01),0,0,0.8)}
~chorus2x = {PitchShift.ar(~delayx.ar,0.2,1+LFNoise1.kr(0.1,0.02),0,0,0.8)}
)

~delay.play

~chorus2x.play
~chorusx.play

~synthDry = {Pan2.ar(SoundIn.ar(0),0)};

~sin = Pbind(\instrument,\sinfb,\scale,d[\scale],\root,Pkr(~r),\octave,4,\degree,Pseq([0,2,4],inf),\dur,0.25,\amp,0.3,\fb,0.1,\rel,0.3);

~sin.stop


~k = Pbind(\instrument,\bplay,\buf,d["bk"][0],\dur,2,\amp,1);

~k.stop
~delay.play




(
~synthExt = {Out.ar(2,~delay.ar)};
~synthExt2 = {Out.ar(2,~delayx.ar)};
~synthDry = {Pan2.ar(SoundIn.ar(0),1)};
~synthWet = {SoundIn.ar([2,3],1.4)};
)

~synthExt2.play



d[\m]
MIDIFunc.trace

~midiPattern.play
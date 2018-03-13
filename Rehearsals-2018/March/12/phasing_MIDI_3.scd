p.clock.tempo = 1.4

~r = {5}

(
~midiPattern = Pbind(
    \type, \midi,
    \midicmd, \noteOn,
	\midiout, d[\m],
    \chan, 0,
	\scale,Scale.chromatic,
    \root,Pkr(~r),
	\degree, 0,
	\octave, 4,
	\dur, 0.25,
	\legato, 0.1
)
)


s.record

s.stopRecording
(
~midiPattern = Pbind(
    \type, \midi,
    \midicmd, \noteOn,
	\midiout, d[\m],
    \chan, 0,
	\scale,Scale.chromatic,
    \root,Pkr(~r),
	\degree, Place([0,[3!10].flat,2,5,[7!10,12,7!5,15,24].flat],inf),
	\octave, 4,
	\dur, 0.25,
	\legato, 0.1
)
)

~delay3 = {Pan2.ar(Mix.ar(DelayC.ar(~synthDry.ar,4,(p.clock.tempo/4)*10 + LFTri.kr(0.0006).range(0,(p.clock.tempo/4)*5),1)),LFNoise1.kr(0.9).range(-1,1)) * 0.2};
~delay4 = {Pan2.ar(Mix.ar(DelayC.ar(~synthDry.ar,4,(p.clock.tempo/4)*10 + LFTri.kr(0.0007).range(0,(p.clock.tempo/4)*5),1)),LFNoise1.kr(0.9).range(-1,1)) * 0.2};


~delay4.play

~chords2.stop(20)


~delay3.play

s.record

(
~delayx = {Pan2.ar(Mix.ar(DelayC.ar(~synthDry.ar,4,(p.clock.tempo/4)*5,1)),1,0.9)};
~delay = {Pan2.ar(Mix.ar(DelayC.ar(~synthDry.ar,4,(p.clock.tempo/4)*5 + LFTri.kr(0.0006).range(0,(p.clock.tempo/4)*5),1)),-0.9)};
)

(
~synthExt = {Out.ar(2,~delay.ar)};
~synthExt2 = {Out.ar(2,~delayx.ar)};
~synthDry = {Pan2.ar(SoundIn.ar(0),0)};
~synthWet = {SoundIn.ar([2,3],1.2)};
)

s.record


(
~synthWet.play;
~delay.play;
~delayx.play;
)

s.stopRecording
~k = Pbind(\instrument,\bplay,\buf,d["k"][32],\dur,1.25*4,\amp,0.4,\rate,0.6);


~k.play

//chords
(
~chords[0] = Pbind(\instrument,\bpfsaw,
	\dur,Pwhite(4.5,7.0,inf),
	\scale,Scale.chromatic,
	\root,Pkr(~r),
	\octave,[2,3],
	\degree,Pseq([0,0,0,0,5,5],inf),
	\detune, Pexprand(0.05,0.2,inf),
	\cfmin,100,
	\cfmax,1500,
	\rqmin,Pexprand(0.02,0.15,inf),
	\atk,Pwhite(2.0,2.5,inf),
	\pan,Pwhite(-0.8,0.8),
	\rel,Pwhite(6.5,10.0,inf),
	\ldb,12,
	\amp,Pwhite(0.8,3.0),
	\out,0)
)


~chords[10] = \filterIn -> {|in| LPF.ar(in,4000)}


ProxyMixer.new(p)

~r = {4}

~delay2 = {Pan2.ar(Mix.ar(DelayC.ar(~synthDry.ar,4,(p.clock.tempo/4)*5 + LFTri.kr(0.0006).range(0,(p.clock.tempo/4)*5),1)),LFNoise1.kr(0.9).range(-1,1))};

(
~sinfb = Pbind(\instrument,\sinfb,\scale,d[\scale],\root,Pkr(~r),\octave,3,\degree,0,\dur,1.25*Pseq([6,7,8,9,10],inf),\amp,0.08,\fb,1,\rel,4,\detune,[0,-0.1,1,2,-2],\atk,0.3);
~sinfb.play;
)

~sinfbsc = Pbind(\instrument,\sinfb,\scale,d[\scale],\root,Pkr(~r),\octave,4,\degree,Pseq([0,2,4,3,2,1],inf),\dur,0.25,\amp,0.2,\fb,0.1,\rel,0.1);



~sinfbsc.fadeTime = 5

~sinfbsc.play

~sinfbsc.play

s.stopRecording

~sinfb.play
~k.play
~delayx.fadeTime = 10

(
~delayx = {Pan2.ar(Mix.ar(DelayC.ar(~synthDry.ar,4,(p.clock.tempo/4)*5,1)),1,LFNoise1.kr(0.2))};
~delay = {Pan2.ar(Mix.ar(DelayC.ar(~synthDry.ar,4,(p.clock.tempo/4)*5 + LFTri.kr(0.0006).range(0,(p.clock.tempo/4)*5),1)),LFNoise1.kr(0.1))};
)


//DISSONANCE EMOTION SOMETHING
(
~chords2[0] = Pbind(\instrument,\bpfsaw,
	\dur,Pseq([6,7,32],inf),
	\scale,Scale.chromatic,
	\root,Pkr(~r),
	\octave,[6,5],
	\degree,Pseq([8,7],inf),
	\detune, Pexprand(0.05,0.2,inf),
	\cfmin,100,
	\cfmax,1500,
	\rqmin,Pexprand(0.02,0.15,inf),
	\atk,Pwhite(2.0,2.5,inf),
	\rel,Pwhite(6.5,10.0,inf),
	\ldb,12,
	\pan,Pwhite(-0.8,0.8),
	\amp,Pwhite(0.8,2.0),
	\out,0);
~chords2[10] = \filterIn -> {|in| LPF.ar(in,5000)};
~chords2.play;
)

~sinfb.stop(10)


~k.stop

~glitt.stop

s.stopRecording

d.keys
(
~glitt[0] = Pbind(\instrument,\bplay,\buf,d["glitt"][5],\dur,1.25*Pseq([3,4,5],inf),\amp,5);
~glitt[10] = \filterIn -> {|in| FreeVerb.ar(in,0.33,0.9)};
~glittSend = {Out.ar(2,~glitt)};
~glitt.play
)


~k.stop(5)

~glittSend.clear

s.stopRecording

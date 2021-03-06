//5-6th March 2018
//Rehearsal inspired by Aix by Guiseppe Ielasi

History.start
History.saveCS("History6thMarch".resolveRelative)
History.document

s.boot

(
SynthDef(\bplay,
	{arg out = 0, buf = 0, rate = 1, amp = 0.5, pan = 0, pos = 0, rel=15;
		var sig,env ;
		sig = Mix.ar(PlayBuf.ar(2,buf,BufRateScale.ir(buf) * rate,1,BufDur.kr(buf)*pos*44100,doneAction:2));
		env = EnvGen.ar(Env.linen(0.0,rel,0),doneAction:2);
		sig = sig * env;
		sig = sig * amp;
		Out.ar(out,Pan2.ar(sig,pan));
}).add;

SynthDef(\vplay,
	{arg out = 0, buf = 0, rate = 1, amp = 0.5, pan = 0, atk=0.0, sus=1, rel= 0, pos=0;
		var sig, env;
		sig = Pan2.ar(PlayBuf.ar(2,buf,BufRateScale.ir(buf) * rate,1,BufDur.kr(buf)*pos*44100,doneAction:2),pan);
		env = EnvGen.ar(Env.linen(atk,sus,rel,1),doneAction:2);
		sig = sig * env;
		sig = sig * amp;
		Out.ar(out,sig);
}).add;
)

p = ProxySpace.push(s)
d = Dictionary.new
//function to add folders to a dictionary
(
d[\addFolder] = {
	arg string = "", path = "";
	d.add(string -> List.new);
	path = PathName(path);
	for(0, path.entries.size-1,
		{arg i;
			d[string].add(
				Buffer.read(s,path.entries[i].fullPath)
			);
})}
)

(
d[\addFolder].("perc",thisProcess.nowExecutingPath.dirname ++ "/Percussion");

d[\addFolder].("gesture",thisProcess.nowExecutingPath.dirname ++ "/Gestures");

d[\addFolder].("longSound",thisProcess.nowExecutingPath.dirname ++ "/LongSound");

d[\addFolder].("kick",thisProcess.nowExecutingPath.dirname ++ "/kick");
)


//today i'm going to be trying to make mini-sequences using L-systems and a dictionary of electroacoustic sounds
//like these ones

d["perc"][10].play
d["gesture"][9].play

//and maybe some longer sounds
d["longSound"][1].play

//and maybe some kicks
d["kick"][0].play

s.meter

//I have a starting l-system here

(
l = Prewrite(0.25,
		(
			0.25: #[0.25,0.25,0.75],
			0.75: #[0.125,0.125,0.8],
			0.8: #[0,0,0],
			0: #[0.125, 0.125, 0.1],
		0.1: #[0.75]
	),80);
~perc = Pbind(
	\instrument,\bplay,
	\index,Place([
		[7!3,1].flat
		,[7!4,1].flat
		,[7!5,1].flat
	],inf),
	\buf,Pfunc({|e| d["perc"][e.index]}),
	\dur,l,
	\amp,0.5,
	\rate,Pseq([1,1.01,1.02],inf)
)
)

d["perc"][7].play
~perc.play

//storing percussion patterns in a dictionary for further reference
(
d[\originalPerc] = {
	~perc = Pbind(
	\instrument,\bplay,
	\index,Place([
		[1!11,10,1!3,2,7!2].flat
		,[8!8,9,4,5,7!2].flat
		,[3!5,13,3!4,3,3!4,2,7!2].flat
	],inf),
	\buf,Pfunc({|e| d["perc"][e.index]}),
	\dur,l,
	\amp,0.5
)
};
d[\clickPitch] = {
	~perc = Pbind(
	\instrument,\bplay,
	\index,Place([
		[7!3,1].flat
		,[7!4,1].flat
		,[7!5,1].flat
	],inf),
	\buf,Pfunc({|e| d["perc"][e.index]}),
	\dur,l,
	\amp,0.5,
	\rate,Pseq([1,1.01,1.02],inf)
)
};
d[\sparse] = {
	~perc = Pbind(
	\instrument,\bplay,
	\index,Place([
		[4].flat
		,[4].flat
		,[4!3,12].flat
	],inf),
	\buf,Pfunc({|e| d["perc"][e.index]}),
	\dur,l*2,
	\amp,0.5,
	\rate,Pseq([1,1.01,1.02],inf)
)
}
)

d["perc"][12].play

d[\originalPerc].()

~perc.stop

d["gesture"][11].play

(
//sequencing the playback of pattterns and gaps
Tdef(\sequence,
	{
		loop{
			~perc.play;
			rrand(30,60).wait;
			~perc.stop;
			"halt".postln;
			d["gesture"][[11,3,6]].choose.play;
			rrand(5,20).wait;
			[d[\originalPerc],0,d[\clickPitch],d[\sparse]].choose.();
}})
)

~perc.stop

//going to stop here for now



~kick = Pbind(\instrument,\bplay,\buf,d["kick"][0],\dur,2,\amp,0.8)

~kick.play

d[\originalPerc]
[0,d[\originalPerc],d[\clickPitch]].choose.()

~quiet2.stop(4)

~perc.stop

d["gesture"][3].play

Tdef(\sequence).play
//time to add some gaps

~perc[2] = \filterIn -> {|in| FreeVerb.ar(in)}
~perc[2].clear


(
~quiet = Pbind(\instrument,\vplay,
	\buf,d["longSound"][0],
	\amp,Pwhite(0.1,0.4),
	\pos,Pwhite(0,0.5),
	\atk,Pwhite(1,5),
	\sus,Pwhite(1,10),
	\rel,Pwhite(1,5),
	\rate,1
)
)
~quiet2.play

(
~quiet2 = Pbind(\instrument,\vplay,
	\buf,d["longSound"][1],
	\amp,Pwhite(0.1,0.4),
	\pos,Pwhite(0,0.5),
	\atk,Pwhite(1,5),
	\sus,Pwhite(5,20),
	\rel,Pwhite(1,5),
	\dur,Pwhite(4,32),
	\rate,1
)
)

~quiet2.play
~perc.stop(10)
//some backup low sounds

//so the original sounds occasionally come back and then are interrupted by other sounds, particularly that nice click.


//I'd like the alternate sounds to move out of phase with each other

~perc.stop


//this is nice as an emphasis
d["perc"][13].play
//nice for a replacement of the first sound
d["perc"][10].play
d["perc"][7].play
d["perc"][3].play
d["perc"][2].play
d["perc"][8].play
d["perc"][5].play

//the way these rhythms shift is lovely, but I want to create alternate sequences within this rhythmic grid.
//this is going to be a boring rehearsal, but there's something i'm looking to make with these patterns.

~perc.play


s.meter

//starting pattern
d["perc"][1].play
d["perc"][8].play
d["perc"][3].play

d["perc"][13].play

(
~kick = Pbind(\instrument,\bplay,
	\buf,d["kick"][0],
	\amp,0.7,
	\dur,0.7,
)
)

~kick.play

~perc.play

(
~longSound = Pbind(\instrument,\vplay,
	\buf,d["longSound"][1],
	\atk,Pwhite(1,5),
	\sus,Pwhite(1,10),
	\rel,Pwhite(1,5),
	\rate,0.5,
	\pos,Pwhite(0,0.7),
	\dur,Pwhite(1,6.0),
	\pan,Pwhite(-1,1.0),
	\amp,Pwhite(0.5,1.0)
)
)


~perc.play
~longSound.play


Pseq([1,2,3,4,5],inf)

//create dictionary entry with frequencies
d = Dictionary.new
d["numbers"] = [100,220,460,880,900]

//sequence values within that dictionary using Pseq and specifing which value to reference, it's ugly as hell
~one = Pbind(\freq,Pseq([d["numbers"][3], d["numbers"][4], d["numbers"][3]],inf))
~one.play

//is there a way to do something like this to do the same thing?
~one = Pbind(\numbers,Pseq([3,4,3],inf),\freq,Pfunc({|e| d["numbers"][e.numbers]}))
~one.play



d["longSound"][1].play

s.scope


~perc.play
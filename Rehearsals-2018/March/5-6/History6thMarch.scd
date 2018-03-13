///////////////////////////////////////////////////
// History, as it was on Thu Mar  8 12:36:16 2018.
///////////////////////////////////////////////////

// - 0:0:0 -
s.boot

// - 0:0:45.4 -
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

// - 0:0:47.72 -
p = ProxySpace.push(s)

// - 0:0:48.24 -
d = Dictionary.new

// - 0:0:50.02 -
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

// - 0:0:52.12 -
(
d[\addFolder].("perc",thisProcess.nowExecutingPath.dirname ++ "/Percussion");

d[\addFolder].("gesture",thisProcess.nowExecutingPath.dirname ++ "/Gestures");

d[\addFolder].("longSound",thisProcess.nowExecutingPath.dirname ++ "/LongSound");

d[\addFolder].("kick",thisProcess.nowExecutingPath.dirname ++ "/kick");
)

// - 0:1:34.87 -
d["perc"][0].play

// - 0:1:37.74 -
d["perc"][5].play

// - 0:1:38.63 -
d["perc"][9].play

// - 0:1:42.87 -
d["perc"][14].play

// - 0:1:43.98 -
d["perc"][12].play

// - 0:1:45.25 -
d["perc"][11].play

// - 0:1:46.38 -
d["perc"][10].play

// - 0:1:52.21 -
d["gesture"][10].play

// - 0:1:54.21 -
d["gesture"][14].play

// - 0:1:55.18 -
d["gesture"][11].play

// - 0:1:57.56 -
d["gesture"][3].play

// - 0:2:0.35 -
d["gesture"][5].play

// - 0:2:1.19 -
d["gesture"][9].play

// - 0:2:16.65 -
d["longSound"][1].play

// - 0:2:25.41 -
d["kick"][0].play

// - 0:2:25.59 -
d["kick"][0].play

// - 0:2:25.72 -
d["kick"][0].play

// - 0:2:26.12 -
d["kick"][0].play

// - 0:2:28.37 -
s.meter

// - 0:2:56.33 -
(
l = Prewrite(0.25,
		(
			0.25: #[0.25,0.25,0.75],
			0.75: #[0.125,0.125,0.8],
			0.8: #[0,0,0],
			0: #[0.125, 0.125, 0.1]
	),80);
~perc = Pbind(
	\instrument,\bplay,
	\index,Pseq([1,8,3],inf),
	\buf,Pfunc({|e| d["perc"][e.index]}),
	\dur,l,
	\amp,0.5
)
)

// - 0:2:58.56 -
~perc.play

// - 0:2:59.64 -
StageLimiter.activate

// - 0:4:0.17 -
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
	\index,Pseq([1,8,3],inf),
	\buf,Pfunc({|e| d["perc"][e.index]}),
	\dur,l,
	\amp,0.5
)
)

// - 0:4:8.81 -
~perc.stop

// - 0:4:12.89 -
d["perc"][13]

// - 0:4:14.46 -
d["perc"][13].play

// - 0:4:47.87 -
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
	\index,Place([1,8,[3!5,13]],inf),
	\buf,Pfunc({|e| d["perc"][e.index]}),
	\dur,l,
	\amp,0.5
)
)

// - 0:4:50.77 -
~perc.play

// - 0:5:7.92 -
3!5

// - 0:5:19.24 -
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
	\index,Place([1,8,[3,3,3,3,13]],inf),
	\buf,Pfunc({|e| d["perc"][e.index]}),
	\dur,l,
	\amp,0.5
)
)

// - 0:5:30.63 -
~perc.stop

// - 0:5:33.68 -
d["perc"][13].play

// - 0:5:59.71 -
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
	\index,Place([1,8,[3!5,13].flat],inf),
	\buf,Pfunc({|e| d["perc"][e.index]}),
	\dur,l,
	\amp,0.5
)
)

// - 0:6:2.17 -
~perc.play

// - 0:6:18.76 -
~perc.stop

// - 0:6:24.83 -
d["perc"][11].play

// - 0:6:28.65 -
d["perc"][10].play

// - 0:6:58.31 -
[[1!11,10],[3!5,13]]

// - 0:7:0.8 -
[[1!11,10],[3!5,13]].flatten

// - 0:7:49.68 -
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
		[1!11,10].flat
		,8
		,[3!5,13].flat
	],inf),
	\buf,Pfunc({|e| d["perc"][e.index]}),
	\dur,l,
	\amp,0.5
)
)

// - 0:7:52.13 -
~perc.play

// - 0:8:28.71 -
~perc.stop

// - 0:8:30.25 -
d["perc"][10].play

// - 0:8:53.36 -
d["perc"][1].play

// - 0:8:56.4 -
d["perc"][0].play

// - 0:8:57.85 -
d["perc"][5].play

// - 0:8:58.93 -
d["perc"][3].play

// - 0:8:59.82 -
d["perc"][3].play

// - 0:9:0.37 -
d["perc"][4].play

// - 0:9:1.76 -
d["perc"][3].play

// - 0:9:20.81 -
d["perc"][8].play

// - 0:9:24.89 -
d["perc"][9].play

// - 0:9:41.38 -
d["perc"][6].play

// - 0:9:42.28 -
d["perc"][5].play

// - 0:9:43.09 -
d["perc"][4].play

// - 0:9:43.95 -
d["perc"][5].play

// - 0:9:44.64 -
d["perc"][4].play

// - 0:9:45.69 -
d["perc"][5].play

// - 0:9:46.35 -
d["perc"][4].play

// - 0:10:1.68 -
d["perc"][4].play

// - 0:10:2.65 -
d["perc"][5].play

// - 0:10:6.52 -
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
		[1!11,10].flat
		,[8!8,9,4,5].flat
		,[3!5,13,3!4,3].flat
	],inf),
	\buf,Pfunc({|e| d["perc"][e.index]}),
	\dur,l,
	\amp,0.5
)
)

// - 0:10:8.32 -
~perc.play

// - 0:11:16.8 -
~perc.stop

// - 0:11:22.67 -
d["perc"][2].play

// - 0:11:36.84 -
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
		[1!11,10,1!3,2].flat
		,[8!8,9,4,5].flat
		,[3!5,13,3!4,3,3!4,2].flat
	],inf),
	\buf,Pfunc({|e| d["perc"][e.index]}),
	\dur,l,
	\amp,0.5
)
)

// - 0:11:42.32 -
d["perc"][5]

// - 0:11:44.78 -
d["perc"][5].play

// - 0:11:47.18 -
d["perc"][0].play

// - 0:11:47.71 -
d["perc"][1].play

// - 0:11:48.17 -
d["perc"][2].play

// - 0:11:48.62 -
d["perc"][3].play

// - 0:11:49.21 -
d["perc"][4].play

// - 0:11:49.72 -
d["perc"][5].play

// - 0:11:50.31 -
d["perc"][6].play

// - 0:11:51.33 -
d["perc"][8].play

// - 0:11:52.36 -
d["perc"][7].play

// - 0:11:53.98 -
d["perc"][7].play

// - 0:12:5.78 -
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
		[1!11,10,1!3,2,7!2].flat
		,[8!8,9,4,5,7!2].flat
		,[3!5,13,3!4,3,3!4,2,7!2].flat
	],inf),
	\buf,Pfunc({|e| d["perc"][e.index]}),
	\dur,l,
	\amp,0.5
)
)

// - 0:12:7.56 -
~perc.play

// - 0:13:28.28 -
//so the original sounds occasionally come back and then are interrupted by other sounds, particularly that nice click.

// - 0:14:47.92 -
(
~quiet = Pbind(\instrument,\vplay,
	\buf,d["longSound"][0],
	\amp,0.1,
	\pos,Pwhite(0,0.5),
	\atk,Pwhite(1,5),
	\sus,Pwhite(1,10),
	\rel,Pwhite(1,5)
)
)

// - 0:14:51.13 -
~quiet.play

// - 0:15:1.86 -
~perc.stop(10)

// - 0:15:55.1 -
(
~quiet = Pbind(\instrument,\vplay,
	\buf,d["longSound"][0],
	\amp,Pwhite(0.1,0.4),
	\pos,Pwhite(0,0.5),
	\atk,Pwhite(1,5),
	\sus,Pwhite(1,10),
	\rel,Pwhite(1,5)
)
)

// - 0:16:15.65 -
(
~quiet = Pbind(\instrument,\vplay,
	\buf,d["longSound"][0],
	\amp,Pwhite(0.1,0.4),
	\pos,Pwhite(0,0.5),
	\atk,Pwhite(1,5),
	\sus,Pwhite(1,10),
	\rel,Pwhite(1,5),
	\rate,Pwhite(0.8,1)
)
)

// - 0:16:35.33 -
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

// - 0:16:38.97 -
~perc.play

// - 0:17:8.91 -
~perc = \filterIn -> {|in| FreeVerb.ar(in)}

// - 0:17:18.28 -
~perc = \filterIn -> {|in| FreeVerb.ar(in)}

// - 0:17:24.53 -
~perc[2] = \filterIn -> {|in| FreeVerb.ar(in)}

// - 0:17:31.39 -
(
l = Prewrite(0.25,
		(
			0.25: #[0.25,0.25,0.75],
			0.75: #[0.125,0.125,0.8],
			0.8: #[0,0,0],
			0: #[0.125, 0.125, 0.1],
		0.1: #[0.75]
	),80);
~perc[0] = Pbind(
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
)

// - 0:17:43.58 -
~perc[2].clear

// - 0:17:45.82 -
(
l = Prewrite(0.25,
		(
			0.25: #[0.25,0.25,0.75],
			0.75: #[0.125,0.125,0.8],
			0.8: #[0,0,0],
			0: #[0.125, 0.125, 0.1],
		0.1: #[0.75]
	),80);
~perc[0] = Pbind(
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
)

// - 0:17:50.24 -
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
		[1!11,10,1!3,2,7!2].flat
		,[8!8,9,4,5,7!2].flat
		,[3!5,13,3!4,3,3!4,2,7!2].flat
	],inf),
	\buf,Pfunc({|e| d["perc"][e.index]}),
	\dur,l,
	\amp,0.5
)
)

// - 0:18:4.51 -
(
~quiet2 = Pbind(\instrument,\vplay,
	\buf,d["longSound"][0],
	\amp,Pwhite(0.1,0.4),
	\pos,Pwhite(0,0.5),
	\atk,Pwhite(1,5),
	\sus,Pwhite(1,10),
	\rel,Pwhite(1,5),
	\rate,1
)
)

// - 0:18:9.36 -
(
~quiet2 = Pbind(\instrument,\vplay,
	\buf,d["longSound"][1],
	\amp,Pwhite(0.1,0.4),
	\pos,Pwhite(0,0.5),
	\atk,Pwhite(1,5),
	\sus,Pwhite(1,10),
	\rel,Pwhite(1,5),
	\rate,1
)
)

// - 0:18:15.25 -
~quiet2.play

// - 0:18:33.82 -
(
~quiet2 = Pbind(\instrument,\vplay,
	\buf,d["longSound"][1],
	\amp,Pwhite(0.1,0.4),
	\pos,Pwhite(0,0.5),
	\atk,Pwhite(1,5),
	\sus,Pwhite(1,10),
	\rel,Pwhite(1,5),
	\dur,Pwhite(4,32),
	\rate,1
)
)

// - 0:19:21.2 -
~quiet.stop

// - 0:20:9.08 -
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
}
)

// - 0:20:18.42 -
d[\originalPerc].()

// - 0:20:19.05 -
d[\originalPerc].()

// - 0:20:19.52 -
d[\originalPerc].()

// - 0:20:20.08 -
d[\originalPerc].()

// - 0:20:20.67 -
d[\originalPerc].()

// - 0:20:23.55 -
~perc.stop

// - 0:21:6.51 -
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

// - 0:21:18.22 -
d["gesture"][0].play

// - 0:21:20.68 -
d["gesture"][4].play

// - 0:21:22.35 -
d["gesture"][8].play

// - 0:21:24.37 -
d["gesture"][10].play

// - 0:23:7.36 -
(
//sequencing the playback of pattterns and gaps
Tdef(\sequence,
	{
		loop{
			d[\originalPerc].();
			~perc.play;
			30.wait;
			~perc.stop;
			d["gesture"][11].play;
			11.wait;
}})
)

// - 0:23:11.32 -
Tdef(\sequence).play

// - 0:25:2.8 -
(
//sequencing the playback of pattterns and gaps
Tdef(\sequence,
	{
		d[\originalPerc].();
		{
			~perc.play;
			rrand(30,60).wait;
			~perc.stop(1);
			d["gesture"][11].play;
			11.wait;
			~perc.play;
}})
)

// - 0:25:5.91 -
Tdef(\sequence).play

// - 0:25:29.42 -
(
//sequencing the playback of pattterns and gaps
Tdef(\sequence,
	{
		d[\originalPerc].();
		loop{
			~perc.play;
			rrand(30,60).wait;
			~perc.stop(1);
			d["gesture"][11].play;
			11.wait;
			~perc.play;
}})
)

// - 0:26:27.68 -
~perc.stop

// - 0:26:36.36 -
d["gesture"][11]

// - 0:26:40.64 -
d["gesture"][11].play

// - 0:26:43.62 -
d["gesture"][10].play

// - 0:26:44.97 -
d["gesture"][18].play

// - 0:26:46 -
d["gesture"][8].play

// - 0:26:47.51 -
d["gesture"][6].play

// - 0:26:50.15 -
d["gesture"][4].play

// - 0:26:51.27 -
d["gesture"][3].play

// - 0:27:3.26 -
(
//sequencing the playback of pattterns and gaps
Tdef(\sequence,
	{
		d[\originalPerc].();
		loop{
			~perc.play;
			rrand(30,60).wait;
			~perc.stop(0.4);
			d["gesture"][11,3,6].choose.play;
			11.wait;
			~perc.play;
}})
)

// - 0:28:27.35 -
~quiet2.stop(40)

// - 0:28:30.18 -
~quiet2.stop(4)

// - 0:28:44.17 -
d["gesture"][[11,3,6].choose].play;

// - 0:28:44.49 -
d["gesture"][[11,3,6].choose].play;

// - 0:28:44.96 -
d["gesture"][[11,3,6].choose].play;

// - 0:28:51.11 -
(
//sequencing the playback of pattterns and gaps
Tdef(\sequence,
	{
		d[\originalPerc].();
		loop{
			~perc.play;
			rrand(30,60).wait;
			~perc.stop(0.4);
			d["gesture"][[11,3,6]].choose.play;
			11.wait;
			~perc.play;
}})
)

// - 0:29:20.25 -
d["perc"][7].play

// - 0:29:20.67 -
d["perc"][7].play

// - 0:29:21.02 -
d["perc"][7].play

// - 0:29:21.33 -
d["perc"][7].play

// - 0:29:21.76 -
d["perc"][7].play

// - 0:30:15.5 -
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
	\rate,Pseq([1,0.9,0.8,0.7],inf)
)
)

// - 0:30:16.64 -
~perc.play

// - 0:31:9.17 -
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

// - 0:31:44.27 -
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
}
)

// - 0:32:19.67 -
{[d[\originalPerc].(),d[\clickPitch].()].choose}

// - 0:32:20.71 -
{[d[\originalPerc].(),d[\clickPitch].()].choose}

// - 0:32:23.63 -
{[d[\originalPerc].(),d[\clickPitch].()].choose}.()

// - 0:32:28.02 -
{[d[\originalPerc].(),d[\clickPitch].()].choose}.()

// - 0:32:30.59 -
{[d[\originalPerc].(),d[\clickPitch].()].choose}.()

// - 0:32:31.66 -
{[d[\originalPerc].(),d[\clickPitch].()].choose}.()

// - 0:32:32.64 -
{[d[\originalPerc].(),d[\clickPitch].()].choose}.()

// - 0:32:33.6 -
{[d[\originalPerc].(),d[\clickPitch].()].choose}.()

// - 0:32:34.48 -
{[d[\originalPerc].(),d[\clickPitch].()].choose}.()

// - 0:32:35 -
{[d[\originalPerc].(),d[\clickPitch].()].choose}.()

// - 0:32:35.49 -
{[d[\originalPerc].(),d[\clickPitch].()].choose}.()

// - 0:32:35.95 -
{[d[\originalPerc].(),d[\clickPitch].()].choose}.()

// - 0:32:36.41 -
{[d[\originalPerc].(),d[\clickPitch].()].choose}.()

// - 0:32:40.63 -
{[d[\originalPerc],d[\clickPitch]].choose}.()

// - 0:32:42.52 -
{[d[\originalPerc],d[\clickPitch]].choose}.()

// - 0:32:44.25 -
{[d[\originalPerc],d[\clickPitch]].choose}.()

// - 0:32:49.74 -
d[\originalPerc]

// - 0:32:58.09 -
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
);

// - 0:33:0.8 -
d[\originalPerc].()

// - 0:33:8.26 -
{[d[\originalPerc],d[\clickPitch]].choose}.()

// - 0:33:11.11 -
{[d[\originalPerc],d[\clickPitch]].choose}.()

// - 0:33:19.05 -
[d[\originalPerc],d[\clickPitch]].choose.()

// - 0:33:20.09 -
[d[\originalPerc],d[\clickPitch]].choose.()

// - 0:33:38.1 -
[0,d[\originalPerc],d[\clickPitch]].choose.()

// - 0:33:38.36 -
[0,d[\originalPerc],d[\clickPitch]].choose.()

// - 0:33:38.5 -
[0,d[\originalPerc],d[\clickPitch]].choose.()

// - 0:33:38.62 -
[0,d[\originalPerc],d[\clickPitch]].choose.()

// - 0:33:38.75 -
[0,d[\originalPerc],d[\clickPitch]].choose.()

// - 0:33:38.91 -
[0,d[\originalPerc],d[\clickPitch]].choose.()

// - 0:33:39.07 -
[0,d[\originalPerc],d[\clickPitch]].choose.()

// - 0:33:39.22 -
[0,d[\originalPerc],d[\clickPitch]].choose.()

// - 0:33:55.73 -
(
//sequencing the playback of pattterns and gaps
Tdef(\sequence,
	{
		d[\originalPerc].();
		loop{
			~perc.play;
			rrand(30,60).wait;
			~perc.stop(0.4);
			d["gesture"][[11,3,6]].choose.play;
			11.wait;
			[d[\originalPerc],0,d[\clickPitch]].choose.();
			~perc.play;
}})
)

// - 0:34:0.38 -
~quiet.play

// - 0:34:1.61 -
~quiet2.play

// - 0:35:45.18 -
~kick = Pbind(\instrument,\bplay,\buf,d["kick"][0],\dur,2)

// - 0:35:47.08 -
~k.play

// - 0:35:51.9 -
~kick.play

// - 0:35:57.92 -
~kick = Pbind(\instrument,\bplay,\buf,d["kick"][0],\dur,2)

// - 0:36:1.89 -
~kick = Pbind(\instrument,\bplay,\buf,d["kick"][0],\dur,2,\amp,0.8)

// - 0:36:23.63 -
Tdef(\sequence).play

// - 0:36:25.11 -
(
//sequencing the playback of pattterns and gaps
Tdef(\sequence,
	{
		d[\originalPerc].();
		loop{
			~perc.play;
			rrand(30,60).wait;
			~perc.stop(0.4);
			"halt".postln;
			d["gesture"][[11,3,6]].choose.play;
			11.wait;
			[d[\originalPerc],0,d[\clickPitch]].choose.();
			~perc.play;
}})
)

// - 0:37:30.46 -
(
//sequencing the playback of pattterns and gaps
Tdef(\sequence,
	{
		d[\originalPerc].();
		loop{
			~perc.play;
			rrand(30,60).wait;
			~perc.stop(0.4);
			"halt".postln;
			d["gesture"][[11,3,6]].choose.play;
			11.wait;
			[d[\originalPerc],0,d[\clickPitch]].choose.();
			~perc.play;
}})
)

// - 0:37:34.25 -
Tdef(\sequence).play

// - 0:38:29.52 -
(
//sequencing the playback of pattterns and gaps
Tdef(\sequence,
	{
		d[\originalPerc].();
		loop{
			~perc.play;
			rrand(30,60).wait.postln;
			~perc.stop(0.4);
			"halt".postln;
			d["gesture"][[11,3,6]].choose.play;
			rrand(5,20).wait;
			[d[\originalPerc],0,d[\clickPitch]].choose.();
			~perc.play;
}})
)

// - 0:38:46.62 -
d["perc"][4]

// - 0:38:48.02 -
d["perc"][4].play

// - 0:38:48.33 -
d["perc"][4].play

// - 0:38:48.69 -
d["perc"][4].play

// - 0:38:50.11 -
d["perc"][4].play

// - 0:38:50.57 -
d["perc"][4].play

// - 0:38:50.94 -
d["perc"][4].play

// - 0:39:0.87 -
d["perc"][9].play

// - 0:39:2.2 -
d["perc"][10].play

// - 0:39:3.43 -
d["perc"][12].play

// - 0:39:4.78 -
d["perc"][12].play

// - 0:39:14.75 -
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

// - 0:39:23.47 -
(
//sequencing the playback of pattterns and gaps
Tdef(\sequence,
	{
		d[\originalPerc].();
		loop{
			~perc.play;
			rrand(30,60).wait.postln;
			~perc.stop;
			"halt".postln;
			d["gesture"][[11,3,6]].choose.play;
			rrand(5,20).wait;
			[d[\originalPerc],0,d[\clickPitch]].choose.();
			~perc.play;
}})
)

// - 0:40:10.36 -
Tdef(\sequence).stop

// - 0:40:20.62 -
~perc.stop

// - 0:40:22.23 -
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

// - 0:40:24.92 -
Tdef(\sequence).play


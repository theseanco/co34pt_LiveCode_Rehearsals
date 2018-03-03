///////////////////////////////////////////////////
// History, as it was on Sat Mar  3 14:24:11 2018.
///////////////////////////////////////////////////

// - 0:0:0 -
(
 //increase number of buffers the server has access to for loading samples
 s.options.numBuffers = 1024 * 16;
 //increase the memory available to the server
 s.options.memSize = 8192 * 64;
 //boot the server
 s.boot;
 //display the oscilloscope
 s.scope;
 //start proxyspace
 p=ProxySpace.push(s);
 //start tempo clock
 p.makeTempoClock;
 //give proxyspace a tempo
 p.clock.tempo = 2;
 Task({
 	3.wait;
  	d = Dictionary.new;
  	d.add(\foldernames -> PathName(thisProcess.nowExecutingPath.dirname +/+ "../samples/set2").entries);
	for (0, d[\foldernames].size-1,
		{arg i; d.add(d[\foldernames][i].folderName -> d[\foldernames][i].entries.collect({
			arg sf;
			Buffer.read(s,sf.fullPath);
		});
	)});
  	("SynthDefs.scd").loadRelative;
  	//loads snippets from setup folder
  	("Snippets.scd").loadRelative;
 	//wait, because otherwise it won't work for some reason
 	3.wait;
  	//activate StageLimiter - Part of the BatLib quark
  	StageLimiter.activate;
  	"Setup done!".postln;
 }).start;
 )

// - 0:0:21.71 -
(
d[\addFolderMono] = {
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

// - 0:0:24.2 -
(
d[\addFolderMono] = {
	arg string = "", path = "";
	d.add(string -> List.new);
	path = PathName(path);
	for(0, path.entries.size-1,
		{arg i;
			d[string].add(
				Buffer.readChannel(s,path.entries[i].fullPath,0,-1,0)
			);
})}
)

// - 0:0:26.18 -
d[\addFolderMono].("guitarMono",thisProcess.nowExecutingPath.dirname ++ "/Prepared Guitar")

// - 0:0:27.83 -
(
var envWindow = Env([0, 1, 0], [0.01, 0.1], \welch), bufEnv;
bufEnv = Buffer.sendCollection(s,envWindow.discretize,1);
~one = {GrainBuf.ar(2,Impulse.kr(SinOsc.kr(0.1).range(0.1,5)),0.1,d["guitarMono"][6],1,0.5 + LFNoise1.kr(0.1,0.5),2,LFNoise1.kr(0.1,0.8),bufEnv)}
)

// - 0:0:31.04 -
~one.play

// - 0:1:2.1 -
~reverbSend = {Mix.ar([~one])};

// - 0:1:11.1 -
~reverb = {arg size = 10, time = 5, damping = 0.5, spread = 15, dry = 0, amp = 0.8; FreeVerb.ar(~reverbSend.ar,1)}

// - 0:1:13.93 -
~reverb.play;

// - 0:1:20.63 -
~reverb = {arg size = 10, time = 5, damping = 0.5, spread = 15, dry = 0, amp = 0.8; FreeVerb.ar(~reverbSend.ar,1,0.1)}

// - 0:1:23.95 -
~reverb = {arg size = 10, time = 5, damping = 0.5, spread = 15, dry = 0, amp = 0.8; FreeVerb.ar(~reverbSend.ar,0.33,0.1)}

// - 0:1:29.23 -
~reverb = {arg size = 10, time = 5, damping = 0.5, spread = 15, dry = 0, amp = 0.8; FreeVerb.ar(~reverbSend.ar,1,0.1,0.4,0.1)}

// - 0:1:45.05 -
(
var envWindow = Env([0, 1, 0], [0.01, 0.1], \welch), bufEnv;
bufEnv = Buffer.sendCollection(s,envWindow.discretize,1);
~one = {GrainBuf.ar(1,Impulse.kr(SinOsc.kr(0.1).range(0.1,5)),0.1,d["guitarMono"][6],1,0.5 + LFNoise1.kr(0.1,0.5),2,LFNoise1.kr(0.1,0.8),bufEnv)}
)

// - 0:1:50.95 -
(
var envWindow = Env([0, 1, 0], [0.01, 0.1], \welch), bufEnv;
bufEnv = Buffer.sendCollection(s,envWindow.discretize,1);
~one = {GrainBuf.ar(1,Impulse.kr(SinOsc.kr(0.1).range(0.1,5)),0.1,d["guitarMono"][6],1,0.5 + LFNoise1.kr(0.1,0.5),2,LFNoise1.kr(0.1,0.5),bufEnv)}
)

// - 0:1:56.64 -
(
var envWindow = Env([0, 1, 0], [0.01, 0.1], \welch), bufEnv;
bufEnv = Buffer.sendCollection(s,envWindow.discretize,1);
~one = {GrainBuf.ar(2,Impulse.kr(SinOsc.kr(0.1).range(0.1,5)),0.1,d["guitarMono"][6],1,0.5 + LFNoise1.kr(0.1,0.5),2,LFNoise1.kr(0.1,0.5),bufEnv)}
)

// - 0:2:16.71 -
(
var envWindow = Env([0, 1, 0], [0.01, 0.1], \welch), bufEnv;
bufEnv = Buffer.sendCollection(s,envWindow.discretize,1);
~two = {GrainBuf.ar(2,Impulse.kr(SinOsc.kr(0.115).range(0.1,5)),0.1,d["guitarMono"][6],1,0.5 + LFNoise1.kr(0.1,0.5),2,LFNoise1.kr(0.1,0.5),bufEnv)}
)

// - 0:2:19.8 -
~two.play

// - 0:2:25.9 -
~reverbSend = {Mix.ar([~one,~two])};

// - 0:2:30.31 -
~reverb = {arg size = 10, time = 5, damping = 0.5, spread = 15, dry = 0, amp = 0.8; FreeVerb.ar(~reverbSend.ar,1,0.1,0.4,0.2)}

// - 0:2:33.99 -
~reverb = {arg size = 10, time = 5, damping = 0.5, spread = 15, dry = 0, amp = 0.8; FreeVerb.ar(~reverbSend.ar,1,0.1,0.4,0.4)}

// - 0:2:40.15 -
p.fadeTime = 4

// - 0:3:24.95 -
(
var envWindow = Env([0, 1, 0], [0.01, 0.1], \welch), bufEnv;
bufEnv = Buffer.sendCollection(s,envWindow.discretize,1);
~three = {GrainBuf.ar(2,Impulse.kr(SinOsc.kr(0.115).range(0.1,10)),0.1,d["guitarMono"][6],0.5,0.5 + LFNoise1.kr(0.1,0.5),4,LFNoise1.kr(0.1,0.5),bufEnv)}
)

// - 0:3:27.9 -
~three.play

// - 0:3:32.98 -
~reverbSend = {Mix.ar([~one,~two,~three])};

// - 0:4:13.38 -
d[\addFolder].("piano",thisProcess.nowExecutingPath.dirname ++ "/piano")

// - 0:4:17.63 -
d[\addFolder].("piano",thisProcess.nowExecutingPath.dirname ++ "/Piano")

// - 0:4:25.21 -
(
d[\addFolderMono] = {
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

// - 0:4:27.35 -
d[\addFolder].("piano",thisProcess.nowExecutingPath.dirname ++ "/Piano")

// - 0:4:50.88 -
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

// - 0:4:52.69 -
d[\addFolder].("piano",thisProcess.nowExecutingPath.dirname ++ "/Piano")

// - 0:5:6.15 -
(
~warpEnv = {var env = EnvGen.ar(Env.perc(0.01,0.5,0.1),Impulse.kr(LFNoise1.kr(0.1).range(0.5,4)),1,0,1,0);
	Warp1.ar(2,d["piano"][0],LFTri.kr(0.01)+env,2,0.2,-1,32,0.01,4,env*4)}
)

// - 0:5:26.69 -
~warpEnv[1] = \filterIn -> {|in| LPF.ar(in)}

// - 0:5:30.58 -
~warpEnv.play

// - 0:5:56.38 -
d["piano"][4].play

// - 0:6:0.54 -
d["piano"][4].play

// - 0:6:17.78 -
~piano = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(4,30),\amp,1);

// - 0:6:22.43 -
~piano.play

// - 0:6:23.45 -
~piano = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(4,30),\amp,1);

// - 0:6:42.58 -
~piano = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(4,30),\amp,1,\rel,Pwhite(0.1,3));

// - 0:7:5.61 -
(
~warpEnv = {var env = EnvGen.ar(Env.perc(0.01,0.5,0.1),Impulse.kr(LFNoise1.kr(0.1).range(0.5,4)),1,0,1,0);
	Warp1.ar(2,d["piano"][0],LFTri.kr(0.1)+env,2,0.2,-1,32,0.01,4,env*4)}
)

// - 0:7:32.62 -
(
var envWindow = Env([0, 1, 0], [0.01, 0.1], \welch), bufEnv;
bufEnv = Buffer.sendCollection(s,envWindow.discretize,1);
~two = {GrainBuf.ar(2,Impulse.kr(SinOsc.kr(0.115).range(0.1,5)),0.05,d["guitarMono"][6],1,0.5 + LFNoise1.kr(0.1,0.5),2,LFNoise1.kr(0.1,0.5),bufEnv)}
)

// - 0:7:35.4 -
(
var envWindow = Env([0, 1, 0], [0.01, 0.1], \welch), bufEnv;
bufEnv = Buffer.sendCollection(s,envWindow.discretize,1);
~two = {GrainBuf.ar(2,Impulse.kr(SinOsc.kr(0.115).range(0.1,15)),0.05,d["guitarMono"][6],1,0.5 + LFNoise1.kr(0.1,0.5),2,LFNoise1.kr(0.1,0.5),bufEnv)}
)

// - 0:7:52.48 -
~piano2 = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(4,30),\amp,1,\rate,1.2);

// - 0:7:56.35 -
~piano2.play

// - 0:8:2.99 -
~piano = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(4,30),\amp,1);

// - 0:8:21.18 -
~piano = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(4,30),\amp,1,\pan,Pwhite(-0.8,0.8));

// - 0:8:23.4 -
~piano2 = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(4,30),\amp,1,\rate,1.2,\pan,Pwhite(-0.8,0.8));

// - 0:8:31.68 -
~piano3 = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(4,30),\amp,1,\rate,1.7,\pan,Pwhite(-0.8,0.8));

// - 0:8:36.79 -
~piano3 = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(4,30.0),\amp,1,\rate,1.7,\pan,Pwhite(-0.8,0.8));

// - 0:8:38.78 -
~piano2 = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(4,30.0),\amp,1,\rate,1.2,\pan,Pwhite(-0.8,0.8));

// - 0:8:43 -
~piano = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(4,30.0),\amp,1,\pan,Pwhite(-0.8,0.8));

// - 0:9:0.38 -
~piano3 = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(4,30.0),\amp,1,\rate,1.4,\pan,Pwhite(-0.8,0.8));

// - 0:9:1.61 -
~piano3.play

// - 0:9:2.58 -
~piano3 = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(4,30.0),\amp,1,\rate,1.4,\pan,Pwhite(-0.8,0.8));

// - 0:9:11.18 -
~piano4 = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(4,30.0),\amp,1,\rate,1.6,\pan,Pwhite(-0.8,0.8));

// - 0:9:13.23 -
~piano4.play

// - 0:9:40.19 -
~pulseClk = {Pulse.ar([10+LFNoise1.kr,10+LFNoise1.kr],0.1,0.6)}

// - 0:9:45.65 -
~pulseClk = {Pulse.ar([10+LFNoise1.kr,10+LFNoise1.kr],0.1,0.1)}

// - 0:9:46.3 -
~pulseClk.play

// - 0:9:50.5 -
~pulseClk = {Pulse.ar([10+LFNoise1.kr,10+LFNoise1.kr],0.01,0.1)}

// - 0:9:55.08 -
~pulseClk = {Pulse.ar([10+LFNoise1.kr,10+LFNoise1.kr],0.01,0.3)}

// - 0:10:5.65 -
~pulseClk = {Pulse.ar([10+LFNoise1.kr,10+LFNoise1.kr],0.01,0.12)}

// - 0:10:8.85 -
~pulseClk = {Pulse.ar([10+LFNoise1.kr,10+LFNoise1.kr],0.05,0.12)}

// - 0:11:2.25 -
d["piano"][1].numFrames

// - 0:11:17.36 -
~pianoX = Pbind(\instrument,\vplay,\buf,d["piano"][1],\atk,3,\sus,2,\rel,3,\amp,0.01)

// - 0:11:20.7 -
~pianoX.play

// - 0:11:29.69 -
~pianoX.fadeTime = 10

// - 0:11:34.15 -
~pianoX = Pbind(\instrument,\vplay,\buf,d["piano"][1],\atk,3,\sus,2,\rel,3,\amp,0.01,\dur,0.5)

// - 0:11:36.58 -
~pianoX = Pbind(\instrument,\vplay,\buf,d["piano"][1],\atk,3,\sus,2,\rel,3,\amp,0.1,\dur,0.5)

// - 0:12:1.13 -
(
~warpEnv = {var env = EnvGen.ar(Env.perc(0.01,0.5,0.1),Impulse.kr(LFNoise1.kr(0.1).range(0.5,4)),1,0,1,0);
	Warp1.ar(2,d["piano"][0],LFTri.kr(0.1)+env,2,0.5,-1,32,0.01,4,env*4)}
)

// - 0:12:2.61 -
(
~warpEnv2 = {var env = EnvGen.ar(Env.perc(0.01,0.5,0.1),Impulse.kr(LFNoise1.kr(0.1).range(0.5,4)),1,0,1,0);
	Warp1.ar(2,d["piano"][0],LFTri.kr(0.1)+env,2,0.2,-1,32,0.01,4,env*4)}
)

// - 0:12:6.74 -
~warpEnv2.play

// - 0:12:13.61 -
(
~warpEnv2 = {var env = EnvGen.ar(Env.perc(0.01,0.5,0.1),Impulse.kr(LFNoise1.kr(0.1).range(0.5,4)),1,0,1,0);
	Warp1.ar(2,d["piano"][0],LFTri.kr(0.1)+env,4,0.2,-1,32,0.01,4,env*4)}
)

// - 0:12:18.34 -
(
~warpEnv2 = {var env = EnvGen.ar(Env.perc(0.01,0.5,0.1),Impulse.kr(LFNoise1.kr(0.1).range(0.5,4)),1,0,1,0);
	Warp1.ar(2,d["piano"][0],LFTri.kr(0.1)+env,1,0.2,-1,32,0.01,4,env*4)}
)

// - 0:12:36.8 -
~one.stop(rrand(10,40))

// - 0:12:38.7 -
~rwo.stop(rrand(10,40))

// - 0:12:40.59 -
~two.stop(rrand(10,40))

// - 0:12:50.71 -
~reverb = {arg size = 10, time = 5, damping = 0.5, spread = 15, dry = 0, amp = 0.8; FreeVerb.ar(~reverbSend.ar,1,0.1,0.4,0.8)}

// - 0:13:1.23 -
d["piano"][1].numFrames

// - 0:13:5.85 -
~pianoX = Pbind(\instrument,\vplay,\buf,d["piano"][1],\atk,3,\sus,2,\rel,3,\amp,0.6,\dur,0.5)

// - 0:13:7.23 -
~pianoX.play

// - 0:13:19.16 -
~pianoX = Pbind(\instrument,\vplay,\buf,d["piano"][1],\atk,3,\sus,2,\rel,3,\amp,0.6,\dur,0.5,\pos,Pwhite(0,0.7))

// - 0:13:32.15 -
~reverbSend = {Mix.ar([~one,~two,~three,~pulseClk])};

// - 0:13:42.6 -
~pulseClk.stop(10)

// - 0:13:54.33 -
~three.stop(10)

// - 0:13:59.8 -
~one.clear

// - 0:14:3.26 -
~two.clear

// - 0:14:7.31 -
~three.clear

// - 0:14:13.31 -
~pianoX = Pbind(\instrument,\vplay,\buf,d["piano"][1],\atk,3,\sus,2,\rel,3,\amp,0.6,\dur,0.9,\pos,Pwhite(0,0.7))

// - 0:14:18.06 -
~pianoX = Pbind(\instrument,\vplay,\buf,d["piano"][1],\atk,3,\sus,2,\rel,3,\amp,0.9,\dur,0.5,\pos,Pwhite(0,0.7))

// - 0:14:26.71 -
d["piano"][1].play

// - 0:14:36.59 -
~pianoX = Pbind(\instrument,\vplay,\buf,d["piano"][0],\atk,3,\sus,2,\rel,3,\amp,0.9,\dur,0.5,\pos,Pwhite(0,0.7))

// - 0:14:46.09 -
~pianoX = Pbind(\instrument,\vplay,\buf,d["piano"][0],\atk,3,\sus,2,\rel,3,\amp,0.1,\dur,0.5,\pos,Pwhite(0,0.7))

// - 0:14:59.18 -
~pianoX = Pbind(\instrument,\vplay,\buf,d["piano"][0],\atk,3,\sus,2,\rel,3,\amp,0.1,\dur,0.5,\pos,Pwhite(0,0.7),\rate,Pseq([1,1.2,1.4],inf))

// - 0:15:10.45 -
~warpEnv.stop(10)

// - 0:15:11.79 -
~warpEnv2.stop(10)

// - 0:15:17.38 -
~warpEnv.clear

// - 0:15:19.06 -
~warpEnv2.clear

// - 0:15:27.05 -
~pulseClk = {Pulse.ar([10+LFNoise1.kr,10+LFNoise1.kr],0.01,0.12)}

// - 0:15:29.25 -
~pulseClk = {Pulse.ar([10+LFNoise1.kr,10+LFNoise1.kr],0.01,0.4)}

// - 0:15:45.64 -
~k = Pbind(\instrument,\bplay,\buf,d["bk"][0],\dur,4,\amp,0.1);

// - 0:15:47.84 -
~k.play

// - 0:15:49.11 -
~k = Pbind(\instrument,\bplay,\buf,d["bk"][0],\dur,4,\amp,0.1);

// - 0:15:51.08 -
~k = Pbind(\instrument,\bplay,\buf,d["bk"][0],\dur,4,\amp,0.5);

// - 0:16:7.91 -
d["piano"][5]

// - 0:16:8.94 -
d["piano"][5]

// - 0:16:9.44 -
d["piano"][5]

// - 0:16:9.59 -
d["piano"][5]

// - 0:16:9.75 -
d["piano"][5]

// - 0:16:13.08 -
d["piano"][6].play

// - 0:16:26.51 -
~piano = Pbind(\instrument,\bplay,\buf,d["piano"][6],\dur,Pwhite(4,30.0),\amp,1,\pan,Pwhite(-0.8,0.8));

// - 0:16:28.84 -
~piano = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(4,30.0),\amp,1,\pan,Pwhite(-0.8,0.8));

// - 0:16:33.18 -
~piano = Pbind(\instrument,\bplay,\buf,d["piano"][6],\dur,Pwhite(4,30.0),\amp,0.4,\pan,Pwhite(-0.8,0.8));

// - 0:16:43.05 -
~pianoperc = Pbind(\instrument,\bplay,\buf,d["piano"][6],\dur,Pwhite(4,30.0),\amp,0.4,\pan,Pwhite(-0.8,0.8));

// - 0:16:44.35 -
~pianoperc.play

// - 0:16:45.36 -
~piano = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(4,30.0),\amp,1,\pan,Pwhite(-0.8,0.8));

// - 0:17:2.71 -
~pianoX = Pbind(\instrument,\vplay,\buf,d["piano"][0],\atk,3,\sus,2,\rel,3,\amp,0.1,\dur,0.5,\pos,Pwhite(0,0.7),\rate,Pseq([1,1.2,1.4],inf) * Pseq([1,2,4].stutter(30),inf))

// - 0:17:15.05 -
~k = Pbind(\instrument,\bplay,\buf,d["bk"][0],\dur,4,\amp,1);

// - 0:17:41.86 -
~k = Pbind(\instrument,\bplay,\buf,d["bk"][0],\dur,Pwrand([4,5.5],[10,1].normalizeSum,inf),\amp,1);

// - 0:18:27.55 -
~piano6 = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(1,10.0),\amp,1,\rate,Prand([1.8,2.0,2.2,2.4,2.6,2.8],inf),\pan,Pwhite(-0.8,0.8));

// - 0:18:31 -
~piano6.play

// - 0:18:44.19 -
~pianoX = Pbind(\instrument,\vplay,\buf,d["piano"][0],\atk,3,\sus,4,\rel,3,\amp,0.1,\dur,0.5,\pos,Pwhite(0,0.7),\rate,Pseq([1,1.2,1.4],inf) * Pseq([1,2,4].stutter(30),inf))

// - 0:18:52.33 -
~pianoX = Pbind(\instrument,\vplay,\buf,d["piano"][0],\atk,3,\sus,4,\rel,3,\amp,0.1,\dur,0.5,\pos,Pwhite(0,0.7),\rate,Pseq([1,1.2,1.4],inf) * Pseq([1,2,4,6].stutter(30),inf))

// - 0:19:2.1 -
d["guitar"]

// - 0:19:13.55 -
d[\addFolder].("guiar",thisProcess.nowExecutingPath.dirname ++ "/Prepared Guitar")

// - 0:19:17.53 -
d["guitar"]

// - 0:19:24.38 -
d["gutar"]

// - 0:19:26.24 -
d["guiar"]

// - 0:19:28.56 -
d["guiar"][4].play

// - 0:19:38.87 -
~warp1 = {arg speed = 0.01, winsize = 0.2, rate = 1; Warp1.ar(2,d["guiar"][4],LFTri.kr(speed),rate,winsize,-1,16,0.02,4,0.5)}

// - 0:19:44.03 -
~warp1.play

// - 0:19:51.59 -
~warp1 = {arg speed = 0.01, winsize = 0.6, rate = 1; Warp1.ar(2,d["guiar"][4],LFTri.kr(speed),rate,winsize,-1,16,0.02,4,0.5)}

// - 0:19:57.99 -
~warp1 = {arg speed = 0.01, winsize = 0.6, rate = 1; Warp1.ar(2,d["guiar"][4],LFTri.kr(speed),rate,winsize,-1,8,0.02,4,0.5)}

// - 0:19:59.44 -
~warp1 = {arg speed = 0.01, winsize = 0.6, rate = 1; Warp1.ar(2,d["guiar"][4],LFTri.kr(speed),rate,winsize,-132,0.02,4,0.5)}

// - 0:20:3 -
~warp1 = {arg speed = 0.01, winsize = 0.6, rate = 1; Warp1.ar(2,d["guiar"][4],LFTri.kr(speed),rate,winsize,-1,32,0.02,4,0.5)}

// - 0:20:7.56 -
~warp1 = {arg speed = 0.01, winsize = 0.6, rate = 1; Warp1.ar(2,d["guiar"][4],LFTri.kr(speed),rate,winsize,-1,32,0.1,4,0.5)}

// - 0:20:10.84 -
~warp1 = {arg speed = 0.1, winsize = 0.6, rate = 1; Warp1.ar(2,d["guiar"][4],LFTri.kr(speed),rate,winsize,-1,32,0.1,4,0.5)}

// - 0:21:5.53 -
d[\addFolder].("gperc",thisProcess.nowExecutingPath.dirname ++ "/Prepared Guitar Percs")

// - 0:21:18.14 -
~pianoX = Pbind(\instrument,\vplay,\buf,d["piano"][0],\atk,3,\sus,4,\rel,3,\amp,0.1,\dur,0.5,\pos,Pwhite(0,0.7),\rate,Pseq([1,1.2,1.4],inf) * Pseq([1,2,4,6,8,16].stutter(30),inf))

// - 0:21:22.4 -
~pianoX = Pbind(\instrument,\vplay,\buf,d["piano"][0],\atk,3,\sus,4,\rel,3,\amp,0.1,\dur,0.25,\pos,Pwhite(0,0.7),\rate,Pseq([1,1.2,1.4],inf) * Pseq([1,2,4,6,8,16].stutter(30),inf))

// - 0:21:53.01 -
~pulseClk = {Splay.ar(Pulse.ar([10+LFNoise1.kr,20+LFNoise1.kr,10+LFNoise1.kr,30+LFNoise1.kr],0.01,0.4))}

// - 0:22:10.75 -
~k = Pbind(\instrument,\bplay,\buf,d["gperc"][0],\dur,Pwhite(1,4),\amp,0.6);

// - 0:22:13.11 -
~k.play

// - 0:22:17.48 -
~k = Pbind(\instrument,\bplay,\buf,d["bk"][0],\dur,Pwrand([4,5.5],[10,1].normalizeSum,inf),\amp,1);

// - 0:22:29.75 -
~gperc = Pbind(\instrument,\bplay,\buf,Prand(d["gperc"],inf),\dur,Pwhite(1,4),\amp,0.6);

// - 0:22:32.4 -
~gperc.play

// - 0:22:35.61 -
~gperc = Pbind(\instrument,\bplay,\buf,Prand(d["gperc"],inf),\dur,Pwhite(1,4),\amp,0.6,\rate,1.4);

// - 0:22:38.13 -
~gperc = Pbind(\instrument,\bplay,\buf,Prand(d["gperc"],inf),\dur,Pwhite(1,4),\amp,0.6,\rate,8);

// - 0:22:43.29 -
~gperc = Pbind(\instrument,\bplay,\buf,Prand(d["gperc"],inf),\dur,Pwhite(1,16)/4,\amp,0.6,\rate,8);

// - 0:22:49.14 -
~gperc = Pbind(\instrument,\bplay,\buf,Prand(d["gperc"],inf),\dur,Pwhite(1,16)/4,\amp,1,\rate,8);

// - 0:22:50.65 -
~gperc = Pbind(\instrument,\bplay,\buf,Prand(d["gperc"],inf),\dur,Pwhite(1,16)/4,\amp,1.5,\rate,8);

// - 0:23:6.95 -
~piano = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(4,30.0),\amp,1,\pan,Pwhite(-0.8,0.8),\rate,0.5);

// - 0:23:13.88 -
~piano2 = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(4,30.0),\amp,1,\rate,1.2/2,\pan,Pwhite(-0.8,0.8));

// - 0:23:17 -
~piano3 = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(4,30.0),\amp,1,\rate,1.4/2,\pan,Pwhite(-0.8,0.8));

// - 0:23:20.13 -
~piano4 = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(4,30.0),\amp,1,\rate,1.6/2,\pan,Pwhite(-0.8,0.8));

// - 0:23:23.18 -
~piano5 = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(4,30.0),\amp,1,\rate,1.6/2,\pan,Pwhite(-0.8,0.8));

// - 0:23:35.84 -
~pianoX = Pbind(\instrument,\vplay,\buf,d["piano"][0],\atk,3,\sus,4,\rel,3,\amp,0.1,\dur,0.25,\pos,Pwhite(0,0.7),\rate,Pwhite(1,10))

// - 0:23:51.4 -
~pulseClk = {Splay.ar(Pulse.ar([10+LFNoise1.kr,20+LFNoise1.kr,10+LFNoise1.kr,30+LFNoise1.kr,100,200,300],0.01,0.4))}

// - 0:23:53.11 -
~pulseClk = {Splay.ar(Pulse.ar([10+LFNoise1.kr,20+LFNoise1.kr,10+LFNoise1.kr,30+LFNoise1.kr,100,200,300],0.01,0.8))}

// - 0:23:55.85 -
~pulseClk = {Splay.ar(Pulse.ar([10+LFNoise1.kr,20+LFNoise1.kr,10+LFNoise1.kr,30+LFNoise1.kr,100,200,300],0.01,1.5))}

// - 0:24:0.3 -
~reverb = {arg size = 10, time = 5, damping = 0.5, spread = 15, dry = 0, amp = 0.8; FreeVerb.ar(~reverbSend.ar,1,0.1,0.4,1)}

// - 0:24:5.54 -
~reverb = {arg size = 10, time = 5, damping = 0.5, spread = 15, dry = 0, amp = 0.8; FreeVerb.ar(~reverbSend.ar,1,0.1,0.4,1.5)}

// - 0:24:19.54 -
~pulseClk = {Splay.ar(Pulse.ar([10+LFNoise1.kr,20+LFNoise1.kr,10+LFNoise1.kr,30+LFNoise1.kr,100,200,300],0.01,4))}

// - 0:24:30.26 -
~pulseClk = {Splay.ar(Pulse.ar([10+LFNoise1.kr,20+LFNoise1.kr,10+LFNoise1.kr,30+LFNoise1.kr,100,200,300],0.1,1))}

// - 0:25:3.1 -
~pulseClk = {Splay.ar(Pulse.ar([10+LFNoise1.kr,20+LFNoise1.kr,10+LFNoise1.kr,30+LFNoise1.kr,100+LFNoise1.kr(10,10),200,300],0.1,1))}

// - 0:25:14.3 -
~pulseClk = {Splay.ar(Pulse.ar([10+LFNoise1.kr,20+LFNoise1.kr,10+LFNoise1.kr,30+LFNoise1.kr,100+LFNoise1.kr(10,10),200+LFNoise1.kr(10,10),300+LFNoise1.kr(10,10)],0.1,1))}

// - 0:25:34.68 -
(
~piano = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(4,90.0),\amp,1,\pan,Pwhite(-0.8,0.8),\rate,0.5);
~piano2 = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(4,90.0),\amp,1,\rate,1.2/2,\pan,Pwhite(-0.8,0.8));
~piano3 = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(4,90.0),\amp,1,\rate,1.4/2,\pan,Pwhite(-0.8,0.8));
~piano4 = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(4,90.0),\amp,1,\rate,1.6/2,\pan,Pwhite(-0.8,0.8));
~piano5 = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(4,90.0),\amp,1,\rate,1.6/2,\pan,Pwhite(-0.8,0.8));
)

// - 0:25:46.25 -
~reverbSend = {Mix.ar([~one,~two,~three,~pulseClk,~gperc])};

// - 0:26:11.04 -
~gperc[30] = \filterIn -> {|in| LPF.ar(in,1000)}

// - 0:26:42.96 -
~pulseClk = {Splay.ar(Pulse.ar([10+LFNoise1.kr,20+LFNoise1.kr,10+LFNoise1.kr,30+LFNoise1.kr,100+LFNoise1.kr(10,10),200+LFNoise1.kr(10,10),300+LFNoise1.kr(10,10)],LFTri.kr(0.1).range(0.00001,0.5),1))}

// - 0:26:56.6 -
ProxyMixer.new(p)

// - 0:27:28.76 -
d.keys

// - 0:27:37.23 -
~k2 = Pbind(\instrument,\bplay,\buf,d["mhit"][0],\dur,Pwrand([4,5.5],[10,1].normalizeSum,inf),\amp,1);

// - 0:27:39.64 -
~k2.play

// - 0:27:40.38 -
~k2 = Pbind(\instrument,\bplay,\buf,d["mhit"][0],\dur,Pwrand([4,5.5],[10,1].normalizeSum,inf),\amp,1);

// - 0:27:55.6 -
~k = Pbind(\instrument,\bplay,\buf,d["bk"][0],\dur,Pwrand([4,5.5],[5,1].normalizeSum,inf),\amp,1);

// - 0:28:0.2 -
~k2 = Pbind(\instrument,\bplay,\buf,d["mhit"][0],\dur,Pwrand([4,5.5],[5,1].normalizeSum,inf),\amp,1);

// - 0:28:16.69 -
~k3 = Pbind(\instrument,\bplay,\buf,d["kbig"][0],\dur,Pwrand([4,5.5],[10,1].normalizeSum,inf),\amp,1);

// - 0:28:18.71 -
~k3.play

// - 0:28:41.16 -
~pulseClk = {Splay.ar(Pulse.ar([10+LFNoise1.kr,20+LFNoise1.kr,10+LFNoise1.kr,30+LFNoise1.kr,100+LFNoise1.kr(10,10),200+LFNoise1.kr(10,10),300+LFNoise1.kr(10,10)],LFTri.kr(0.01).range(0.00001,0.5),1))}

// - 0:28:48.74 -
~pulseClk = {Splay.ar(Pulse.ar([10+LFNoise1.kr,20+LFNoise1.kr,10+LFNoise1.kr,30+LFNoise1.kr,100+LFNoise1.kr(10,10),200+LFNoise1.kr(10,10),300+LFNoise1.kr(10,10),50,75,50],LFTri.kr(0.01).range(0.00001,0.5),1))}

// - 0:28:59.4 -
~pulseClk = {Splay.ar(Pulse.ar([50,10+LFNoise1.kr,20+LFNoise1.kr,10+LFNoise1.kr,30+LFNoise1.kr,100+LFNoise1.kr(10,10),200+LFNoise1.kr(10,10),300+LFNoise1.kr(10,10),50,75,50],LFTri.kr(0.01).range(0.00001,0.5),1))}

// - 0:29:4.04 -
~pulseClk = {Splay.ar(Pulse.ar([50,75,10+LFNoise1.kr,20+LFNoise1.kr,10+LFNoise1.kr,30+LFNoise1.kr,100+LFNoise1.kr(10,10),200+LFNoise1.kr(10,10),300+LFNoise1.kr(10,10),50,75,50],LFTri.kr(0.01).range(0.00001,0.5),1))}

// - 0:29:32.63 -
~pianoX = Pbind(\instrument,\vplay,\buf,Prand(d["piano"],inf),\atk,3,\sus,4,\rel,3,\amp,0.1,\dur,0.25,\pos,Pwhite(0,0.7),\rate,Pwhite(1,10))

// - 0:29:43.97 -
~pianoX = Pbind(\instrument,\vplay,\buf,d["piano"][0],\atk,3,\sus,4,\rel,3,\amp,0.1,\dur,0.25,\pos,Pwhite(0,0.7))

// - 0:29:49.34 -
~pianoX = Pbind(\instrument,\vplay,\buf,d["piano"][0],\atk,0.1,\sus,4,\rel,3,\amp,0.1,\dur,0.25,\pos,Pwhite(0,0.7))

// - 0:30:9.99 -
d["bk"][4]

// - 0:30:14.35 -
d["bk"][4].play

// - 0:30:14.8 -
d["bk"][4].play

// - 0:30:14.98 -
d["bk"][4].play

// - 0:30:15.11 -
d["bk"][4].play

// - 0:30:17.91 -
d["bk"][8].play

// - 0:30:18.06 -
d["bk"][8].play

// - 0:30:18.16 -
d["bk"][8].play

// - 0:30:18.27 -
d["bk"][8].play

// - 0:30:19.09 -
d["bk"][9].play

// - 0:30:19.26 -
d["bk"][9].play

// - 0:30:19.35 -
d["bk"][9].play

// - 0:30:19.45 -
d["bk"][9].play

// - 0:30:19.58 -
d["bk"][9].play

// - 0:30:19.71 -
d["bk"][9].play

// - 0:30:27.9 -
~k4 = Pbind(\instrument,\bplay,\buf,d["bk"][9],\dur,Pwrand([4,5.5],[10,1].normalizeSum,inf),\amp,1);

// - 0:30:30.94 -
~k4.play

// - 0:30:34.34 -
~k3 = Pbind(\instrument,\bplay,\buf,d["kbig"][0],\dur,Pwrand([4,5.5],[5,1].normalizeSum,inf),\amp,1);

// - 0:30:37.93 -
~k4 = Pbind(\instrument,\bplay,\buf,d["bk"][9],\dur,Pwrand([4,5.5],[5,1].normalizeSum,inf),\amp,1);

// - 0:30:40.8 -
~k4 = Pbind(\instrument,\bplay,\buf,d["bk"][9],\dur,Pwrand([4,5.5],[5,1].normalizeSum,inf),\amp,2);

// - 0:30:57.94 -
~piano7 = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(1,10.0),\amp,1,\rate,Prand([1.8,2.0,2.2,2.4,2.6,2.8],inf),\pan,Pwhite(-0.8,0.8));

// - 0:31:1.26 -
~piano7.play

// - 0:31:29.2 -
~tom = Pbind(\instrument,\bplay,\buf,d["t"][0],\dur,Pbjorklund2(3,16)/4,\amp,1,\rate,1)

// - 0:31:31.91 -
~tom.play

// - 0:31:40.75 -
~tom = Pbind(\instrument,\bplaym,\buf,d["t"][0],\dur,Pbjorklund2(3,16)/4,\amp,1,\rate,1)

// - 0:31:43.55 -
~tom = Pbind(\instrument,\bplaym,\buf,d["t"][0],\dur,Pbjorklund2(3,16)/4,\amp,1.5,\rate,1)

// - 0:31:50.38 -
~tom = Pbind(\instrument,\bplaym,\buf,d["t"][0],\dur,Pbjorklund2(3,16)/4,\amp,2,\rate,1)

// - 0:31:52.44 -
~tom = Pbind(\instrument,\bplaym,\buf,d["t"][0],\dur,Pbjorklund2(3,16)/8,\amp,2,\rate,1)

// - 0:31:55.58 -
~tom = Pbind(\instrument,\bplaym,\buf,d["t"][0],\dur,Pbjorklund2(3,8)/4,\amp,2,\rate,1)

// - 0:32:32.6 -
~tom = Pbind(\instrument,\bplaym,\buf,d["t"][0],\dur,Pbjorklund2(Pwhite(3,7),16,Pwhite(0,14).asStream)/4,\amp,2,\rate,Pwhite(1,3.0).stutter(30))

// - 0:32:39.64 -
~tom2 = Pbind(\instrument,\bplaym,\buf,d["t"][0],\dur,Pbjorklund2(Pwhite(3,7),16,Pwhite(0,14).asStream)/4,\amp,2,\rate,Pwhite(1,3.0).stutter(30))

// - 0:32:40.85 -
~tom2.play

// - 0:32:47.2 -
~tom3 = Pbind(\instrument,\bplaym,\buf,d["t"][0],\dur,Pbjorklund2(Pwhite(3,7),16,Pwhite(0,14).asStream)/4,\amp,2,\rate,Pwhite(1,3.0).stutter(30))

// - 0:32:49.04 -
~tom3.play

// - 0:32:57.2 -
~tom3 = Pbind(\instrument,\bplaym,\buf,d["t"][3],\dur,Pbjorklund2(Pwhite(3,7),16,Pwhite(0,14).asStream)/4,\amp,2,\rate,Pwhite(1,3.0).stutter(30))

// - 0:33:23.01 -
~tom3 = Pbind(\instrument,\bplaym,\buf,d["t"][3],\dur,Pbjorklund2(Pwhite(3,7),16,Pwhite(0,14).asStream)/Pwrand([4,8],[10,1].normalizeSum,inf).stutter(10),\amp,2,\rate,Pwhite(1,3.0).stutter(30))

// - 0:33:27.83 -
~tom4 = Pbind(\instrument,\bplaym,\buf,d["t"][3],\dur,Pbjorklund2(Pwhite(3,7),16,Pwhite(0,14).asStream)/Pwrand([4,8],[10,1].normalizeSum,inf).stutter(10),\amp,2,\rate,Pwhite(1,3.0).stutter(30))

// - 0:33:29.48 -
~tom4.play

// - 0:33:32.98 -
~tom3 = Pbind(\instrument,\bplaym,\buf,d["t"][0],\dur,Pbjorklund2(Pwhite(3,7),16,Pwhite(0,14).asStream)/Pwrand([4,8],[10,1].normalizeSum,inf).stutter(10),\amp,2,\rate,Pwhite(1,3.0).stutter(30))

// - 0:33:34.68 -
~tom4 = Pbind(\instrument,\bplaym,\buf,d["t"][0],\dur,Pbjorklund2(Pwhite(3,7),16,Pwhite(0,14).asStream)/Pwrand([4,8],[10,1].normalizeSum,inf).stutter(10),\amp,2,\rate,Pwhite(1,3.0).stutter(30))

// - 0:33:37.09 -
~tom3 = Pbind(\instrument,\bplaym,\buf,d["t"][0],\dur,Pbjorklund2(Pwhite(3,7),16,Pwhite(0,14).asStream)/Pwrand([4,8],[10,1].normalizeSum,inf).stutter(10),\amp,2,\rate,Pwhite(1,5.0).stutter(30))

// - 0:33:38.33 -
~tom4 = Pbind(\instrument,\bplaym,\buf,d["t"][0],\dur,Pbjorklund2(Pwhite(3,7),16,Pwhite(0,14).asStream)/Pwrand([4,8],[10,1].normalizeSum,inf).stutter(10),\amp,2,\rate,Pwhite(1,5.0).stutter(30))

// - 0:33:49.63 -
~k6 = Pbind(\instrument,\bplay,\buf,d["bk"][9],\dur,Pwrand([4,5.5],[5,1].normalizeSum,inf),\amp,10);

// - 0:33:53.07 -
~k6.play

// - 0:33:54.21 -
~k6 = Pbind(\instrument,\bplay,\buf,d["bk"][9],\dur,Pwrand([4,5.5],[5,1].normalizeSum,inf),\amp,10);

// - 0:34:15.55 -
~pulseClk = {Splay.ar(Pulse.ar([25,50,75,25,100,50,75,50],LFTri.kr(0.01).range(0.00001,0.5),1))}

// - 0:34:32.29 -
~pulseClk = {Splay.ar(Pulse.ar([25,50,75,25,100,50,75,50],LFTri.kr(0.1).range(0.00001,0.5),1))}

// - 0:35:9.35 -
~sinfb = {SinOscFB.ar([50+LFNoise1.kr(0.1),50+LFNoise1.kr(0.1)],SinOsc.kr(0.1).range(0.1,1.5),0.2)}

// - 0:35:11.04 -
~sinfb.play

// - 0:35:17.09 -
~sinfb = {SinOscFB.ar([50+LFNoise1.kr(0.1),50+LFNoise1.kr(0.1)],SinOsc.kr(0.1).range(0.1,1.5),0.5)}

// - 0:36:12 -
~warp2 = {arg speed = 2.1, winsize = 0.6, rate = 1; Warp1.ar(2,d["guiar"][4],LFTri.kr(speed),rate,winsize,-1,32,0.1,4,0.5)}

// - 0:36:14.04 -
~warp2.play

// - 0:37:39 -
~warp1 = {arg speed = 1.1, winsize = 0.6, rate = 1; Pan2.ar(Warp1.ar(2,d["guiar"][4],LFTri.kr(speed),rate,winsize,-1,32,0.1,4,0.5),LFNoise1.kr)}

// - 0:37:50.5 -
~warp2 = {arg speed = 2.1, winsize = 0.6, rate = 1; Pan2.ar(Warp1.ar(2,d["guiar"][4],LFTri.kr(speed),rate,winsize,-1,32,0.1,4,0.5))}

// - 0:37:58.27 -
~warp2 = {arg speed = 2.1, winsize = 0.6, rate = 1; Pan2.ar(Warp1.ar(2,d["guiar"][4],LFTri.kr(speed),rate,winsize,-1,32,0.1,4,0.5),LFNoise1.kr)}

// - 0:37:59.73 -
~warp2 = {arg speed = 2.1, winsize = 0.6, rate = 1; Pan2.ar(Warp1.ar(2,d["guiar"][4],LFTri.kr(speed),rate,winsize,-1,32,0.1,4,0.5),LFNoise1.kr())}

// - 0:38:2.27 -
~warp2 = {arg speed = 2.1, winsize = 0.6, rate = 1; Pan2.ar(Warp1.ar(2,d["guiar"][4],LFTri.kr(speed),rate,winsize,-1,32,0.1,4,0.5),LFNoise1.kr(3))}

// - 0:38:17.08 -
p = ProxyMixer.new(p)

// - 0:38:46.05 -
~tom4 = Pbind(\instrument,\bplaym,\buf,d["t"][0],\dur,Pbjorklund2(Pwhite(3,7),16,Pwhite(0,14).asStream)/Pwrand([4,8],[10,1].normalizeSum,inf).stutter(10),\amp,5,\rate,Pwhite(1,5.0).stutter(30))

// - 0:38:48.38 -
~tom3 = Pbind(\instrument,\bplaym,\buf,d["t"][0],\dur,Pbjorklund2(Pwhite(3,7),16,Pwhite(0,14).asStream)/Pwrand([4,8],[10,1].normalizeSum,inf).stutter(10),\amp,5,\rate,Pwhite(1,5.0).stutter(30))

// - 0:38:51.73 -
~tom2 = Pbind(\instrument,\bplaym,\buf,d["t"][0],\dur,Pbjorklund2(Pwhite(3,7),16,Pwhite(0,14).asStream)/4,\amp,5,\rate,Pwhite(1,3.0).stutter(30))

// - 0:38:52.9 -
~tom = Pbind(\instrument,\bplaym,\buf,d["t"][0],\dur,Pbjorklund2(Pwhite(3,7),16,Pwhite(0,14).asStream)/4,\amp,5,\rate,Pwhite(1,3.0).stutter(30))

// - 0:39:0.12 -
~tomx = Pbind(\instrument,\bplaym,\buf,d["t"][0],\dur,Pbjorklund2(Pwhite(3,7),16,Pwhite(0,14).asStream)/4,\amp,5,\rate,Pwhite(1,3.0).stutter(30))

// - 0:39:2.8 -
~tomx.play

// - 0:39:5.55 -
~tomx = Pbind(\instrument,\bplaym,\buf,d["t"][0],\dur,Pbjorklund2(Pwhite(3,7),16,Pwhite(0,14).asStream)/8,\amp,5,\rate,Pwhite(1,3.0).stutter(30))

// - 0:39:13.03 -
~tomx = Pbind(\instrument,\bplaym,\buf,d["t"][0],\dur,Pbjorklund2(Pwhite(3,7),16,Pwhite(0,14).asStream)/4,\amp,5,\rate,Pwhite(1,3.0).stutter(30))

// - 0:39:15.97 -
~tomx = Pbind(\instrument,\bplaym,\buf,d["t"][0],\dur,Pbjorklund2(Pwhite(3,7),32,Pwhite(0,14).asStream)/4,\amp,5,\rate,Pwhite(1,3.0).stutter(30))

// - 0:39:18.46 -
~tomx = Pbind(\instrument,\bplaym,\buf,d["t"][0],\dur,Pbjorklund2(Pwhite(3,16),32,Pwhite(0,14).asStream)/4,\amp,5,\rate,Pwhite(1,3.0).stutter(30))

// - 0:39:20.24 -
~tomx = Pbind(\instrument,\bplaym,\buf,d["t"][0],\dur,Pbjorklund2(Pwhite(3,32),32,Pwhite(0,14).asStream)/4,\amp,5,\rate,Pwhite(1,3.0).stutter(30))

// - 0:39:31.5 -
ProxyMixer.new(p)

// - 0:39:41.11 -
ProxyMixer.new(p)

// - 0:39:51.99 -
ProxyMixer.new

// - 0:40:5.29 -
~reverb.stop(20)

// - 0:40:14.05 -
~tom.stop(rrand(10,30))

// - 0:40:14.75 -
~tom2.stop(rrand(10,30))

// - 0:40:15.3 -
~tom3.stop(rrand(10,30))

// - 0:40:15.73 -
~tom4.stop(rrand(10,30))

// - 0:40:16.35 -
~tom5.stop(rrand(10,30))

// - 0:40:16.9 -
~tom6.stop(rrand(10,30))

// - 0:40:17.6 -
~tom7.stop(rrand(10,30))

// - 0:40:18.32 -
~tomx.stop(rrand(10,30))

// - 0:40:29.45 -
~sinfb.stop(rrand(10,30))

// - 0:40:34.38 -
~warp1.stop(rrand(10,30))

// - 0:40:34.91 -
~warp2.stop(rrand(10,30))

// - 0:40:44.91 -
~piano.stop(10)

// - 0:40:46.3 -
~piano2.stop(10)

// - 0:40:46.69 -
~piano3.stop(10)

// - 0:40:47.1 -
~piano4.stop(10)

// - 0:40:47.56 -
~piano5.stop(10)

// - 0:40:48.4 -
~piano6.stop(10)

// - 0:40:50.11 -
~piano7.stop(10)

// - 0:42:0.4 -
ProxyMixer.new(p)

// - 0:42:13.73 -
s.freeAll

// - 0:45:14.7 -
thisProcess.nowExecutingPath


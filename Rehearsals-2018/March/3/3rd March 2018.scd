//3rd March 2018
//playing with grains
//inspired by @datamads
//history collected in History3rdMarch

History.start


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

//function to add Mono folders to a dictionary
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


//add guitars
d[\addFolderMono].("guitarMono",thisProcess.nowExecutingPath.dirname ++ "/Prepared Guitar Perc")


d[\addFolder].("gperc",thisProcess.nowExecutingPath.dirname ++ "/Prepared Guitar Percs")


(
var envWindow = Env([0, 1, 0], [0.01, 0.1], \welch), bufEnv;
bufEnv = Buffer.sendCollection(s,envWindow.discretize,1);
~one = {GrainBuf.ar(2,Impulse.kr(SinOsc.kr(0.1).range(0.1,5)),0.05,d["guitarMono"][6],1,0.5 + LFNoise1.kr(0.1,0.5),2,LFNoise1.kr(0.1,0.5),bufEnv)}
)

(
var envWindow = Env([0, 1, 0], [0.01, 0.1], \welch), bufEnv;
bufEnv = Buffer.sendCollection(s,envWindow.discretize,1);
~two = {GrainBuf.ar(2,Impulse.kr(SinOsc.kr(0.115).range(0.1,15)),0.05,d["guitarMono"][6],1,0.5 + LFNoise1.kr(0.1,0.5),2,LFNoise1.kr(0.1,0.5),bufEnv)}
)

(
var envWindow = Env([0, 1, 0], [0.01, 0.1], \welch), bufEnv;
bufEnv = Buffer.sendCollection(s,envWindow.discretize,1);
~three = {GrainBuf.ar(2,Impulse.kr(SinOsc.kr(0.115).range(0.1,10)),0.1,d["guitarMono"][6],0.5,0.5 + LFNoise1.kr(0.1,0.5),4,LFNoise1.kr(0.1,0.5),bufEnv)}
)

(
~warpEnv = {var env = EnvGen.ar(Env.perc(0.01,0.5,0.1),Impulse.kr(LFNoise1.kr(0.1).range(0.5,4)),1,0,1,0);
	Warp1.ar(2,d["piano"][0],LFTri.kr(0.1)+env,2,0.5,-1,32,0.01,4,env*4)}
)

(
~warpEnv2 = {var env = EnvGen.ar(Env.perc(0.01,0.5,0.1),Impulse.kr(LFNoise1.kr(0.1).range(0.5,4)),1,0,1,0);
	Warp1.ar(2,d["piano"][0],LFTri.kr(0.1)+env,1,0.2,-1,32,0.01,4,env*4)}
)


~pianoperc = Pbind(\instrument,\bplay,\buf,d["piano"][6],\dur,Pwhite(4,30.0),\amp,0.4,\pan,Pwhite(-0.8,0.8));

~pianoperc.play

~warpEnv2.play

(
~piano = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(4,90.0),\amp,1,\pan,Pwhite(-0.8,0.8),\rate,0.5);
~piano2 = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(4,90.0),\amp,1,\rate,1.2/2,\pan,Pwhite(-0.8,0.8));
~piano3 = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(4,90.0),\amp,1,\rate,1.4/2,\pan,Pwhite(-0.8,0.8));
~piano4 = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(4,90.0),\amp,1,\rate,1.6/2,\pan,Pwhite(-0.8,0.8));
~piano5 = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(4,90.0),\amp,1,\rate,1.6/2,\pan,Pwhite(-0.8,0.8));
)
ProxyMixer.new(p)
~piano6 = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(1,10.0),\amp,1,\rate,Prand([1.8,2.0,2.2,2.4,2.6,2.8],inf),\pan,Pwhite(-0.8,0.8));


~piano7 = Pbind(\instrument,\bplay,\buf,d["piano"][4],\dur,Pwhite(1,10.0),\amp,1,\rate,Prand([1.8,2.0,2.2,2.4,2.6,2.8],inf),\pan,Pwhite(-0.8,0.8));

~piano7.stop(10)

History.stop
His


~piano7.play
~piano6.play
d["piano"][6].play

~pianoX.fadeTime = 10

~pianoX = Pbind(\instrument,\vplay,\buf,d["piano"][0],\atk,0.1,\sus,4,\rel,3,\amp,0.1,\dur,0.25,\pos,Pwhite(0,0.7))

~tom = Pbind(\instrument,\bplaym,\buf,d["t"][0],\dur,Pbjorklund2(Pwhite(3,7),16,Pwhite(0,14).asStream)/4,\amp,5,\rate,Pwhite(1,3.0).stutter(30))
~tom2 = Pbind(\instrument,\bplaym,\buf,d["t"][0],\dur,Pbjorklund2(Pwhite(3,7),16,Pwhite(0,14).asStream)/4,\amp,5,\rate,Pwhite(1,3.0).stutter(30))

~tomx = Pbind(\instrument,\bplaym,\buf,d["t"][0],\dur,Pbjorklund2(Pwhite(3,32),32,Pwhite(0,14).asStream)/4,\amp,5,\rate,Pwhite(1,3.0).stutter(30))



ProxyMixer.new
~tomx.play
~tom3 = Pbind(\instrument,\bplaym,\buf,d["t"][0],\dur,Pbjorklund2(Pwhite(3,7),16,Pwhite(0,14).asStream)/Pwrand([4,8],[10,1].normalizeSum,inf).stutter(10),\amp,5,\rate,Pwhite(1,5.0).stutter(30))

~tom4 = Pbind(\instrument,\bplaym,\buf,d["t"][0],\dur,Pbjorklund2(Pwhite(3,7),16,Pwhite(0,14).asStream)/Pwrand([4,8],[10,1].normalizeSum,inf).stutter(10),\amp,5,\rate,Pwhite(1,5.0).stutter(30))

~tom4.play


~pianoX = Pbind(\instrument,\vplay,\buf,Prand(d["piano"],inf),\atk,3,\sus,4,\rel,3,\amp,0.1,\dur,0.25,\pos,Pwhite(0,0.7),\rate,Pwhite(1,10))



~warp1 = {arg speed = 1.1, winsize = 0.6, rate = 1; Pan2.ar(Warp1.ar(2,d["guiar"][4],LFTri.kr(speed),rate,winsize,-1,32,0.1,4,0.5),LFNoise1.kr)}


~warp2 = {arg speed = 2.1, winsize = 0.6, rate = 1; Pan2.ar(Warp1.ar(2,d["guiar"][4],LFTri.kr(speed),rate,winsize,-1,32,0.1,4,0.5),LFNoise1.kr(3))}

~warp2.play

d["guiar"][4].play


p = ProxyMixer.new(p)


~k = Pbind(\instrument,\bplay,\buf,d["bk"][0],\dur,Pwrand([4,5.5],[5,1].normalizeSum,inf),\amp,1);

~k2 = Pbind(\instrument,\bplay,\buf,d["mhit"][0],\dur,Pwrand([4,5.5],[5,1].normalizeSum,inf),\amp,1);


~k3 = Pbind(\instrument,\bplay,\buf,d["kbig"][0],\dur,Pwrand([4,5.5],[5,1].normalizeSum,inf),\amp,1);


~k4 = Pbind(\instrument,\bplay,\buf,d["bk"][9],\dur,Pwrand([4,5.5],[5,1].normalizeSum,inf),\amp,2);

~k6 = Pbind(\instrument,\bplay,\buf,d["bk"][9],\dur,Pwrand([4,5.5],[5,1].normalizeSum,inf),\amp,10);


~k6.play
d["bk"][9].play


~k4.play






~warpEnv2.clear
~warpEnv2.stop(10)



d["piano"][1].play
~pianoX.play

d["piano"][1].numFrames



~gperc = Pbind(\instrument,\bplay,\buf,Prand(d["gperc"],inf),\dur,Pwhite(1,16)/4,\amp,1.5,\rate,8);
~gperc[30] = \filterIn -> {|in| LPF.ar(in,1000)}

~gperc.play

~pulseClk = {Splay.ar(Pulse.ar([25,50,75,25,100,50,75,50],LFTri.kr(0.1).range(0.00001,0.5),1))}

~sinfb = {SinOscFB.ar([50+LFNoise1.kr(0.1),50+LFNoise1.kr(0.1)],SinOsc.kr(0.1).range(0.1,1.5),0.5)}


~

~warp2.stop(rrand(10,30))

~sinfb.play

~pulseClk.play

~piano4.play



~pulseClk.stop(10)
~piano2.play

~piano.play

~warpEnv[1] = \filterIn -> {|in| LPF.ar(in)}

~warpEnv.play

~three.play

p.fadeTime = 4

//delay
~reverbSend = {Mix.ar([~one,~two,~three,~pulseClk,~gperc])};
~reverb = {arg size = 10, time = 5, damping = 0.5, spread = 15, dry = 0, amp = 0.8; FreeVerb.ar(~reverbSend.ar,1,0.1,0.4,1.5)}
~reverb.play;

~one.play
thisProcess.nowExecutingPath
History.saveCS("History3rdMarch".resolveRelative)
History.stop
History.document
d[\piano] = Buffer.read(s,"/media/smc/Samples-Archives/Sample Master Folder/Sample Library/Raw Recordings/HfMT Synth Stems/69Piano.wav")

d[\moog] = Buffer.read(s,"/media/smc/Samples-Archives/Sample Master Folder/Sample Library/Raw Recordings/HfMT Synth Stems/69Moog2.wav")
d[\moog2] = Buffer.read(s,"/media/smc/Samples-Archives/Sample Master Folder/Sample Library/Raw Recordings/HfMT Synth Stems/69Moog3.wav")
d[\moog].play


p.fadeTime = 4

~warp0 = {arg speed = 0.031, winsize = 1.4, rate = 0.5; Warp1.ar(2,d[\moog],LFTri.kr(speed,0.5),LFNoise0.kr(3).range(0.5,2),winsize,-1,4,0.02,4,1.5)}


~reverb.stop(10)

~reverb.clear



~warp0.clear


d[\chop] = Buffer.read(s,"/media/smc/Samples-Archives/Sample Master Folder/Sample Library/Sound Sets/HfMT Prepared Piano/Chops Scale/Chop15.wav")


(
~chop = Pbind(\instrument,\bplay,\buf,d[\chop],\dur,Pseq([1,0.5,2,1.75,0.25],inf),\amp,3);
~chop2 = Pbind(\instrument,\bplay,\buf,d[\chop],\dur,Pseq([1,0.5,2,1.75,0.25],inf),\amp,3,\rate,0.5);
~chop3 = Pbind(\instrument,\bplay,\buf,d[\chop],\dur,Pseq([1,0.5,2,1.75,0.25],inf),\amp,3,\rate,0.25);
)



~kick.stop

~c.stop

~kick.clear

~c.clear

~cym.stop

p.fadeTime = 8


~kick[0] = Pbind(\instrument,\bplay,\buf,d["bk"][10],\dur,7,\amp,40);
~kick[1] = \filterIn -> {|in| FreeVerb.ar(in,0.1)}

~c[0] = Pbind(\instrument,\bplay,\buf,d["c"][1],\dur,15,\amp,40,\rate,1.5);
~c[10] = \filterIn -> {|in| FreeVerb.ar(in,0.33,1)}
~c.play




~warp1 = {arg speed = 0.001, winsize = 0.2, rate = 1; Pan2.ar(Warp1.ar(1,d["cym"][1],LFTri.kr(speed),rate,winsize,-1,32,0.42,4,0.5))}

~warp1.play

~kick.play





~moog5.stop(rrand(40,120))

~moog = Pbind(\instrument,\vplay,\buf,d[\moog],\pos,0.51 + Pwhite(0,0.1),\amp,1,\atk,0.01,\sus,Pkey(\dur) / 5,\rel,0.03,\dur,Pwhite(0.25,0.75).round(0.25),\rate,8,\pan,Pwhite(-0.8,0.8))
~moog[1] = \filterIn -> {|in| LPF.ar(in,4000)}

~moog2 = Pbind(\instrument,\vplay,\buf,d[\moog],\pos,0.51 + Pwhite(0,0.1),\amp,3,\atk,0.01,\sus,Pkey(\dur) / 5,\rel,0.03,\dur,Pwhite(0.25,0.75).round(0.25),\rate,1,\pan,Pwhite(-0.8,0.8))
~moog2[1] = \filterIn -> {|in| LPF.ar(in,4000)}


~moog4 = Pbind(\instrument,\vplay,\buf,d[\moog],\pos,0.51 + Pwhite(0,0.1),\amp,3,\atk,0.01,\sus,Pkey(\dur) / 10,\rel,0.03,\dur,Pwhite(0.25,0.75).round(0.25),\rate,4,\pan,Pwhite(-0.8,0.8))
~moog4[1] = \filterIn -> {|in| LPF.ar(in,4000)}


~moog5 = Pbind(\instrument,\vplay,\buf,d[\moog],\pos,0.51 + Pwhite(0,0.1),\amp,3,\atk,0.01,\sus,Pkey(\dur) / 10,\rel,0.03,\dur,Pwhite(0.25,0.75).round(0.25),\rate,16,\pan,Pwhite(-0.8,0.8))
~moog5[1] = \filterIn -> {|in| LPF.ar(in,4000)}


//delay
~reverbSend = {Mix.ar([~moog,~moog2,~moog4,~moog5])};
~reverb = {arg size = 10, time = 5, damping = 0.5, spread = 15, dry = 0, amp = 0.5; GVerb.ar(Mix.ar([~reverbSend.ar]),size,time,damping,0.5,spread,dry,mul:amp)}
~reverb.play;


~warpx.clear




~moog5.play
~moog4.play

~moog2.play

~piano3.stop(20)


~chop3.play

~piano.stop(10)

~piano2.stop(20)




~chop2.play
~chop.play
~warp0.play;

~piano2[0] = Pbind(\instrument,\vplay,\buf,d[\piano],\pos,Pwhite(0,0.99),\amp,1,\atk,0.5,\sus,0,\rel,0.5,\dur,0.1,\rate,8)
~piano2[1] = \filterIn -> {|in| RLPF.ar(in,SinOsc.kr(0.1).range(1900,12000),0.4)}

~piano2.play


~piano[0] = Pbind(\instrument,\vplay,\buf,d[\piano],\pos,Pwhite(0,0.99),\amp,1,\atk,0.5,\sus,0,\rel,0.5,\dur,0.1,\rate,4)
~piano[1] = \filterIn -> {|in| RLPF.ar(in,SinOsc.kr(0.1).range(1400,12000),0.4)}


~piano3[0] = Pbind(\instrument,\vplay,\buf,d[\piano],\pos,Pwhite(0,0.99),\amp,8.5,\atk,0.01,\sus,0.1,\rel,0.1,\dur,0.25,\rate,4)
~piano3[1] = \filterIn -> {|in| FreeVerb.ar(in,0.4,0.9)}

~piano3.play
p = ProxyMixer.new(p)

d[\bang] = Buffer.read(s,"/media/smc/Samples-Archives/Sample Master Folder/Sample Library/Sound Sets/HfMT Prepared Piano/Bang/1.wav")

d[\bang] = Buffer.read(s,"/media/smc/Samples-Archives/Sample Master Folder/Sample Library/Sound Sets/HfMT Prepared Piano/Bang/1.wav")

~k = Pbind(\instrument,\bplay,\buf,d[\bang],\dur,Pbjorklund2(Pwhite(2,4),8,inf,Pwhite(0,8).asStream)/4,\amp,10);

~k2 = Pbind(\instrument,\bplay,\buf,d[\bang],\dur,Pbjorklund2(Pwhite(2,4),8,inf,Pwhite(0,8).asStream)/4,\amp,10,\rate,2);

~k3 = Pbind(\instrument,\bplay,\buf,d[\bang],\dur,Pbjorklund2(Pwhite(2,4),8,inf,Pwhite(0,8).asStream)/4,\amp,10,\rate,3);

~k6 = Pbind(\instrument,\bplay,\buf,d[\bang],\dur,Pbjorklund2(Pwhite(2,4),16,inf,Pwhite(0,16).asStream)/4,\amp,40,\rate,3);

~k7 = Pbind(\instrument,\bplay,\buf,d[\bang],\dur,Pbjorklund2(Pwhite(2,9),16,inf,Pwhite(0,16).asStream)/4,\amp,40,\rate,0.5);


~k7.play

~k6.play


~k3.play

~k2.play

~warp0.stop(120)

~warp0.stop(10)

~piano.play
~warp2.play

~warpx.play

~warpx = {arg speed = 0.0031, winsize = 1.5, rate = 1; Warp1.ar(2,d[\moog],LFTri.kr(speed,0.5),rate,winsize,-1,4,0.02,4,5)}

~warp2 = {arg speed = 0.0032, winsize = 0.8, rate = 16; Warp1.ar(2,d[\moog],LFTri.kr(speed,0.5),rate,winsize,-1,4,0.02,4,0.3)}

~warp3 = {arg speed = 0.0033, winsize = 0.8, rate = 32; Warp1.ar(2,d[\moog],LFTri.kr(speed,0.5),rate,winsize,-1,4,0.1,4,0.5)}

~warp4 = {arg speed = 0.0033, winsize = 0.8, rate = 6; Warp1.ar(2,d[\moog],LFTri.kr(speed,0.5),rate,winsize,-1,4,0.1,4,0.5)}

~warp4.play
~warp2.play
~warp3.play
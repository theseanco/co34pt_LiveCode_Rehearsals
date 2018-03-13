//1st March
//playing with synthesis/clocks/pulses
//for a playable History file check 1stMarchHistory.scd

History.start

p = ProxySpace.push(s)
StageLimiter.activate


//change clock divisions
~clk = {Impulse.ar(10)}


(
var randomVal = {rrand(1,64)};
Tdef(\theClock,
	{
		loop{
			"new clock".postln;
~env = {Decay2.ar(PulseDivider.ar(~clk,randomVal),0.01,0.1)};
~env2 = {Decay2.ar(PulseDivider.ar(~clk,randomVal),0.01,0.1)};
~env3 = {Decay2.ar(PulseDivider.ar(~clk,randomVal),0.01,0.1)};
			~env4 = {Decay2.ar(PulseDivider.ar(~clk,randomVal),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env5 = {Decay2.ar(PulseDivider.ar(~clk,randomVal),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env6 = {Decay2.ar(PulseDivider.ar(~clk,randomVal),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env7 = {Decay2.ar(PulseDivider.ar(~clk,randomVal),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env8 = {Decay2.ar(PulseDivider.ar(~clk,randomVal),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env9 = {Decay2.ar(PulseDivider.ar(~clk,randomVal),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env10 = {Decay2.ar(PulseDivider.ar(~clk,randomVal),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env11 = {Decay2.ar(PulseDivider.ar(~clk,randomVal),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env12 = {Decay2.ar(PulseDivider.ar(~clk,randomVal),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};
			1.wait;
}})
)





~env5.clear

~env6.clear

Tdef(\theClock).play

d = Dictionary.new
d[\n] = LFNoise1.kr(0.1)

~synth = {WhiteNoise.ar(~env) * 0.1}

~synth2[0] = {WhiteNoise.ar([~env,~env2]) * 0.9}
~synth2[10] = \filterIn -> {|in| RLPF.ar(in,LFTri.kr(0.1).range(440,9000),LFNoise1.kr(0.1).range(0.1,0.8))}

ProxyMixer.new(p)

~synth3[0] = {WhiteNoise.ar([~env4,~env7]) * 0.9}
~synth3[10] = \filterIn -> {|in| RLPF.ar(in,LFTri.kr(0.1).range(440,9000),LFNoise1.kr(0.1).range(0.1,0.8))}

~synth4[0] = {WhiteNoise.ar([~env1,~env9]) * 0.9}
~synth4[10] = \filterIn -> {|in| RLPF.ar(in,LFTri.kr(0.1).range(440,9000),LFNoise1.kr(0.1).range(0.1,0.8))}

~synth5[0] = {WhiteNoise.ar([~env3,~env5]) * 0.9}
~synth5[10] = \filterIn -> {|in| RLPF.ar(in,LFTri.kr(0.1).range(440,9000),LFNoise1.kr(0.1).range(0.1,0.8))}


~synth5.play
~synth4.play


~synth4[0] = {WhiteNoise.ar([~env8,~env9]) * 0.5}
~synth4[10] = \filterIn -> {|in| RLPF.ar(in,LFTri.kr(0.1).range(440,9000),LFNoise1.kr(0.1).range(0.1,0.8))}

~synth4.play

~synth3.play


~whiteClap[0] = {Pan2.ar(WhiteNoise.ar(0.1)) * EnvGen.ar(Env.perc(0.01,0.1),PulseDivider.ar(~clk,8))}
~whiteClap[10] = \filterIn -> {|in| RHPF.ar(in,[1000,1111],0.01)}


~whiteClap.play

~r.fadeTime = 0

~r = {50}


~dfm.stop(10)
~ring = {Ringz.ar(~env3,[~r,~r],0.1,0.1).tanh * 0.4}

~ring2 = {Ringz.ar(~env4,[~r,~r],0.1,5).tanh * 0.1}

~ring3 = {Ringz.ar(~env5,[~r,~r],0.1,50).tanh * 0.1}


~ring3.play
~ring4 = {Ringz.ar(~env6,[~r,~r],0.1,LFNoise1.kr(0.1).range(50,300)).tanh * 0.19}


ProxyMixer.new(p)

~ring5 = {Ringz.ar(~env7,[~r,~r],0.1,LFNoise1.kr(0.1).range(50,300)).tanh * 0.14}

~ring6 = {LeakDC.ar(Ringz.ar(~env8,[~r,~r],0.1,LFNoise1.kr(0.1).range(50,30000)).tanh * 0.1)}


~ring7 = {LeakDC.ar(Ringz.ar(~env7,[~r,~r],0.1,LFNoise1.kr(0.1).range(5,30)).tanh * 0.2)}

~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r, ~r],0.1,LFNoise1.kr(0.1).range(5,300)).tanh * 0.1)}

~ring8.play

p = ProxyMixer.new(p)

~dfm = {DFM1.ar(SinOsc.ar(~r.lag,0,0.1),[~r.lag,~r.lag],LFNoise1.kr(0.1).range(0.6,1.5),1,0,0.003,0.1)}


~whiteClap.stop(5)

~dfm.play

//this might break everything

~dfm.clear

//nope
~r = {4949494949494}

s.freeAll

History.end
History.showLogFile

History.saveCS("1stMarchHistory.scd".resolveRelative)
Tdef(\theClock).clear


	"1stMarchHistory.scd".resolveRelative
~r.fadeTime = 10
p.fadeTime = 4

~dfm.play


~ring7.play

~ring6.play

~ring5.play
~ring2.play

~ring4.play

~env5.clear
~env4.clear
~ring.play

~synth.stop(10)

~synth2.play

~synth.play
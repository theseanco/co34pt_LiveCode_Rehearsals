///////////////////////////////////////////////////
// History, as it was on Thu Mar  1 15:30:56 2018.
///////////////////////////////////////////////////

// - 0:0:0 -
p = ProxySpace.push(s)

// - 0:0:4.42 -
StageLimiter.activate

// - 0:0:8.02 -
~clk = {Impulse.ar(TRand.kr(16,32,Dust.kr(0.1)))}

// - 0:0:8.9 -
~div = {PulseDivider.ar(~clk,4)}

// - 0:0:10.33 -
~div2 = {PulseDivider.ar(~clk,6)}

// - 0:0:46.58 -
~env = {Decay2.ar(PulseDivider.ar(~clk,4),0.01,0.01)}

// - 0:0:52.38 -
~synth = {WhiteNoise.ar(~env)}

// - 0:0:54.15 -
~synth.play

// - 0:1:1.5 -
~synth = {WhiteNoise.ar(~env) * 0.1}

// - 0:1:4.33 -
~env = {Decay2.ar(PulseDivider.ar(~clk,4),0.01,0.01)}

// - 0:1:4.87 -
~env2 = {PulseDivider.ar(~clk,6)}

// - 0:1:5.83 -
~synth = {WhiteNoise.ar(~env) * 0.1}

// - 0:1:6.58 -
~synth.play

// - 0:1:12.83 -
~env = {Decay2.ar(PulseDivider.ar(~clk,4),0.01,0.1)}

// - 0:1:26.9 -
~synth2[0] = {WhiteNoise.ar(~env) * 0.1}

// - 0:1:47.74 -
~synth2[10] = \filterIn -> {|in| LPF.ar(in,440)}

// - 0:1:51.83 -
~synth2.clear

// - 0:2:7.15 -
~env2 = {Decay2.ar(PulseDivider.ar(~clk,6),0.01,0.1)}

// - 0:2:9.65 -
~synth2[0] = {WhiteNoise.ar([~env,~env2]) * 0.1}

// - 0:2:11.13 -
~synth2[10] = \filterIn -> {|in| LPF.ar(in,440)}

// - 0:2:13.14 -
~synth2.play

// - 0:2:17.87 -
~synth.stop(10)

// - 0:2:20.93 -
~synth2[0] = {WhiteNoise.ar([~env,~env2]) * 0.5}

// - 0:2:52.85 -
d = Dictionary.new

// - 0:3:1.24 -
d[\n] = LFNoise1.kr(0.1)

// - 0:3:14.9 -
~synth2[10] = \filterIn -> {|in| RLPF.ar(in,440,d[\n].range(0.1,0.8))}

// - 0:3:35.29 -
~synth2[10] = \filterIn -> {|in| RLPF.ar(in,440,LFNoise1.kr(0.1).range(0.1,0.8))}

// - 0:3:57.1 -
~r = {65}

// - 0:4:11 -
~env3 = {Decay2.ar(PulseDivider.ar(~clk,6),0.01,0.1)}

// - 0:4:29.13 -
~ring = {Ringz.ar(~env3,[~r,~r+1],0.1)}

// - 0:4:32.1 -
~ring = {Ringz.ar(~env3,[~r,~r+1],0.1,0.1)}

// - 0:4:33.97 -
~ring.play

// - 0:4:38.26 -
~ring = {Ringz.ar(~env3,[~r,~r+1],0.1,0.1).tanh}

// - 0:4:40.89 -
~ring = {Ringz.ar(~env3,[~r,~r+1],0.1,0.1).tanh * 0.1}

// - 0:4:42.68 -
~ring = {Ringz.ar(~env3,[~r,~r+1],0.1,0.1).tanh * 0.4}

// - 0:4:59.07 -
rrand(2,32)

// - 0:5:0.19 -
~env3 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)}

// - 0:5:4.64 -
~env2 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)}

// - 0:5:7.52 -
~env = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)}

// - 0:5:45.52 -
(
Tdef(\theClock,
	{
		loop{
~env = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env2 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env3 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
}})
)

// - 0:5:53.28 -
Tdef(\theClock).play

// - 0:6:13.29 -
(
Tdef(\theClock,
	{
		loop{
			"new clock".postln;
~env = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env2 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env3 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
}})
)

// - 0:6:16.08 -
Tdef(\theClock).play

// - 0:6:52.24 -
(
Tdef(\theClock,
	{
		loop{
			"new clock".postln;
~env = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env2 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env3 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			~env4 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
}})
)

// - 0:6:58.46 -
~env4.clear

// - 0:7:0.19 -
(
Tdef(\theClock,
	{
		loop{
			"new clock".postln;
~env = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env2 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env3 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			~env4 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
}})
)

// - 0:7:2.06 -
~ring2 = {Ringz.ar(~env4,[~r,~r+10],0.1,5).tanh * 0.4}

// - 0:7:5.35 -
~ring2.play

// - 0:7:8.56 -
~ring2 = {Ringz.ar(~env4,[~r,~r+10],0.1,5).tanh * 0.1}

// - 0:7:43.34 -
(
Tdef(\theClock,
	{
		loop{
			"new clock".postln;
~env = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env2 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env3 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			~env4 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
			~env5 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
			~env6 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
			~env7 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
			~env8 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
			~env9 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
			~env10 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
			~env11 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
			~env12 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
}})
)

// - 0:8:6.14 -
(
Tdef(\theClock,
	{
		loop{
			"new clock".postln;
~env = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env2 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env3 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			~env4 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
			~env5 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
			~env6 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
			~env7 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
			~env8 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
			~env9 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
			~env10 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
			~env11 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
			~env12 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
}})
)

// - 0:8:10.94 -
~env5.clear

// - 0:8:37.3 -
(
Tdef(\theClock,
	{
		loop{
			"new clock".postln;
~env = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env2 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env3 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			~env4 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
			~env5 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
			~env6 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
			~env7 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
			~env8 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
			~env9 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
			~env10 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
			~env11 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
			~env12 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
}})
)

// - 0:9:0.37 -
(
Tdef(\theClock,
	{
		loop{
			"new clock".postln;
~env = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env2 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env3 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			~env4 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env5 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env6 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env7 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env8 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env9 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env10 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env11 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env12 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
}})
)

// - 0:9:4.55 -
(
~env4 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env5 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env6 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env7 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env8 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env9 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env10 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env11 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env12 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
);

// - 0:9:19.03 -
~env5.clear

// - 0:9:22.96 -
~env6.clear

// - 0:9:27.24 -
(
~env4 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env5 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env6 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env7 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env8 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env9 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env10 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env11 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env12 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
);

// - 0:9:29.85 -
~ring3 = {Ringz.ar(~env5,[~r+5,~r+15],0.1,50).tanh * 0.01}

// - 0:9:32.7 -
~ring3.play

// - 0:9:33.93 -
~ring4 = {Ringz.ar(~env6,[~r*5,~r*6],0.1,50).tanh * 0.01}

// - 0:9:39.57 -
~ring4.play

// - 0:9:45.18 -
~ring4 = {Ringz.ar(~env6,[~r*5,~r*6],0.1,50).tanh * 0.07}

// - 0:9:50.88 -
~ring3 = {Ringz.ar(~env5,[~r+5,~r+15],0.1,50).tanh * 0.04}

// - 0:9:51.81 -
~ring3 = {Ringz.ar(~env5,[~r+5,~r+15],0.1,50).tanh * 0.08}

// - 0:10:2.05 -
~clk = {Impulse.ar(TRand.kr(25,32,Dust.kr(0.1)))}

// - 0:10:9.88 -
~clk = {Impulse.ar(TRand.kr(20,23,Dust.kr(0.1)))}

// - 0:10:19.4 -
(
Tdef(\theClock,
	{
		loop{
			"new clock".postln;
~env = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env2 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env3 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			~env4 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env5 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env6 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env7 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env8 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env9 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env10 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env11 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};

			~env12 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,10).wait;
}})
)

// - 0:10:23.94 -
~clk = {Impulse.ar(TRand.kr(15,20,Dust.kr(0.1)))}

// - 0:10:46.37 -
~r = {LFNoise1.kr(4).range(65,66.0)}

// - 0:11:2.71 -
~ring4 = {Ringz.ar(~env6,[~r*5,~r*6],0.1,LFNoise1.kr(0.1).range(50,300)).tanh * 0.07}

// - 0:11:23.3 -
~ring5 = {Ringz.ar(~env6,[~r*2,~r*2 + 20],0.1,LFNoise1.kr(0.1).range(50,300)).tanh * 0.07}

// - 0:11:31.01 -
~ring5 = {Ringz.ar(~env7,[~r*2,~r*2 + 20],0.1,LFNoise1.kr(0.1).range(50,300)).tanh * 0.07}

// - 0:11:32.15 -
~ring5.play

// - 0:12:9.33 -
(
Tdef(\theClock,
	{
		loop{
			"new clock".postln;
~env = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env2 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env3 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			~env4 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).range(0.05,0.3))};

			~env5 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).range(0.05,0.3))};

			~env6 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).range(0.05,0.3))};

			~env7 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).range(0.05,0.3))};

			~env8 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).range(0.05,0.3))};

			~env9 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).range(0.05,0.3))};

			~env10 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).range(0.05,0.3))};

			~env11 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).range(0.05,0.3))};

			~env12 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).range(0.05,0.3))};
			rrand(1,10).wait;
}})
)

// - 0:12:18.98 -
~r = {LFNoise1.kr(40).range(65,66.0)}

// - 0:12:42.44 -
~synth2[10] = \filterIn -> {|in| RLPF.ar(in,LFTri.kr(0.1).range(440,9000),LFNoise1.kr(0.1).range(0.1,0.8))}

// - 0:13:9.59 -
~ring6 = {Ringz.ar(~env8,[~r*10,~r*11 + 1.2],0.1,LFNoise1.kr(0.1).range(50,3000)).tanh * 0.08}

// - 0:13:12.78 -
~ring6.play

// - 0:13:20.36 -
~ring6 = {Ringz.ar(~env8,[~r*10,~r*11 + 1.2],0.1,LFNoise1.kr(0.1).range(50,30000)).tanh * 0.08}

// - 0:13:30.01 -
~ring6 = {LeakDC.ar(Ringz.ar(~env8,[~r*10,~r*11 + 1.2],0.1,LFNoise1.kr(0.1).range(50,30000)).tanh * 0.08)}

// - 0:13:58.81 -
~ring7 = {LeakDC.ar(Ringz.ar(~env7,[~r*20,~r*30 + 1.2],0.1,LFNoise1.kr(0.1).range(5,30)).tanh * 0.08)}

// - 0:14:1.43 -
~ring7.play

// - 0:14:4.22 -
~ring7 = {LeakDC.ar(Ringz.ar(~env7,[~r*20,~r*30 + 1.2],0.1,LFNoise1.kr(0.1).range(5,30)).tanh * 0.4)}

// - 0:14:6.44 -
~ring7 = {LeakDC.ar(Ringz.ar(~env7,[~r*20,~r*30 + 1.2],0.1,LFNoise1.kr(0.1).range(5,30)).tanh * 0.03)}

// - 0:14:35.46 -
~dfm = {DFM1.ar(SinOsc.ar([~r,~r+0.1],0,0.2),[~r,~r+0.5],0.2)}

// - 0:14:38.83 -
~dfm = {DFM1.ar(SinOsc.ar([~r,~r+0.1],0,0.2),[~r,~r+0.5],0.2)}

// - 0:14:38.93 -
~dfm = {DFM1.ar(SinOsc.ar([~r,~r+0.1],0,0.2),[~r,~r+0.5],0.2)}

// - 0:14:39.01 -
~dfm = {DFM1.ar(SinOsc.ar([~r,~r+0.1],0,0.2),[~r,~r+0.5],0.2)}

// - 0:14:39.13 -
~dfm = {DFM1.ar(SinOsc.ar([~r,~r+0.1],0,0.2),[~r,~r+0.5],0.2)}

// - 0:14:39.22 -
~dfm = {DFM1.ar(SinOsc.ar([~r,~r+0.1],0,0.2),[~r,~r+0.5],0.2)}

// - 0:14:39.36 -
~dfm = {DFM1.ar(SinOsc.ar([~r,~r+0.1],0,0.2),[~r,~r+0.5],0.2)}

// - 0:14:40.58 -
~dfm.play

// - 0:15:4.47 -
~dfm = {DFM1.ar(SinOsc.ar([~r,~r+0.1],0,0.2),[~r,~r+0.5],LFNoise1.kr(0.1).range(0.6,1.5),1,0,0.0003,0.1)}

// - 0:15:13.39 -
~dfm = {DFM1.ar(SinOsc.ar([~r,~r+0.1],0,0.2),[~r,~r*2],LFNoise1.kr(0.1).range(0.6,1.5),1,0,0.0003,0.1)}

// - 0:15:19.91 -
~dfm = {DFM1.ar(SinOsc.ar([~r,~r+0.1],0,0.7).tanh,[~r,~r*2],LFNoise1.kr(0.1).range(0.6,1.5),1,0,0.0003,0.1)}

// - 0:15:25.3 -
~dfm = {DFM1.ar(Saw.ar([~r,~r+0.1],0,0.7).tanh,[~r,~r*2],LFNoise1.kr(0.1).range(0.6,1.5),1,0,0.0003,0.1)}

// - 0:15:29.95 -
~dfm = {DFM1.ar(Saw.ar([~r,~r+0.1],0,4).tanh,[~r,~r*2],LFNoise1.kr(0.1).range(0.6,1.5),1,0,0.0003,0.1)}

// - 0:15:37.03 -
~dfm = {DFM1.ar(SinOsc.ar([~r,~r+0.1],0,4).tanh,[~r,~r*2],LFNoise1.kr(0.1).range(0.6,1.5),1,0,0.0003,0.1)}

// - 0:15:41.28 -
~dfm = {DFM1.ar(SinOscFB.ar([~r,~r+0.1],1,4).tanh,[~r,~r*2],LFNoise1.kr(0.1).range(0.6,1.5),1,0,0.0003,0.1)}

// - 0:15:43.5 -
~dfm = {DFM1.ar(SinOscFB.ar([~r,~r+0.1],2,4).tanh,[~r,~r*2],LFNoise1.kr(0.1).range(0.6,1.5),1,0,0.0003,0.1)}

// - 0:15:46.33 -
~dfm = {DFM1.ar(SinOscFB.ar([~r,~r+0.1],2,4).tanh,[~r,~r*2],LFNoise1.kr(0.1).range(0.6,1.5),1,0,0.0003,0.3)}

// - 0:15:50.25 -
p.fadeTime = 4

// - 0:16:21.07 -
(
Tdef(\theClock,
	{
		loop{
			"new clock".postln;
~env = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env2 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env3 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			~env4 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).range(0.01,0.3))};

			~env5 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).range(0.01,0.3))};

			~env6 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).range(0.01,0.3))};

			~env7 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).range(0.01,0.3))};

			~env8 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).range(0.01,0.3))};

			~env9 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).range(0.01,0.3))};

			~env10 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).range(0.01,0.3))};

			~env11 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).range(0.01,0.3))};

			~env12 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).range(0.01,0.3))};
			rrand(1,10).wait;
}})
)

// - 0:16:38.12 -
(
Tdef(\theClock,
	{
		loop{
			"new clock".postln;
~env = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env2 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env3 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			~env4 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.3))};

			~env5 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.3))};

			~env6 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.3))};

			~env7 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.3))};

			~env8 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.3))};

			~env9 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.3))};

			~env10 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.3))};

			~env11 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.3))};

			~env12 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.3))};
			rrand(1,10).wait;
}})
)

// - 0:16:46.71 -
~ring3 = {Ringz.ar(~env5,[~r+5,~r+15],0.1,50).tanh * 0.4}

// - 0:16:51.48 -
~ring3 = {Ringz.ar(~env5,[~r+5,~r+15],0.1,50).tanh * 0.1}

// - 0:16:59.27 -
~dfm = {DFM1.ar(SinOscFB.ar([~r,~r+0.1],2,4).tanh,[~r,~r*2],LFNoise1.kr(0.1).range(0.6,3.5),1,0,0.0003,0.3)}

// - 0:17:2.88 -
~dfm = {DFM1.ar(SinOscFB.ar([~r,~r+0.1],2,8).tanh,[~r,~r*2],LFNoise1.kr(0.1).range(0.6,3.5),1,0,0.0003,0.3)}

// - 0:17:29.1 -
~dfm = {DFM1.ar(SinOscFB.ar([~r,~r+0.1],2,LFNoise1.kr(0.1).range(4,90)).tanh,[~r,~r*2],LFNoise1.kr(0.1).range(0.6,3.5),1,0,0.0003,0.3)}

// - 0:17:33.83 -
~dfm = {DFM1.ar(SinOscFB.ar([~r,~r+0.1],2,LFNoise1.kr(0.1).range(4,90)).tanh,[~r,~r*2],LFNoise1.kr(0.1).range(0.6,3.5),1,0,0.03,0.3)}

// - 0:17:35.47 -
~dfm = {DFM1.ar(SinOscFB.ar([~r,~r+0.1],2,LFNoise1.kr(0.1).range(4,90)).tanh,[~r,~r*2],LFNoise1.kr(0.1).range(0.6,3.5),1,0,0.03,0.2)}

// - 0:17:42.34 -
~dfm = {DFM1.ar(SinOscFB.ar([~r,~r+0.1],2,LFNoise1.kr(0.1).range(4,90)).tanh,[~r,~r*2],LFNoise1.kr(0.1).range(0.6,3.5),1,0,0.03,0.5)}

// - 0:17:49.09 -
~r = {LFNoise1.kr(40).range(65,70.0)}

// - 0:17:56.23 -
~r = {LFNoise1.kr(40).range(60,40.0)}

// - 0:18:0.19 -
~r = {LFNoise1.kr(400).range(60,40.0)}

// - 0:18:36.38 -
(
Tdef(\theClock,
	{
		loop{
			"new clock".postln;
~env = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env2 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env3 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			~env4 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env5 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env6 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env7 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env8 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env9 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env10 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env11 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env12 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};
			rrand(1,10).wait;
}})
)

// - 0:18:45.09 -
~ring7 = {LeakDC.ar(Ringz.ar(~env7,[~r*20,~r*30 + 1.2],0.1,LFNoise1.kr(0.1).range(5,30)).tanh * 0.2)}

// - 0:19:1.32 -
~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r*40,~r*50 + 1.2],0.1,LFNoise1.kr(0.1).range(5,30)).tanh * 0.2)}

// - 0:19:5.02 -
~ring8.play

// - 0:19:8.79 -
~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r*40,~r*50 + 1.2],0.1,LFNoise1.kr(0.1).range(5,3000000)).tanh * 0.2)}

// - 0:19:14.94 -
~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r*40,~r*50 + 1.2],0.1,LFNoise1.kr(0.1).range(5,3000000)).tanh * 0.2)}

// - 0:19:21.89 -
~clk = {Impulse.ar(TRand.kr(10,20,Dust.kr(0.1)))}

// - 0:19:25.07 -
~clk = {Impulse.ar(TRand.kr(1,20,Dust.kr(0.1)))}

// - 0:19:27.04 -
~clk = {Impulse.ar(TRand.kr(1,20,Dust.kr(0.6)))}

// - 0:19:28.86 -
~clk = {Impulse.ar(TRand.kr(1,20,Dust.kr(1)))}

// - 0:20:14.01 -
~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r*4,~r*5 + 1.2],0.1,LFNoise1.kr(0.1).range(5,3000000)).tanh * 0.2)}

// - 0:20:17.66 -
~ring7 = {LeakDC.ar(Ringz.ar(~env7,[~r,~r+ 1.2],0.1,LFNoise1.kr(0.1).range(5,30)).tanh * 0.2)}

// - 0:20:21.44 -
~r = {LFNoise1.kr(400).range(60,10.0)}

// - 0:20:26.48 -
~r = {LFNoise1.kr(400).range(60,120.0)}

// - 0:20:32.41 -
~r = {LFNoise1.kr(4000).range(60,120.0)}

// - 0:20:35.3 -
~r = {SinOsc.kr(4000).range(60,120.0)}

// - 0:20:39.18 -
~r = {SinOsc.kr(4000).range(60,420.0)}

// - 0:20:44.93 -
~r = {SinOsc.kr(4000).range(60,61)}

// - 0:20:47.89 -
~dfm.stop(10)

// - 0:21:17.61 -
~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r*4,~r + 1.2],0.1,LFNoise1.kr(0.1).range(5,3000000)).tanh * 0.2)}

// - 0:21:20.14 -
~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r,~r + 1.2],0.1,LFNoise1.kr(0.1).range(5,3000000)).tanh * 0.2)}

// - 0:21:53.1 -
~ring6 = {LeakDC.ar(Ringz.ar(~env8,[~r + (~r/2),~r + (~r/2)],0.1,LFNoise1.kr(0.1).range(50,30000)).tanh * 0.08)}

// - 0:22:4.73 -
~ring4 = {Ringz.ar(~env6,[~r + (~r/30),~r*6],0.1,LFNoise1.kr(0.1).range(50,300)).tanh * 0.07}

// - 0:22:12.78 -
~ring4 = {Ringz.ar(~env6,[~r + (~r/30),~r + (~r * 1.45)],0.1,LFNoise1.kr(0.1).range(50,300)).tanh * 0.07}

// - 0:22:33.42 -
~clk = {Impulse.ar(TRand.kr(1,20,Dust.kr(1)).poll(1))}

// - 0:22:38.44 -
~clk = {Impulse.ar(TRand.kr(1,20,Dust.kr(1)).round(1).poll(1))}

// - 0:23:18.08 -
~synth3[0] = {WhiteNoise.ar([~env4,~env7]) * 0.5}

// - 0:23:21.18 -
~synth3[10] = \filterIn -> {|in| RLPF.ar(in,LFTri.kr(0.1).range(440,9000),LFNoise1.kr(0.1).range(0.1,0.8))}

// - 0:23:24.19 -
~synth3.play

// - 0:23:45.28 -
~synth4[0] = {WhiteNoise.ar([~env8,~env9]) * 0.5}

// - 0:23:46.19 -
~synth4[10] = \filterIn -> {|in| RLPF.ar(in,LFTri.kr(0.1).range(440,9000),LFNoise1.kr(0.1).range(0.1,0.8))}

// - 0:23:48.73 -
~synth4.play

// - 0:24:13.17 -
~clk = {Impulse.ar(10)}

// - 0:24:24.59 -
~clk = {Impulse.ar(14)}

// - 0:24:28.05 -
~clk = {Impulse.ar(10)}

// - 0:24:43.34 -
(
Tdef(\theClock,
	{
		loop{
			"new clock".postln;
~env = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env2 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env3 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			~env4 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env5 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env6 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env7 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env8 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env9 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env10 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env11 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env12 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};
			10.wait;
}})
)

// - 0:24:58.78 -
(
Tdef(\theClock,
	{
		loop{
			"new clock".postln;
~env = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env2 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env3 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			~env4 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env5 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env6 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env7 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env8 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env9 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env10 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env11 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env12 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};
			1.wait;
}})
)

// - 0:25:54.37 -
(
Tdef(\theClock,
	{
		loop{
			"new clock".postln;
~env = {Decay2.ar(PulseDivider.ar(~clk,rrand(5,32)),0.01,0.1)};
~env2 = {Decay2.ar(PulseDivider.ar(~clk,rrand(5,32)),0.01,0.1)};
~env3 = {Decay2.ar(PulseDivider.ar(~clk,rrand(5,32)),0.01,0.1)};
			~env4 = {Decay2.ar(PulseDivider.ar(~clk,rrand(5,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env5 = {Decay2.ar(PulseDivider.ar(~clk,rrand(5,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env6 = {Decay2.ar(PulseDivider.ar(~clk,rrand(5,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env7 = {Decay2.ar(PulseDivider.ar(~clk,rrand(5,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env8 = {Decay2.ar(PulseDivider.ar(~clk,rrand(5,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env9 = {Decay2.ar(PulseDivider.ar(~clk,rrand(5,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env10 = {Decay2.ar(PulseDivider.ar(~clk,rrand(5,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env11 = {Decay2.ar(PulseDivider.ar(~clk,rrand(5,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};

			~env12 = {Decay2.ar(PulseDivider.ar(~clk,rrand(5,32)),0.01,LFNoise1.kr(3).exprange(0.01,0.1))};
			1.wait;
}})
)

// - 0:26:33.2 -
(
var randomVal = rrand(5,32);
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

// - 0:26:37.15 -
(
var randomVal = rrand(10,32);
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

// - 0:26:51.63 -
(
var randomVal = rrand(2,10);
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

// - 0:27:0.42 -
(
var randomVal = {rrand(2,10)};
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

// - 0:27:2.7 -
var randomVal = {rrand(2,10)};

// - 0:27:3.49 -
(
var randomVal = {rrand(2,10)};
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

// - 0:27:6.93 -
(
var randomVal = {rrand(4,10)};
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

// - 0:27:8.93 -
(
var randomVal = {rrand(4,32)};
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

// - 0:27:24.46 -
ProxyMixer.new(p)

// - 0:27:51.85 -
ProxyMixer.new(p)

// - 0:28:4.49 -
~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r * 1.5, ~r + 1.2],0.1,LFNoise1.kr(0.1).range(5,3000000)).tanh * 0.2)}

// - 0:28:11.07 -
~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r * 1.5, ~r + 1.2],0.1,LFNoise1.kr(0.1).range(5,3000000)).tanh * 0.1)}

// - 0:28:31.12 -
~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r * TRand.kr(1,3,Impulse.kr(0.1).round(0.5)), ~r + 1.2],0.1,LFNoise1.kr(0.1).range(5,3000000)).tanh * 0.1)}

// - 0:28:36.13 -
~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r * TRand.kr(1,3,Impulse.kr(0.1).round(0.5)), ~r + 1.2],0.1,LFNoise1.kr(0.1).range(5,30000)).tanh * 0.1)}

// - 0:28:37.62 -
~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r * TRand.kr(1,3,Impulse.kr(0.1).round(0.5)), ~r + 1.2],0.1,LFNoise1.kr(0.1).range(5,3000)).tanh * 0.1)}

// - 0:28:38.83 -
~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r * TRand.kr(1,3,Impulse.kr(0.1).round(0.5)), ~r + 1.2],0.1,LFNoise1.kr(0.1).range(5,300)).tanh * 0.1)}

// - 0:28:41.48 -
~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r * TRand.kr(1,3,Impulse.kr(0.1).round(0.5)), ~r + 1.2],0.1,LFNoise1.kr(0.1).range(5,300)).tanh * 0.4)}

// - 0:28:43.32 -
~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r * TRand.kr(1,3,Impulse.kr(0.1).round(0.5)), ~r + 1.2],0.1,LFNoise1.kr(0.1).range(5,300)).tanh * 0.1)}

// - 0:28:44.96 -
~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r * TRand.kr(1,3,Impulse.kr(0.1).round(0.5)), ~r + 1.2],0.1,LFNoise1.kr(0.1).range(5,300)).tanh * 0.2)}

// - 0:28:52.69 -
var randomVal = {rrand(1,32)};

// - 0:28:53.07 -
(
var randomVal = {rrand(1,32)};
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

// - 0:29:0.12 -
~clk = {Impulse.ar(12)}

// - 0:29:5.59 -
(
var randomVal = {rrand(4,32)};
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

// - 0:29:12.58 -
~clk = {Impulse.ar(11)}

// - 0:29:34.4 -
~clk = {Impulse.ar(LFNoise1.kr(0.01).range(10,12.0))}

// - 0:29:43.24 -
~clk = {Impulse.ar(LFNoise1.kr(0.01).range(8,12.0))}

// - 0:29:47.44 -
~clk = {Impulse.ar(LFNoise1.kr(0.01).range(8,12.0)).poll}

// - 0:29:51.9 -
~clk = {Impulse.ar(LFNoise1.kr(0.01).range(8,12.0).poll(1))}

// - 0:29:56.58 -
~clk = {Impulse.ar(LFNoise1.kr(0.01).range(8,12.0).poll(1))}

// - 0:30:18.34 -
~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r * TRand.kr(1,3,Impulse.kr(0.1).round(0.5)), ~r * 3],0.1,LFNoise1.kr(0.1).range(5,300)).tanh * 0.2)}

// - 0:30:20.81 -
~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r * TRand.kr(1,3,Impulse.kr(0.1).round(0.5)), ~r * 3],0.1,LFNoise1.kr(0.1).range(5,300)).tanh * 0.1)}

// - 0:30:31.35 -
~ring6 = {LeakDC.ar(Ringz.ar(~env8,[~r + (~r/2),~r + (~r/2)],0.1,LFNoise1.kr(0.1).range(50,30000)).tanh * 0.1)}

// - 0:30:35.28 -
~ring5 = {Ringz.ar(~env7,[~r*2,~r*2 + 20],0.1,LFNoise1.kr(0.1).range(50,300)).tanh * 0.14}

// - 0:30:40.44 -
~ring4 = {Ringz.ar(~env6,[~r + (~r/30),~r + (~r * 1.45)],0.1,LFNoise1.kr(0.1).range(50,300)).tanh * 0.19}

// - 0:31:0.84 -
p = ProxyMixer.new(p)

// - 0:31:50.44 -
~r = {SinOsc.kr(4000).range(60,65)}

// - 0:32:0.23 -
~r = {SinOsc.kr(4000).range(60,80)}

// - 0:32:13 -
~r = {SinOsc.kr(4000).range(100,120)}

// - 0:32:35.94 -
~r = {SinOsc.kr(4000).range(100,120) * 0.5}

// - 0:32:40.02 -
~r.fadeTime = 0

// - 0:32:40.8 -
~r = {SinOsc.kr(4000).range(100,120) * 0.5}

// - 0:32:42.96 -
~r = {SinOsc.kr(4000).range(100,120) * 0.75}

// - 0:33:4.29 -
~r = {SinOsc.kr(4000).range(100,120) * TRand.kr(0.25,1.5,Impulse.kr(0.1)).round(0.25)}

// - 0:34:2.61 -
~whiteClap = {WhiteNoise.ar(0.1) * EnvGen.ar(Env.perc,PulseDivider.ar(~clk,8))}

// - 0:34:6.34 -
~whiteClap.clear

// - 0:34:13.72 -
~whiteClap = {Pan2.ar(WhiteNoise.ar(0.1)) * EnvGen.ar(Env.perc,PulseDivider.ar(~clk,8))}

// - 0:34:16.65 -
~whiteClap[0] = {Pan2.ar(WhiteNoise.ar(0.1)) * EnvGen.ar(Env.perc,PulseDivider.ar(~clk,8))}

// - 0:34:20.62 -
~whiteClap.play

// - 0:34:40.16 -
~whiteClap[0] = {Pan2.ar(WhiteNoise.ar(0.1)) * EnvGen.ar(Env.perc(0.01,0.5),PulseDivider.ar(~clk,8))}

// - 0:34:42.36 -
~whiteClap[0] = {Pan2.ar(WhiteNoise.ar(0.1)) * EnvGen.ar(Env.perc(0.01,0.5),PulseDivider.ar(~clk,8))}

// - 0:34:44.16 -
~whiteClap[0] = {Pan2.ar(WhiteNoise.ar(0.1)) * EnvGen.ar(Env.perc(0.01,0.5),PulseDivider.ar(~clk,8))}

// - 0:35:7.64 -
~whiteClap[10] = \filterIn -> {|in| RHPF.ar(in,2000,0.1)}

// - 0:35:17.58 -
var randomVal = {rrand(4,32).round(2)};

// - 0:35:22.3 -
var randomVal = {rrand(8,32).round(2)};

// - 0:35:23.28 -
(
var randomVal = {rrand(8,32).round(2)};
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

// - 0:35:32.03 -
(
var randomVal = {rrand(8,64).round(2)};
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

// - 0:35:51.9 -
~clk = {Impulse.ar(9)}

// - 0:35:55.03 -
~clk = {Impulse.ar(8)}

// - 0:36:13.31 -
~clk = {Impulse.ar(10)}

// - 0:36:28 -
~r = {50}

// - 0:36:35.68 -
~ring2 = {Ringz.ar(~env4,[~r,~r],0.1,5).tanh * 0.1}

// - 0:36:36.32 -
~ring = {Ringz.ar(~env3,[~r,~r],0.1,0.1).tanh * 0.4}

// - 0:36:42.75 -
~ring3 = {Ringz.ar(~env5,[~r,~r],0.1,50).tanh * 0.1}

// - 0:36:51.14 -
~ring4 = {Ringz.ar(~env6,[~r,~r],0.1,LFNoise1.kr(0.1).range(50,300)).tanh * 0.19}

// - 0:36:55.59 -
~whiteClap[0] = {Pan2.ar(WhiteNoise.ar(0.1)) * EnvGen.ar(Env.perc(0.01,0.5),PulseDivider.ar(~clk,8))}

// - 0:37:1.46 -
~ring7 = {LeakDC.ar(Ringz.ar(~env7,[~r,~r],0.1,LFNoise1.kr(0.1).range(5,30)).tanh * 0.2)}

// - 0:37:6.45 -
~ring6 = {LeakDC.ar(Ringz.ar(~env8,[~r,~r],0.1,LFNoise1.kr(0.1).range(50,30000)).tanh * 0.1)}

// - 0:37:9.62 -
~ring5 = {Ringz.ar(~env7,[~r*2,~r],0.1,LFNoise1.kr(0.1).range(50,300)).tanh * 0.14}

// - 0:37:10.79 -
~ring5 = {Ringz.ar(~env7,[~r,~r],0.1,LFNoise1.kr(0.1).range(50,300)).tanh * 0.14}

// - 0:37:19.14 -
~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r, ~r],0.1,LFNoise1.kr(0.1).range(5,300)).tanh * 0.1)}

// - 0:37:22.81 -
~dfm = {DFM1.ar(SinOscFB.ar([~r,~r],2,LFNoise1.kr(0.1).range(4,90)).tanh,[~r,~r*2],LFNoise1.kr(0.1).range(0.6,3.5),1,0,0.03,0.5)}

// - 0:37:29.58 -
(
var randomVal = {rrand(2,64).round(2)};
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

// - 0:37:55.47 -
var randomVal = {rrand(1,64)};

// - 0:37:56.59 -
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

// - 0:38:18.6 -
~whiteClap[10] = \filterIn -> {|in| RHPF.ar(in,2000,0.01)}

// - 0:38:24.8 -
~whiteClap[0] = {Pan2.ar(WhiteNoise.ar(0.1)) * EnvGen.ar(Env.perc(0.01,0.1),PulseDivider.ar(~clk,8))}

// - 0:38:31.65 -
~whiteClap[0] = {Pan2.ar(WhiteNoise.ar(0.1)) * EnvGen.ar(Env.perc(0.01,0.1),PulseDivider.ar(~clk,6))}

// - 0:38:38.46 -
~whiteClap[0] = {Pan2.ar(WhiteNoise.ar(0.1)) * EnvGen.ar(Env.perc(0.01,0.1),PulseDivider.ar(~clk,8))}

// - 0:38:40.77 -
~whiteClap[0] = {Pan2.ar(WhiteNoise.ar(0.1)) * EnvGen.ar(Env.perc(0.01,0.1),PulseDivider.ar(~clk,8))}

// - 0:38:48.79 -
~whiteClap[10] = \filterIn -> {|in| RHPF.ar(in,[2000,3000],0.01)}

// - 0:38:52.33 -
~whiteClap[10] = \filterIn -> {|in| RHPF.ar(in,[2000,2100],0.01)}

// - 0:38:56.06 -
~whiteClap[10] = \filterIn -> {|in| RHPF.ar(in,[2000,1600],0.01)}

// - 0:39:0.61 -
~whiteClap[10] = \filterIn -> {|in| RHPF.ar(in,[2000,1633],0.01)}

// - 0:39:13.86 -
~whiteClap[10] = \filterIn -> {|in| RHPF.ar(in,[200,201],0.01)}

// - 0:39:19.68 -
~whiteClap[10] = \filterIn -> {|in| RHPF.ar(in,[200,201],0.091)}

// - 0:39:21.2 -
~whiteClap[10] = \filterIn -> {|in| RHPF.ar(in,[200,201],0.001)}

// - 0:39:27.08 -
~whiteClap[10] = \filterIn -> {|in| RHPF.ar(in,[2000,201],0.001)}

// - 0:39:29.01 -
~whiteClap[10] = \filterIn -> {|in| RHPF.ar(in,[200,201],0.001)}

// - 0:39:30.62 -
~whiteClap[10] = \filterIn -> {|in| RHPF.ar(in,[200,201],0.01)}

// - 0:39:35.69 -
~whiteClap[10] = \filterIn -> {|in| RHPF.ar(in,[20,201],0.01)}

// - 0:39:42.05 -
~whiteClap[10] = \filterIn -> {|in| RHPF.ar(in,[1000,1111],0.01)}

// - 0:40:10.93 -
~r = {[50,55]}

// - 0:40:21.2 -
~r = {55}

// - 0:40:25.75 -
~r = {50}

// - 0:41:1.58 -
~r = {50 + Demand.kr(Impulse.kr(1),0,Dseq([0,5,10,5],inf))}

// - 0:41:20.49 -
~r = {50 + Demand.kr(Impulse.kr(1),0,Dseq([0,5,10,5,15,5,20,5,25,5,30],inf))}

// - 0:41:40.43 -
~r = {50 + Demand.kr(Impulse.kr(1),0,Dseq([0,5,10,5,15],inf))}

// - 0:42:0.77 -
~synth4[0] = {WhiteNoise.ar([~clk,~env9]) * 0.5}

// - 0:42:1.83 -
~synth4[10] = \filterIn -> {|in| RLPF.ar(in,LFTri.kr(0.1).range(440,9000),LFNoise1.kr(0.1).range(0.1,0.8))}

// - 0:42:7.18 -
~synth4.play

// - 0:42:16.41 -
~synth4[0] = {WhiteNoise.ar([~env1,~env9]) * 0.5}

// - 0:42:17.6 -
~synth4[10] = \filterIn -> {|in| RLPF.ar(in,LFTri.kr(0.1).range(440,9000),LFNoise1.kr(0.1).range(0.1,0.8))}

// - 0:42:36.58 -
~synth5[0] = {WhiteNoise.ar([~env3,~env5]) * 0.5}

// - 0:42:37.08 -
~synth5[10] = \filterIn -> {|in| RLPF.ar(in,LFTri.kr(0.1).range(440,9000),LFNoise1.kr(0.1).range(0.1,0.8))}

// - 0:42:42.02 -
~synth5.play

// - 0:42:44.59 -
~synth5[0] = {WhiteNoise.ar([~env3,~env5]) * 0.59}

// - 0:42:45.64 -
~synth5[0] = {WhiteNoise.ar([~env3,~env5]) * 0.9}

// - 0:42:51.18 -
~synth4[0] = {WhiteNoise.ar([~env1,~env9]) * 0.9}

// - 0:42:53.51 -
~synth3[0] = {WhiteNoise.ar([~env4,~env7]) * 0.9}

// - 0:42:55.65 -
~synth2[0] = {WhiteNoise.ar([~env,~env2]) * 0.9}

// - 0:43:3.67 -
~r = {50 + Demand.kr(Impulse.kr(1),0,Dseq([0,5,10,5,15,50],inf))}

// - 0:43:15.87 -
~r = {50 + Demand.kr(Impulse.kr(1),0,Dseq([0,5,10,5,15,50,90],inf))}

// - 0:43:25.49 -
~dfm = {DFM1.ar(SinOscFB.ar([~r,~r],2,LFNoise1.kr(0.1).range(4,90)).tanh,[~r,~r],LFNoise1.kr(0.1).range(0.6,3.5),1,0,0.03,0.5)}

// - 0:43:27.66 -
~dfm = {DFM1.ar(SinOscFB.ar([~r,~r],2,LFNoise1.kr(0.1).range(4,90)).tanh,[~r,~r],LFNoise1.kr(0.1).range(0.6,3.5),1,0,0.03,0.1)}

// - 0:43:32.32 -
~dfm.play

// - 0:43:50.61 -
~dfm = {DFM1.ar(SinOsc.ar(~r),[~r,~r],LFNoise1.kr(0.1).range(0.6,3.5),1,0,0.03,0.1)}

// - 0:43:53.09 -
~dfm = {DFM1.ar(SinOsc.ar(~r,0,0.1),[~r,~r],LFNoise1.kr(0.1).range(0.6,3.5),1,0,0.03,0.1)}

// - 0:43:56.29 -
~dfm = {DFM1.ar(SinOsc.ar(~r,0,0.1),[~r,~r],LFNoise1.kr(0.1).range(0.6,1.5),1,0,0.03,0.1)}

// - 0:43:57.93 -
~dfm = {DFM1.ar(SinOsc.ar(~r,0,0.1),[~r,~r],LFNoise1.kr(0.1).range(0.6,1.5),1,0,0.03,0.5)}

// - 0:44:14.29 -
~dfm = {DFM1.ar(SinOsc.ar(~r.lag,0,0.1),[~r,~r],LFNoise1.kr(0.1).range(0.6,1.5),1,0,0.03,0.5)}

// - 0:44:21.25 -
~dfm = {DFM1.ar(SinOsc.ar(~r.lag,0,0.1),[~r.lag,~r.lag],LFNoise1.kr(0.1).range(0.6,1.5),1,0,0.03,0.5)}

// - 0:44:23.26 -
~dfm = {DFM1.ar(SinOsc.ar(~r.lag,0,0.1),[~r.lag,~r.lag],LFNoise1.kr(0.1).range(0.6,1.5),1,0,0.03,0.1)}

// - 0:44:31.26 -
~dfm = {DFM1.ar(SinOsc.ar(~r.lag,0,0.1),[~r.lag,~r.lag],LFNoise1.kr(0.1).range(0.6,1.5),1,0,0.003,0.1)}

// - 0:44:34.28 -
~r = {50 + Demand.kr(Impulse.kr(1),0,Dseq([0,5,10,5,15,50,90,300],inf))}

// - 0:44:46.2 -
~r = {300}

// - 0:44:53.67 -
~dfm.stop(240)

// - 0:45:2.17 -
~r.fadeTime = 10

// - 0:45:3.89 -
~r = {3000}

// - 0:45:14.63 -
~synth.stop(5)

// - 0:45:16.08 -
~synth1.stop(5)

// - 0:45:16.48 -
~synth2.stop(5)

// - 0:45:16.88 -
~synth3.stop(5)

// - 0:45:17.34 -
~synth4.stop(5)

// - 0:45:18.18 -
~synth5.stop(5)

// - 0:45:20.5 -
~whiteClap.stop(5)

// - 0:45:26.02 -
~r = {30000}

// - 0:45:35.85 -
~dfm.stop(2)

// - 0:45:39.62 -
~dfm.stop(2)

// - 0:45:42.17 -
~dfm.clear

// - 0:45:48.58 -
~r = {30}

// - 0:46:0.75 -
~r = {3}

// - 0:46:7.23 -
~r = {4949494949494}

// - 0:46:24.07 -
p.clear

// - 0:46:34.96 -
p.clear

// - 0:46:41.19 -
s.freeAll


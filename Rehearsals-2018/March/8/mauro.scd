//8th March 2018
//Track for split with Mauro
p = ProxySpace.push(s)

(
d = Dictionary.new;
d[\defaultState] = {
	//ping
~ring[0] = {Ringz.ar(~env3,[~r*1.009,~r*1.021] ,~time * 30 ,LFNoise1.kr(1).range(0.2,0.8)).softclip * 0.3};
//small burst
~ring2[0] = {Ringz.ar(~env4,[~r,~r]*[2,3],~time*20,5).tanh * 0.2};
//square overall
~ring3[0] = {Ringz.ar(~env5,[~r,~r]*[100,101],~time*10,5000).tanh * 0.05};
//large to larger
~ring4[0] = {Ringz.ar(~env6,[~r,~r],~time,LFNoise1.kr(0.1).range(50,300)).tanh * 0.19};
//large to larger
~ring5[0] = {Ringz.ar(~env7,[~r,~r],~time,LFNoise1.kr(0.1).range(50,300)).tanh * 0.14};
//larger to enormous, chorused
~ring6[0] = {LeakDC.ar(Ringz.ar(~env8,[~r*1.02,~r*1.03],~time,LFNoise1.kr(0.1).range(50,30000)).tanh * 0.3)};
//less enormous, also chorused
~ring7[0] = {LeakDC.ar(Ringz.ar(~env7,[~r*1.05,~r*0.99],~time,LFNoise1.kr(0.1).range(5,30)).tanh * 0.4)};
//also enormous, doubled
~ring8[0] = {LeakDC.ar(Ringz.ar(~env8,[~r, ~r*1.04] * 2,~time,LFNoise1.kr(0.1).range(5,300)).tanh * 0.4)};
~rims = {Pan2.ar(PlayBuf.ar(1,d["rims"][13],1,~rimRand,0,0,0),LFNoise1.kr(30),LFNoise1.kr(0.8).range(0.5,1))};
~kicks = {Pan2.ar(PlayBuf.ar(1,d["kicks"][7],1,~kickRand,0,0,0),0)}
};
(
d[\addFolder] = {
	arg string = "", path = "";
	d.add(string -> List.new);
	path = PathName(path);
	for(0, path.entries.size-1,
		{arg i;
			d[string].add(
				Buffer.readChannel(s,path.entries[i].fullPath,0,-1,0)
			);
})}
);

d[\addFolder].("rims",thisProcess.nowExecutingPath.dirname ++ "/rims");
d[\addFolder].("kicks",thisProcess.nowExecutingPath.dirname ++ "/kicks");
)

(
~r = {50};
~clk = {Impulse.ar(8)};
~time = {0.01}
)

(
var randomVal = {rrand(4,32)}, rimRand = {rrand(2,32)}, kickRand = {rrand(3,16)};
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
			~kickRand = {PulseDivider.ar(~clk,kickRand)};
			~rimRand = {PulseDivider.ar(~clk,rimRand)};
			rrand(1,10).wait;
}});
Tdef(\theClock).play;
);

//noise claps
(
~whiteClap[0] = {Pan2.ar(WhiteNoise.ar(0.1),Saw.kr(0.12)) * EnvGen.ar(Env.perc(0.01,0.1),PulseDivider.ar(~clk,6))};
~whiteClap[10] = \filterIn -> {|in| RHPF.ar(in,[1000,1111],0.01)};
~whiteClap2[0] = {Pan2.ar(WhiteNoise.ar(0.1),Saw.kr(0.1)) * EnvGen.ar(Env.perc(0.01,0.1),PulseDivider.ar(~clk,12))};
~whiteClap2[10] = \filterIn -> {|in| RHPF.ar(in,[1000,1111]*1.25,0.01)};
~whiteClap3[0] = {Pan2.ar(WhiteNoise.ar(0.1),Saw.kr(0.14)) * EnvGen.ar(Env.perc(0.01,0.05),PulseDivider.ar(~clk,TRand.kr(2,4,Impulse.kr(0.5)).round(1) *2))};
~whiteClap3[10] = \filterIn -> {|in| RHPF.ar(in,[1000,1111]*2,0.01)};
);

//fundamentals
(
~r = {50};
~clk = {Impulse.ar(8)};
~time = {0.01}
)

//rings/kick/rim
(
//ping
~ring[0] = {Ringz.ar(~env3,[~r*1.009,~r*1.021] ,~time * 30 ,LFNoise1.kr(1).range(0.2,0.8)).softclip * 0.3};
//small burst
~ring2[0] = {Ringz.ar(~env4,[~r,~r]*[2,3],~time*20,5).tanh * 0.2};
//square overall
~ring3[0] = {Ringz.ar(~env5,[~r,~r]*[100,101],~time*10,5000).tanh * 0.05};
//large to larger
~ring4[0] = {Ringz.ar(~env6,[~r,~r],~time,LFNoise1.kr(0.1).range(50,300)).tanh * 0.19};
//large to larger
~ring5[0] = {Ringz.ar(~env7,[~r,~r],~time,LFNoise1.kr(0.1).range(50,300)).tanh * 0.14};
//larger to enormous, chorused
~ring6[0] = {LeakDC.ar(Ringz.ar(~env8,[~r*1.02,~r*1.03],~time,LFNoise1.kr(0.1).range(50,30000)).tanh * 0.3)};
//less enormous, also chorused
~ring7[0] = {LeakDC.ar(Ringz.ar(~env7,[~r*1.05,~r*0.99],~time,LFNoise1.kr(0.1).range(5,30)).tanh * 0.4)};
//also enormous, doubled
~ring8[0] = {LeakDC.ar(Ringz.ar(~env8,[~r, ~r*1.04] * 2,~time,LFNoise1.kr(0.1).range(5,300)).tanh * 0.4)};
~rims = {Pan2.ar(PlayBuf.ar(1,d["rims"][13],1,~rimRand,0,0,0),LFNoise1.kr(30),LFNoise1.kr(0.8).range(0.5,1))};
~kicks = {Pan2.ar(PlayBuf.ar(1,d["kicks"][7],1,~kickRand,0,0,0),0)}
)

//stereo
(
~ring[10] = \filterIn -> {|in| Balance2.ar(in[0],in[1],SinOsc.kr(0.1,0,0.99))};
~ring2[10] = \filterIn -> {|in| Balance2.ar(in[0],in[1],SinOsc.kr(0.11,0.4,0.99))};
~ring3[10] = \filterIn -> {|in| Balance2.ar(in[0],in[1],SinOsc.kr(0.12,0.1,0.99))};
~ring4[10] = \filterIn -> {|in| Balance2.ar(in[0],in[1],SinOsc.kr(0.13,0.8,0.99))};
~ring5[10] = \filterIn -> {|in| Balance2.ar(in[0],in[1],SinOsc.kr(0.14,2pi,0.99))};
~ring6[10] = \filterIn -> {|in| Balance2.ar(in[0],in[1],SinOsc.kr(0.15,0.9,0.99))};
~ring7[10] = \filterIn -> {|in| Balance2.ar(in[0],in[1],SinOsc.kr(0.16,0.6,0.99))};
~ring8[10] = \filterIn -> {|in| Balance2.ar(in[0],in[1],SinOsc.kr(0.17,0.1,0.99))};
)

~ring3.play;

(
~ring.play;
~ring2.play;
~ring3.play;
~ring4.play;
~ring5.play;
~ring6.play;
~ring7.play;
~ring8.play;
)

(
~whiteClap.play;
~whiteClap2.play;
~whiteClap3.play;
)
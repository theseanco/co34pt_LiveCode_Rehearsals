List[ [ 2801.187005304, 'me', "s.freeAll" ], [ 2794.964726605, 'me', "p.clear" ], [ 2784.06541091, 'me', "p.clear" ], [ 2767.234032032, 'me', "~r = {4949494949494}" ], [ 2760.754089776, 'me', "~r = {3}" ], [ 2748.584354325, 'me', "~r = {30}" ], [ 2742.172640173, 'me', "~dfm.clear" ], [ 2739.619791234, 'me', "~dfm.stop(2)" ], [ 2735.848880427, 'me', "~dfm.stop(2)" ], [ 2726.018014126, 'me', "~r = {30000}" ], [ 2720.500082449, 'me', "~whiteClap.stop(5)" ], [ 2718.176451376, 'me', "~synth5.stop(5)" ], [ 2717.344401896, 'me', "~synth4.stop(5)" ], [ 2716.883467963, 'me', "~synth3.stop(5)" ], [ 2716.47821401, 'me', "~synth2.stop(5)" ], [ 2716.078187378, 'me', "~synth1.stop(5)" ], [ 2714.634589795, 'me', "~synth.stop(5)" ], [ 2703.89256272, 'me', "~r = {3000}" ], [ 2702.170187211, 'me', "~r.fadeTime = 10" ], [ 2693.667401111, 'me', "~dfm.stop(240)" ], [ 2686.202319853, 'me', "~r = {300}" ], [ 2674.281408159, 'me', "~r = {50 + Demand.kr(Impulse.kr(1),0,Dseq([0,5,10,5,15,50,90,300],inf))}" ], [ 2671.257994939, 'me', "~dfm = {DFM1.ar(SinOsc.ar(~r.lag,0,0.1),[~r.lag,~r.lag],LFNoise1.kr(0.1).range(0.6,1.5),1,0,0.003,0.1)}" ], [ 2663.255712846, 'me', "~dfm = {DFM1.ar(SinOsc.ar(~r.lag,0,0.1),[~r.lag,~r.lag],LFNoise1.kr(0.1).range(0.6,1.5),1,0,0.03,0.1)}" ], [ 2661.253651156, 'me', "~dfm = {DFM1.ar(SinOsc.ar(~r.lag,0,0.1),[~r.lag,~r.lag],LFNoise1.kr(0.1).range(0.6,1.5),1,0,0.03,0.5)}" ], [ 2654.293974219, 'me', "~dfm = {DFM1.ar(SinOsc.ar(~r.lag,0,0.1),[~r,~r],LFNoise1.kr(0.1).range(0.6,1.5),1,0,0.03,0.5)}" ], [ 2637.926683425, 'me', "~dfm = {DFM1.ar(SinOsc.ar(~r,0,0.1),[~r,~r],LFNoise1.kr(0.1).range(0.6,1.5),1,0,0.03,0.5)}" ], [ 2636.294630712, 'me', "~dfm = {DFM1.ar(SinOsc.ar(~r,0,0.1),[~r,~r],LFNoise1.kr(0.1).range(0.6,1.5),1,0,0.03,0.1)}" ], [ 2633.09130259, 'me', "~dfm = {DFM1.ar(SinOsc.ar(~r,0,0.1),[~r,~r],LFNoise1.kr(0.1).range(0.6,3.5),1,0,0.03,0.1)}" ], [ 2630.60881449, 'me', "~dfm = {DFM1.ar(SinOsc.ar(~r),[~r,~r],LFNoise1.kr(0.1).range(0.6,3.5),1,0,0.03,0.1)}" ], [ 2612.318753804, 'me', "~dfm.play" ], [ 2607.660565132, 'me', "~dfm = {DFM1.ar(SinOscFB.ar([~r,~r],2,LFNoise1.kr(0.1).range(4,90)).tanh,[~r,~r],LFNoise1.kr(0.1).range(0.6,3.5),1,0,0.03,0.1)}" ], [ 2605.490197329, 'me', "~dfm = {DFM1.ar(SinOscFB.ar([~r,~r],2,LFNoise1.kr(0.1).range(4,90)).tanh,[~r,~r],LFNoise1.kr(0.1).range(0.6,3.5),1,0,0.03,0.5)}" ], [ 2595.873365251, 'me', "~r = {50 + Demand.kr(Impulse.kr(1),0,Dseq([0,5,10,5,15,50,90],inf))}" ], [ 2583.669308112, 'me', "~r = {50 + Demand.kr(Impulse.kr(1),0,Dseq([0,5,10,5,15,50],inf))}" ], [ 2575.648312219, 'me', "~synth2[0] = {WhiteNoise.ar([~env,~env2]) * 0.9}" ], [ 2573.505627716, 'me', "~synth3[0] = {WhiteNoise.ar([~env4,~env7]) * 0.9}" ], [ 2571.18366116, 'me', "~synth4[0] = {WhiteNoise.ar([~env1,~env9]) * 0.9}" ], [ 2565.636102092, 'me', "~synth5[0] = {WhiteNoise.ar([~env3,~env5]) * 0.9}" ], [ 2564.589296434, 'me', "~synth5[0] = {WhiteNoise.ar([~env3,~env5]) * 0.59}" ], [ 2562.017870064, 'me', "~synth5.play" ], [ 2557.075453501, 'me', "~synth5[10] = \\filterIn -> {|in| RLPF.ar(in,LFTri.kr(0.1).range(440,9000),LFNoise1.kr(0.1).range(0.1,0.8))}" ], [ 2556.582696954, 'me', "~synth5[0] = {WhiteNoise.ar([~env3,~env5]) * 0.5}" ], [ 2537.601773502, 'me', "~synth4[10] = \\filterIn -> {|in| RLPF.ar(in,LFTri.kr(0.1).range(440,9000),LFNoise1.kr(0.1).range(0.1,0.8))}" ], [ 2536.409319858, 'me', "~synth4[0] = {WhiteNoise.ar([~env1,~env9]) * 0.5}" ], [ 2527.180409655, 'me', "~synth4.play" ], [ 2521.83038084, 'me', "~synth4[10] = \\filterIn -> {|in| RLPF.ar(in,LFTri.kr(0.1).range(440,9000),LFNoise1.kr(0.1).range(0.1,0.8))}" ], [ 2520.772974014, 'me', "~synth4[0] = {WhiteNoise.ar([~clk,~env9]) * 0.5}" ], [ 2500.42666162, 'me', "~r = {50 + Demand.kr(Impulse.kr(1),0,Dseq([0,5,10,5,15],inf))}" ], [ 2480.492148766, 'me', "~r = {50 + Demand.kr(Impulse.kr(1),0,Dseq([0,5,10,5,15,5,20,5,25,5,30],inf))}" ], [ 2461.581681544, 'me', "~r = {50 + Demand.kr(Impulse.kr(1),0,Dseq([0,5,10,5],inf))}" ], [ 2425.75474698, 'me', "~r = {50}" ], [ 2421.202145614, 'me', "~r = {55}" ], [ 2410.934462688, 'me', "~r = {[50,55]}" ], [ 2382.046670499, 'me', "~whiteClap[10] = \\filterIn -> {|in| RHPF.ar(in,[1000,1111],0.01)}" ], [ 2375.688780472, 'me', "~whiteClap[10] = \\filterIn -> {|in| RHPF.ar(in,[20,201],0.01)}" ], [ 2370.624589858, 'me', "~whiteClap[10] = \\filterIn -> {|in| RHPF.ar(in,[200,201],0.01)}" ], [ 2369.006772423, 'me', "~whiteClap[10] = \\filterIn -> {|in| RHPF.ar(in,[200,201],0.001)}" ], [ 2367.0816681, 'me', "~whiteClap[10] = \\filterIn -> {|in| RHPF.ar(in,[2000,201],0.001)}" ], [ 2361.200637794, 'me', "~whiteClap[10] = \\filterIn -> {|in| RHPF.ar(in,[200,201],0.001)}" ], [ 2359.683840387, 'me', "~whiteClap[10] = \\filterIn -> {|in| RHPF.ar(in,[200,201],0.091)}" ], [ 2353.859341454, 'me', "~whiteClap[10] = \\filterIn -> {|in| RHPF.ar(in,[200,201],0.01)}" ], [ 2340.60853603, 'me', "~whiteClap[10] = \\filterIn -> {|in| RHPF.ar(in,[2000,1633],0.01)}" ], [ 2336.060693138, 'me', "~whiteClap[10] = \\filterIn -> {|in| RHPF.ar(in,[2000,1600],0.01)}" ], [ 2332.329845915, 'me', "~whiteClap[10] = \\filterIn -> {|in| RHPF.ar(in,[2000,2100],0.01)}" ], [ 2328.78847964, 'me', "~whiteClap[10] = \\filterIn -> {|in| RHPF.ar(in,[2000,3000],0.01)}" ], [ 2320.766976951, 'me', "~whiteClap[0] = {Pan2.ar(WhiteNoise.ar(0.1)) * EnvGen.ar(Env.perc(0.01,0.1),PulseDivider.ar(~clk,8))}" ], [ 2318.455643649, 'me', "~whiteClap[0] = {Pan2.ar(WhiteNoise.ar(0.1)) * EnvGen.ar(Env.perc(0.01,0.1),PulseDivider.ar(~clk,8))}" ], [ 2311.647262283, 'me', "~whiteClap[0] = {Pan2.ar(WhiteNoise.ar(0.1)) * EnvGen.ar(Env.perc(0.01,0.1),PulseDivider.ar(~clk,6))}" ], [ 2304.797797192, 'me', "~whiteClap[0] = {Pan2.ar(WhiteNoise.ar(0.1)) * EnvGen.ar(Env.perc(0.01,0.1),PulseDivider.ar(~clk,8))}" ], [ 2298.603145065, 'me', "~whiteClap[10] = \\filterIn -> {|in| RHPF.ar(in,2000,0.01)}" ], [ 2276.588516594, 'me', "(
var randomVal = {rrand(1,64)};
Tdef(\\theClock,
	{
		loop{
			\"new clock\".postln;
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
)" ], [ 2275.474473485, 'me', "var randomVal = {rrand(1,64)};" ], [ 2249.582329951, 'me', "(
var randomVal = {rrand(2,64).round(2)};
Tdef(\\theClock,
	{
		loop{
			\"new clock\".postln;
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
)" ], [ 2242.810326036, 'me', "~dfm = {DFM1.ar(SinOscFB.ar([~r,~r],2,LFNoise1.kr(0.1).range(4,90)).tanh,[~r,~r*2],LFNoise1.kr(0.1).range(0.6,3.5),1,0,0.03,0.5)}" ], [ 2239.144620144, 'me', "~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r, ~r],0.1,LFNoise1.kr(0.1).range(5,300)).tanh * 0.1)}" ], [ 2230.792457316, 'me', "~ring5 = {Ringz.ar(~env7,[~r,~r],0.1,LFNoise1.kr(0.1).range(50,300)).tanh * 0.14}" ], [ 2229.61837798, 'me', "~ring5 = {Ringz.ar(~env7,[~r*2,~r],0.1,LFNoise1.kr(0.1).range(50,300)).tanh * 0.14}" ], [ 2226.44657709, 'me', "~ring6 = {LeakDC.ar(Ringz.ar(~env8,[~r,~r],0.1,LFNoise1.kr(0.1).range(50,30000)).tanh * 0.1)}" ], [ 2221.459938409, 'me', "~ring7 = {LeakDC.ar(Ringz.ar(~env7,[~r,~r],0.1,LFNoise1.kr(0.1).range(5,30)).tanh * 0.2)}" ], [ 2215.585948048, 'me', "~whiteClap[0] = {Pan2.ar(WhiteNoise.ar(0.1)) * EnvGen.ar(Env.perc(0.01,0.5),PulseDivider.ar(~clk,8))}" ], [ 2211.140215819, 'me', "~ring4 = {Ringz.ar(~env6,[~r,~r],0.1,LFNoise1.kr(0.1).range(50,300)).tanh * 0.19}" ], [ 2202.745945846, 'me', "~ring3 = {Ringz.ar(~env5,[~r,~r],0.1,50).tanh * 0.1}" ], [ 2196.315356685, 'me', "~ring = {Ringz.ar(~env3,[~r,~r],0.1,0.1).tanh * 0.4}" ], [ 2195.67883165, 'me', "~ring2 = {Ringz.ar(~env4,[~r,~r],0.1,5).tanh * 0.1}" ], [ 2187.997128202, 'me', "~r = {50}" ], [ 2173.308562032, 'me', "~clk = {Impulse.ar(10)}" ], [ 2155.03055353, 'me', "~clk = {Impulse.ar(8)}" ], [ 2151.898826307, 'me', "~clk = {Impulse.ar(9)}" ], [ 2132.028012932, 'me', "(
var randomVal = {rrand(8,64).round(2)};
Tdef(\\theClock,
	{
		loop{
			\"new clock\".postln;
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
)" ], [ 2123.280715999, 'me', "(
var randomVal = {rrand(8,32).round(2)};
Tdef(\\theClock,
	{
		loop{
			\"new clock\".postln;
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
)" ], [ 2122.301007305, 'me', "var randomVal = {rrand(8,32).round(2)};" ], [ 2117.584981856, 'me', "var randomVal = {rrand(4,32).round(2)};" ], [ 2107.64431373, 'me', "~whiteClap[10] = \\filterIn -> {|in| RHPF.ar(in,2000,0.1)}" ], [ 2084.163976561, 'me', "~whiteClap[0] = {Pan2.ar(WhiteNoise.ar(0.1)) * EnvGen.ar(Env.perc(0.01,0.5),PulseDivider.ar(~clk,8))}" ], [ 2082.363934054, 'me', "~whiteClap[0] = {Pan2.ar(WhiteNoise.ar(0.1)) * EnvGen.ar(Env.perc(0.01,0.5),PulseDivider.ar(~clk,8))}" ], [ 2080.15812631, 'me', "~whiteClap[0] = {Pan2.ar(WhiteNoise.ar(0.1)) * EnvGen.ar(Env.perc(0.01,0.5),PulseDivider.ar(~clk,8))}" ], [ 2060.620067435, 'me', "~whiteClap.play" ], [ 2056.645779095, 'me', "~whiteClap[0] = {Pan2.ar(WhiteNoise.ar(0.1)) * EnvGen.ar(Env.perc,PulseDivider.ar(~clk,8))}" ], [ 2053.718875415, 'me', "~whiteClap = {Pan2.ar(WhiteNoise.ar(0.1)) * EnvGen.ar(Env.perc,PulseDivider.ar(~clk,8))}" ], [ 2046.344790934, 'me', "~whiteClap.clear" ], [ 2042.605432307, 'me', "~whiteClap = {WhiteNoise.ar(0.1) * EnvGen.ar(Env.perc,PulseDivider.ar(~clk,8))}" ], [ 1984.288188465, 'me', "~r = {SinOsc.kr(4000).range(100,120) * TRand.kr(0.25,1.5,Impulse.kr(0.1)).round(0.25)}" ], [ 1962.959156977, 'me', "~r = {SinOsc.kr(4000).range(100,120) * 0.75}" ], [ 1960.803060962, 'me', "~r = {SinOsc.kr(4000).range(100,120) * 0.5}" ], [ 1960.023100349, 'me', "~r.fadeTime = 0" ], [ 1955.93963054, 'me', "~r = {SinOsc.kr(4000).range(100,120) * 0.5}" ], [ 1932.997332227, 'me', "~r = {SinOsc.kr(4000).range(100,120)}" ], [ 1920.229968644, 'me', "~r = {SinOsc.kr(4000).range(60,80)}" ], [ 1910.4371581, 'me', "~r = {SinOsc.kr(4000).range(60,65)}" ], [ 1860.837755006, 'me', "p = ProxyMixer.new(p)" ], [ 1840.439194166, 'me', "~ring4 = {Ringz.ar(~env6,[~r + (~r/30),~r + (~r * 1.45)],0.1,LFNoise1.kr(0.1).range(50,300)).tanh * 0.19}" ], [ 1835.278620014, 'me', "~ring5 = {Ringz.ar(~env7,[~r*2,~r*2 + 20],0.1,LFNoise1.kr(0.1).range(50,300)).tanh * 0.14}" ], [ 1831.352657985, 'me', "~ring6 = {LeakDC.ar(Ringz.ar(~env8,[~r + (~r/2),~r + (~r/2)],0.1,LFNoise1.kr(0.1).range(50,30000)).tanh * 0.1)}" ], [ 1820.80881571, 'me', "~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r * TRand.kr(1,3,Impulse.kr(0.1).round(0.5)), ~r * 3],0.1,LFNoise1.kr(0.1).range(5,300)).tanh * 0.1)}" ], [ 1818.34360546, 'me', "~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r * TRand.kr(1,3,Impulse.kr(0.1).round(0.5)), ~r * 3],0.1,LFNoise1.kr(0.1).range(5,300)).tanh * 0.2)}" ], [ 1796.580882337, 'me', "~clk = {Impulse.ar(LFNoise1.kr(0.01).range(8,12.0).poll(1))}" ], [ 1791.904202971, 'me', "~clk = {Impulse.ar(LFNoise1.kr(0.01).range(8,12.0).poll(1))}" ], [ 1787.439319144, 'me', "~clk = {Impulse.ar(LFNoise1.kr(0.01).range(8,12.0)).poll}" ], [ 1783.240271931, 'me', "~clk = {Impulse.ar(LFNoise1.kr(0.01).range(8,12.0))}" ], [ 1774.403376341, 'me', "~clk = {Impulse.ar(LFNoise1.kr(0.01).range(10,12.0))}" ], [ 1752.575249699, 'me', "~clk = {Impulse.ar(11)}" ], [ 1745.587572824, 'me', "(
var randomVal = {rrand(4,32)};
Tdef(\\theClock,
	{
		loop{
			\"new clock\".postln;
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
)" ], [ 1740.119875058, 'me', "~clk = {Impulse.ar(12)}" ], [ 1733.071783531, 'me', "(
var randomVal = {rrand(1,32)};
Tdef(\\theClock,
	{
		loop{
			\"new clock\".postln;
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
)" ], [ 1732.688184641, 'me', "var randomVal = {rrand(1,32)};" ], [ 1724.964046557, 'me', "~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r * TRand.kr(1,3,Impulse.kr(0.1).round(0.5)), ~r + 1.2],0.1,LFNoise1.kr(0.1).range(5,300)).tanh * 0.2)}" ], [ 1723.315434018, 'me', "~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r * TRand.kr(1,3,Impulse.kr(0.1).round(0.5)), ~r + 1.2],0.1,LFNoise1.kr(0.1).range(5,300)).tanh * 0.1)}" ], [ 1721.476320663, 'me', "~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r * TRand.kr(1,3,Impulse.kr(0.1).round(0.5)), ~r + 1.2],0.1,LFNoise1.kr(0.1).range(5,300)).tanh * 0.4)}" ], [ 1718.83312151, 'me', "~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r * TRand.kr(1,3,Impulse.kr(0.1).round(0.5)), ~r + 1.2],0.1,LFNoise1.kr(0.1).range(5,300)).tanh * 0.1)}" ], [ 1717.624815877, 'me', "~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r * TRand.kr(1,3,Impulse.kr(0.1).round(0.5)), ~r + 1.2],0.1,LFNoise1.kr(0.1).range(5,3000)).tanh * 0.1)}" ], [ 1716.134284371, 'me', "~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r * TRand.kr(1,3,Impulse.kr(0.1).round(0.5)), ~r + 1.2],0.1,LFNoise1.kr(0.1).range(5,30000)).tanh * 0.1)}" ], [ 1711.123581294, 'me', "~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r * TRand.kr(1,3,Impulse.kr(0.1).round(0.5)), ~r + 1.2],0.1,LFNoise1.kr(0.1).range(5,3000000)).tanh * 0.1)}" ], [ 1691.073551809, 'me', "~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r * 1.5, ~r + 1.2],0.1,LFNoise1.kr(0.1).range(5,3000000)).tanh * 0.1)}" ], [ 1684.489771899, 'me', "~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r * 1.5, ~r + 1.2],0.1,LFNoise1.kr(0.1).range(5,3000000)).tanh * 0.2)}" ], [ 1671.854809092, 'me', "ProxyMixer.new(p)" ], [ 1644.460357463, 'me', "ProxyMixer.new(p)" ], [ 1628.932309546, 'me', "(
var randomVal = {rrand(4,32)};
Tdef(\\theClock,
	{
		loop{
			\"new clock\".postln;
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
)" ], [ 1626.931553813, 'me', "(
var randomVal = {rrand(4,10)};
Tdef(\\theClock,
	{
		loop{
			\"new clock\".postln;
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
)" ], [ 1623.494032341, 'me', "(
var randomVal = {rrand(2,10)};
Tdef(\\theClock,
	{
		loop{
			\"new clock\".postln;
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
)" ], [ 1622.70063836, 'me', "var randomVal = {rrand(2,10)};" ], [ 1620.422059907, 'me', "(
var randomVal = {rrand(2,10)};
Tdef(\\theClock,
	{
		loop{
			\"new clock\".postln;
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
)" ], [ 1611.631957833, 'me', "(
var randomVal = rrand(2,10);
Tdef(\\theClock,
	{
		loop{
			\"new clock\".postln;
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
)" ], [ 1597.145297465, 'me', "(
var randomVal = rrand(10,32);
Tdef(\\theClock,
	{
		loop{
			\"new clock\".postln;
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
)" ], [ 1593.198484337, 'me', "(
var randomVal = rrand(5,32);
Tdef(\\theClock,
	{
		loop{
			\"new clock\".postln;
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
)" ], [ 1554.370213993, 'me', "(
Tdef(\\theClock,
	{
		loop{
			\"new clock\".postln;
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
)" ], [ 1498.780354102, 'me', "(
Tdef(\\theClock,
	{
		loop{
			\"new clock\".postln;
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
)" ], [ 1483.344880703, 'me', "(
Tdef(\\theClock,
	{
		loop{
			\"new clock\".postln;
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
)" ], [ 1468.046378454, 'me', "~clk = {Impulse.ar(10)}" ], [ 1464.58658547, 'me', "~clk = {Impulse.ar(14)}" ], [ 1453.172878536, 'me', "~clk = {Impulse.ar(10)}" ], [ 1428.731866013, 'me', "~synth4.play" ], [ 1426.194421331, 'me', "~synth4[10] = \\filterIn -> {|in| RLPF.ar(in,LFTri.kr(0.1).range(440,9000),LFNoise1.kr(0.1).range(0.1,0.8))}" ], [ 1425.284964493, 'me', "~synth4[0] = {WhiteNoise.ar([~env8,~env9]) * 0.5}" ], [ 1404.186929935, 'me', "~synth3.play" ], [ 1401.179331945, 'me', "~synth3[10] = \\filterIn -> {|in| RLPF.ar(in,LFTri.kr(0.1).range(440,9000),LFNoise1.kr(0.1).range(0.1,0.8))}" ], [ 1398.077588477, 'me', "~synth3[0] = {WhiteNoise.ar([~env4,~env7]) * 0.5}" ], [ 1358.437843617, 'me', "~clk = {Impulse.ar(TRand.kr(1,20,Dust.kr(1)).round(1).poll(1))}" ], [ 1353.416459125, 'me', "~clk = {Impulse.ar(TRand.kr(1,20,Dust.kr(1)).poll(1))}" ], [ 1332.782429762, 'me', "~ring4 = {Ringz.ar(~env6,[~r + (~r/30),~r + (~r * 1.45)],0.1,LFNoise1.kr(0.1).range(50,300)).tanh * 0.07}" ], [ 1324.733845473, 'me', "~ring4 = {Ringz.ar(~env6,[~r + (~r/30),~r*6],0.1,LFNoise1.kr(0.1).range(50,300)).tanh * 0.07}" ], [ 1313.096111632, 'me', "~ring6 = {LeakDC.ar(Ringz.ar(~env8,[~r + (~r/2),~r + (~r/2)],0.1,LFNoise1.kr(0.1).range(50,30000)).tanh * 0.08)}" ], [ 1280.142568644, 'me', "~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r,~r + 1.2],0.1,LFNoise1.kr(0.1).range(5,3000000)).tanh * 0.2)}" ], [ 1277.610254139, 'me', "~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r*4,~r + 1.2],0.1,LFNoise1.kr(0.1).range(5,3000000)).tanh * 0.2)}" ], [ 1247.894035123, 'me', "~dfm.stop(10)" ], [ 1244.932171737, 'me', "~r = {SinOsc.kr(4000).range(60,61)}" ], [ 1239.175282758, 'me', "~r = {SinOsc.kr(4000).range(60,420.0)}" ], [ 1235.301842818, 'me', "~r = {SinOsc.kr(4000).range(60,120.0)}" ], [ 1232.409346598, 'me', "~r = {LFNoise1.kr(4000).range(60,120.0)}" ], [ 1226.479456574, 'me', "~r = {LFNoise1.kr(400).range(60,120.0)}" ], [ 1221.440162696, 'me', "~r = {LFNoise1.kr(400).range(60,10.0)}" ], [ 1217.663624514, 'me', "~ring7 = {LeakDC.ar(Ringz.ar(~env7,[~r,~r+ 1.2],0.1,LFNoise1.kr(0.1).range(5,30)).tanh * 0.2)}" ], [ 1214.012864204, 'me', "~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r*4,~r*5 + 1.2],0.1,LFNoise1.kr(0.1).range(5,3000000)).tanh * 0.2)}" ], [ 1168.861527722, 'me', "~clk = {Impulse.ar(TRand.kr(1,20,Dust.kr(1)))}" ], [ 1167.041951084, 'me', "~clk = {Impulse.ar(TRand.kr(1,20,Dust.kr(0.6)))}" ], [ 1165.074788531, 'me', "~clk = {Impulse.ar(TRand.kr(1,20,Dust.kr(0.1)))}" ], [ 1161.888907603, 'me', "~clk = {Impulse.ar(TRand.kr(10,20,Dust.kr(0.1)))}" ], [ 1154.936687505, 'me', "~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r*40,~r*50 + 1.2],0.1,LFNoise1.kr(0.1).range(5,3000000)).tanh * 0.2)}" ], [ 1148.79479088, 'me', "~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r*40,~r*50 + 1.2],0.1,LFNoise1.kr(0.1).range(5,3000000)).tanh * 0.2)}" ], [ 1145.016056917, 'me', "~ring8.play" ], [ 1141.318282842, 'me', "~ring8 = {LeakDC.ar(Ringz.ar(~env8,[~r*40,~r*50 + 1.2],0.1,LFNoise1.kr(0.1).range(5,30)).tanh * 0.2)}" ], [ 1125.085848567, 'me', "~ring7 = {LeakDC.ar(Ringz.ar(~env7,[~r*20,~r*30 + 1.2],0.1,LFNoise1.kr(0.1).range(5,30)).tanh * 0.2)}" ], [ 1116.380115157, 'me', "(
Tdef(\\theClock,
	{
		loop{
			\"new clock\".postln;
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
)" ], [ 1080.190279121, 'me', "~r = {LFNoise1.kr(400).range(60,40.0)}" ], [ 1076.227848595, 'me', "~r = {LFNoise1.kr(40).range(60,40.0)}" ], [ 1069.086233529, 'me', "~r = {LFNoise1.kr(40).range(65,70.0)}" ], [ 1062.339176422, 'me', "~dfm = {DFM1.ar(SinOscFB.ar([~r,~r+0.1],2,LFNoise1.kr(0.1).range(4,90)).tanh,[~r,~r*2],LFNoise1.kr(0.1).range(0.6,3.5),1,0,0.03,0.5)}" ], [ 1055.468627045, 'me', "~dfm = {DFM1.ar(SinOscFB.ar([~r,~r+0.1],2,LFNoise1.kr(0.1).range(4,90)).tanh,[~r,~r*2],LFNoise1.kr(0.1).range(0.6,3.5),1,0,0.03,0.2)}" ], [ 1053.834792657, 'me', "~dfm = {DFM1.ar(SinOscFB.ar([~r,~r+0.1],2,LFNoise1.kr(0.1).range(4,90)).tanh,[~r,~r*2],LFNoise1.kr(0.1).range(0.6,3.5),1,0,0.03,0.3)}" ], [ 1049.099057797, 'me', "~dfm = {DFM1.ar(SinOscFB.ar([~r,~r+0.1],2,LFNoise1.kr(0.1).range(4,90)).tanh,[~r,~r*2],LFNoise1.kr(0.1).range(0.6,3.5),1,0,0.0003,0.3)}" ], [ 1022.879237758, 'me', "~dfm = {DFM1.ar(SinOscFB.ar([~r,~r+0.1],2,8).tanh,[~r,~r*2],LFNoise1.kr(0.1).range(0.6,3.5),1,0,0.0003,0.3)}" ], [ 1019.267222131, 'me', "~dfm = {DFM1.ar(SinOscFB.ar([~r,~r+0.1],2,4).tanh,[~r,~r*2],LFNoise1.kr(0.1).range(0.6,3.5),1,0,0.0003,0.3)}" ], [ 1011.476903165, 'me', "~ring3 = {Ringz.ar(~env5,[~r+5,~r+15],0.1,50).tanh * 0.1}" ], [ 1006.71148714, 'me', "~ring3 = {Ringz.ar(~env5,[~r+5,~r+15],0.1,50).tanh * 0.4}" ], [ 998.121308503, 'me', "(
Tdef(\\theClock,
	{
		loop{
			\"new clock\".postln;
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
)" ], [ 981.073838336, 'me', "(
Tdef(\\theClock,
	{
		loop{
			\"new clock\".postln;
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
)" ], [ 950.248103019, 'me', "p.fadeTime = 4" ], [ 946.327909151, 'me', "~dfm = {DFM1.ar(SinOscFB.ar([~r,~r+0.1],2,4).tanh,[~r,~r*2],LFNoise1.kr(0.1).range(0.6,1.5),1,0,0.0003,0.3)}" ], [ 943.498546841, 'me', "~dfm = {DFM1.ar(SinOscFB.ar([~r,~r+0.1],2,4).tanh,[~r,~r*2],LFNoise1.kr(0.1).range(0.6,1.5),1,0,0.0003,0.1)}" ], [ 941.281171173, 'me', "~dfm = {DFM1.ar(SinOscFB.ar([~r,~r+0.1],1,4).tanh,[~r,~r*2],LFNoise1.kr(0.1).range(0.6,1.5),1,0,0.0003,0.1)}" ], [ 937.032179614, 'me', "~dfm = {DFM1.ar(SinOsc.ar([~r,~r+0.1],0,4).tanh,[~r,~r*2],LFNoise1.kr(0.1).range(0.6,1.5),1,0,0.0003,0.1)}" ], [ 929.954170532, 'me', "~dfm = {DFM1.ar(Saw.ar([~r,~r+0.1],0,4).tanh,[~r,~r*2],LFNoise1.kr(0.1).range(0.6,1.5),1,0,0.0003,0.1)}" ], [ 925.296256585, 'me', "~dfm = {DFM1.ar(Saw.ar([~r,~r+0.1],0,0.7).tanh,[~r,~r*2],LFNoise1.kr(0.1).range(0.6,1.5),1,0,0.0003,0.1)}" ], [ 919.90746093, 'me', "~dfm = {DFM1.ar(SinOsc.ar([~r,~r+0.1],0,0.7).tanh,[~r,~r*2],LFNoise1.kr(0.1).range(0.6,1.5),1,0,0.0003,0.1)}" ], [ 913.388149996, 'me', "~dfm = {DFM1.ar(SinOsc.ar([~r,~r+0.1],0,0.2),[~r,~r*2],LFNoise1.kr(0.1).range(0.6,1.5),1,0,0.0003,0.1)}" ], [ 904.468969806, 'me', "~dfm = {DFM1.ar(SinOsc.ar([~r,~r+0.1],0,0.2),[~r,~r+0.5],LFNoise1.kr(0.1).range(0.6,1.5),1,0,0.0003,0.1)}" ], [ 880.579156643, 'me', "~dfm.play" ], [ 879.359914437, 'me', "~dfm = {DFM1.ar(SinOsc.ar([~r,~r+0.1],0,0.2),[~r,~r+0.5],0.2)}" ], [ 879.219941068, 'me', "~dfm = {DFM1.ar(SinOsc.ar([~r,~r+0.1],0,0.2),[~r,~r+0.5],0.2)}" ], [ 879.13055772, 'me', "~dfm = {DFM1.ar(SinOsc.ar([~r,~r+0.1],0,0.2),[~r,~r+0.5],0.2)}" ], [ 879.009902094, 'me', "~dfm = {DFM1.ar(SinOsc.ar([~r,~r+0.1],0,0.2),[~r,~r+0.5],0.2)}" ], [ 878.928344596, 'me', "~dfm = {DFM1.ar(SinOsc.ar([~r,~r+0.1],0,0.2),[~r,~r+0.5],0.2)}" ], [ 878.828611746, 'me', "~dfm = {DFM1.ar(SinOsc.ar([~r,~r+0.1],0,0.2),[~r,~r+0.5],0.2)}" ], [ 875.461296203, 'me', "~dfm = {DFM1.ar(SinOsc.ar([~r,~r+0.1],0,0.2),[~r,~r+0.5],0.2)}" ], [ 846.44446287, 'me', "~ring7 = {LeakDC.ar(Ringz.ar(~env7,[~r*20,~r*30 + 1.2],0.1,LFNoise1.kr(0.1).range(5,30)).tanh * 0.03)}" ], [ 844.219504973, 'me', "~ring7 = {LeakDC.ar(Ringz.ar(~env7,[~r*20,~r*30 + 1.2],0.1,LFNoise1.kr(0.1).range(5,30)).tanh * 0.4)}" ], [ 841.429913967, 'me', "~ring7.play" ], [ 838.809862544, 'me', "~ring7 = {LeakDC.ar(Ringz.ar(~env7,[~r*20,~r*30 + 1.2],0.1,LFNoise1.kr(0.1).range(5,30)).tanh * 0.08)}" ], [ 810.012930498, 'me', "~ring6 = {LeakDC.ar(Ringz.ar(~env8,[~r*10,~r*11 + 1.2],0.1,LFNoise1.kr(0.1).range(50,30000)).tanh * 0.08)}" ], [ 800.361229539, 'me', "~ring6 = {Ringz.ar(~env8,[~r*10,~r*11 + 1.2],0.1,LFNoise1.kr(0.1).range(50,30000)).tanh * 0.08}" ], [ 792.778456434, 'me', "~ring6.play" ], [ 789.586051121, 'me', "~ring6 = {Ringz.ar(~env8,[~r*10,~r*11 + 1.2],0.1,LFNoise1.kr(0.1).range(50,3000)).tanh * 0.08}" ], [ 762.435918706, 'me', "~synth2[10] = \\filterIn -> {|in| RLPF.ar(in,LFTri.kr(0.1).range(440,9000),LFNoise1.kr(0.1).range(0.1,0.8))}" ], [ 738.981975967, 'me', "~r = {LFNoise1.kr(40).range(65,66.0)}" ], [ 729.325705087, 'me', "(
Tdef(\\theClock,
	{
		loop{
			\"new clock\".postln;
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
)" ], [ 692.148494777, 'me', "~ring5.play" ], [ 691.00722065, 'me', "~ring5 = {Ringz.ar(~env7,[~r*2,~r*2 + 20],0.1,LFNoise1.kr(0.1).range(50,300)).tanh * 0.07}" ], [ 683.296117401, 'me', "~ring5 = {Ringz.ar(~env6,[~r*2,~r*2 + 20],0.1,LFNoise1.kr(0.1).range(50,300)).tanh * 0.07}" ], [ 662.70881232, 'me', "~ring4 = {Ringz.ar(~env6,[~r*5,~r*6],0.1,LFNoise1.kr(0.1).range(50,300)).tanh * 0.07}" ], [ 646.371332177, 'me', "~r = {LFNoise1.kr(4).range(65,66.0)}" ], [ 623.93888251, 'me', "~clk = {Impulse.ar(TRand.kr(15,20,Dust.kr(0.1)))}" ], [ 619.398319176, 'me', "(
Tdef(\\theClock,
	{
		loop{
			\"new clock\".postln;
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
)" ], [ 609.875201498, 'me', "~clk = {Impulse.ar(TRand.kr(20,23,Dust.kr(0.1)))}" ], [ 602.045395457, 'me', "~clk = {Impulse.ar(TRand.kr(25,32,Dust.kr(0.1)))}" ], [ 591.810124182, 'me', "~ring3 = {Ringz.ar(~env5,[~r+5,~r+15],0.1,50).tanh * 0.08}" ], [ 590.879340305, 'me', "~ring3 = {Ringz.ar(~env5,[~r+5,~r+15],0.1,50).tanh * 0.04}" ], [ 585.184667963, 'me', "~ring4 = {Ringz.ar(~env6,[~r*5,~r*6],0.1,50).tanh * 0.07}" ], [ 579.566485333, 'me', "~ring4.play" ], [ 573.930725897, 'me', "~ring4 = {Ringz.ar(~env6,[~r*5,~r*6],0.1,50).tanh * 0.01}" ], [ 572.701828421, 'me', "~ring3.play" ], [ 569.845219442, 'me', "~ring3 = {Ringz.ar(~env5,[~r+5,~r+15],0.1,50).tanh * 0.01}" ], [ 567.244785879, 'me', "~env4 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			
			~env5 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			
			~env6 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			
			~env7 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			
			~env8 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			
			~env9 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			
			~env10 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			
			~env11 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			
			~env12 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};" ], [ 562.964082186, 'me', "~env6.clear" ], [ 559.032220629, 'me', "~env5.clear" ], [ 544.551628472, 'me', "~env4 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			
			~env5 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			
			~env6 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			
			~env7 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			
			~env8 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			
			~env9 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			
			~env10 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			
			~env11 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			
			~env12 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};" ], [ 540.37171425, 'me', "(
Tdef(\\theClock,
	{
		loop{
			\"new clock\".postln;
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
)" ], [ 517.300121719, 'me', "(
Tdef(\\theClock,
	{
		loop{
			\"new clock\".postln;
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
)" ], [ 490.942455667, 'me', "~env5.clear" ], [ 486.1360029, 'me', "(
Tdef(\\theClock,
	{
		loop{
			\"new clock\".postln;
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
)" ], [ 463.33530711, 'me', "(
Tdef(\\theClock,
	{
		loop{
			\"new clock\".postln;
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
)" ], [ 428.555473213, 'me', "~ring2 = {Ringz.ar(~env4,[~r,~r+10],0.1,5).tanh * 0.1}" ], [ 425.346770321, 'me', "~ring2.play" ], [ 422.062968918, 'me', "~ring2 = {Ringz.ar(~env4,[~r,~r+10],0.1,5).tanh * 0.4}" ], [ 420.193053932, 'me', "(
Tdef(\\theClock,
	{
		loop{
			\"new clock\".postln;
~env = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env2 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env3 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			~env4 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
}})
)" ], [ 418.464048167, 'me', "~env4.clear" ], [ 412.23913273, 'me', "(
Tdef(\\theClock,
	{
		loop{
			\"new clock\".postln;
~env = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env2 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env3 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			~env4 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
}})
)" ], [ 376.075771317, 'me', "Tdef(\\theClock).play" ], [ 373.287294807, 'me', "(
Tdef(\\theClock,
	{
		loop{
			\"new clock\".postln;
~env = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env2 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env3 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
}})
)" ], [ 353.279388987, 'me', "Tdef(\\theClock).play" ], [ 345.51939559, 'me', "(
Tdef(\\theClock,
	{
		loop{
~env = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env2 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
~env3 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)};
			rrand(1,30).wait;
}})
)" ], [ 307.521745153, 'me', "~env = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)}" ], [ 304.636851251, 'me', "~env2 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)}" ], [ 300.188585898, 'me', "~env3 = {Decay2.ar(PulseDivider.ar(~clk,rrand(2,32)),0.01,0.1)}" ], [ 299.072535209, 'me', "rrand(2,32)" ], [ 282.680605475, 'me', "~ring = {Ringz.ar(~env3,[~r,~r+1],0.1,0.1).tanh * 0.4}" ], [ 280.890691141, 'me', "~ring = {Ringz.ar(~env3,[~r,~r+1],0.1,0.1).tanh * 0.1}" ], [ 278.25805569, 'me', "~ring = {Ringz.ar(~env3,[~r,~r+1],0.1,0.1).tanh}" ], [ 273.966094913, 'me', "~ring.play" ], [ 272.098348701, 'me', "~ring = {Ringz.ar(~env3,[~r,~r+1],0.1,0.1)}" ], [ 269.130286213, 'me', "~ring = {Ringz.ar(~env3,[~r,~r+1],0.1)}" ], [ 250.998554264, 'me', "~env3 = {Decay2.ar(PulseDivider.ar(~clk,6),0.01,0.1)}" ], [ 237.104143194, 'me', "~r = {65}" ], [ 215.286885474, 'me', "~synth2[10] = \\filterIn -> {|in| RLPF.ar(in,440,LFNoise1.kr(0.1).range(0.1,0.8))}" ], [ 194.899202716, 'me', "~synth2[10] = \\filterIn -> {|in| RLPF.ar(in,440,d[\\n].range(0.1,0.8))}" ], [ 181.239102338, 'me', "d[\\n] = LFNoise1.kr(0.1)" ], [ 172.846325284, 'me', "d = Dictionary.new" ], [ 140.928896794, 'me', "~synth2[0] = {WhiteNoise.ar([~env,~env2]) * 0.5}" ], [ 137.868259616, 'me', "~synth.stop(10)" ], [ 133.140727153, 'me', "~synth2.play" ], [ 131.131409261, 'me', "~synth2[10] = \\filterIn -> {|in| LPF.ar(in,440)}" ], [ 129.653303931, 'me', "~synth2[0] = {WhiteNoise.ar([~env,~env2]) * 0.1}" ], [ 127.145100361, 'me', "~env2 = {Decay2.ar(PulseDivider.ar(~clk,6),0.01,0.1)}" ], [ 111.830981094, 'me', "~synth2.clear" ], [ 107.73583388, 'me', "~synth2[10] = \\filterIn -> {|in| LPF.ar(in,440)}" ], [ 86.899475743, 'me', "~synth2[0] = {WhiteNoise.ar(~env) * 0.1}" ], [ 72.827845766, 'me', "~env = {Decay2.ar(PulseDivider.ar(~clk,4),0.01,0.1)}" ], [ 66.581405244, 'me', "~synth.play" ], [ 65.827776557, 'me', "~synth = {WhiteNoise.ar(~env) * 0.1}" ], [ 64.873439901, 'me', "~env2 = {PulseDivider.ar(~clk,6)}" ], [ 64.332780675, 'me', "~env = {Decay2.ar(PulseDivider.ar(~clk,4),0.01,0.01)}" ], [ 61.500897517, 'me', "~synth = {WhiteNoise.ar(~env) * 0.1}" ], [ 54.146865217001, 'me', "~synth.play" ], [ 52.381943945, 'me', "~synth = {WhiteNoise.ar(~env)}" ], [ 46.580443885, 'me', "~env = {Decay2.ar(PulseDivider.ar(~clk,4),0.01,0.01)}" ], [ 10.330238135, 'me', "~div2 = {PulseDivider.ar(~clk,6)}" ], [ 8.8992073239997, 'me', "~div = {PulseDivider.ar(~clk,4)}" ], [ 8.0235559829998, 'me', "~clk = {Impulse.ar(TRand.kr(16,32,Dust.kr(0.1)))}" ], [ 4.417058731, 'me', "StageLimiter.activate" ], [ 0, 'me', "p = ProxySpace.push(s)" ] ]
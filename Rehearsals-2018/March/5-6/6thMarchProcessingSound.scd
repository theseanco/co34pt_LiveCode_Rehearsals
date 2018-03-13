p = ProxySpace.push(s)
d = Dictionary.new
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

d[\theBuf] = Buffer.alloc(s,44100*6.0,2)
(
~one = {
	PlayBuf.ar(2,d["perc"][6],0.5,0,0.2*44100,0,0) * EnvGen.ar(Env.asr(0.01,20))};
~one.play;
~two = {RecordBuf.ar(~one.ar,d[\theBuf],doneAction:2,loop:0)}
)

p.makeTempoClock
~theBuf[0] = Pbind(\instrument,\bplay,\buf,d[\theBuf],\rate,Pseq([1,1,0.8],inf),\dur,Pseq([3,3,2],inf)/2,\amp,1)
~theBuf[10] = \filterIn -> {|in| FreeVerb.ar(in,0.5,0.3)}


Pindex
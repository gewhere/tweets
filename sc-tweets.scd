// tweet-step -- https://soundcloud.com/aucotsi/tweet_step (10 years ago)
// #001
{a=SinOsc.ar(_);b=LFPulse.ar(_);f=Stepper.ar(b.(93+(124*a.(1.2))));a.(400!2/f,a.(11)).tanh*Mux2.ar(b.(5,pi/5),b.(7,pi/7),b.(0.2)).lag}.play

// pseudo ugen
Mux2 : UGen { *ar { arg in0, in1, sel; ^bitOr(bitAnd(in0, (bitNot(sel)%2)), bitAnd(in1, bitNot(sel)+1)) } }

// ======================
// sccode.org
// ======================

// http://sccode.org/1-M
// «tweets» by aucotsi
//on 18 Aug'11 11:23 in sctweet
// a noisy
// #002
play{f=Saw.kr(1);x=LagUD.kr(LFPulse.kr(5,0,0.48,4),0.7,0.8)*SinOsc.kr(TRand.kr(799,1020,Dust.kr(3)));Trig.kr(x,0.244)*SinOsc.ar(x*f!2,0,4)}

// and a liquid one
// #003
play{x=LagUD.kr(LFPulse.kr(2,0,1,4),0.2,0.8)*SinOsc.kr(TRand.kr(9,12,Dust.kr(3))).lag(1);f=Slope.kr(x);Trig.kr(x,0.24)*SinOsc.ar(x**f!2)}

// bomb bass
// #004
play{FreeVerb.ar(EnvGen.ar(Env([0.0,0.2,0.0],[0.7,0.5]).circle)*PMOsc.ar(4.4*Saw.kr(9).abs,8.8*Saw.kr(19.sin).abs,94,0.5*Saw.kr(7).lag)!2)}

// http://sccode.org/1-X
// «tweets more tweets» by aucotsi
// on 26 Aug 2011 14:00 in sctweet
// a drum part
// #005
play{b=SinOsc.kr(1);a=Line.kr(0.1,2*pi,37);FreeVerb.ar(SinOsc.ar(b*340!2*Impulse.kr(b*680),LFPulse.kr(2,0,pi/2),LFPulse.kr(3,0,1/pi*a)))}

//sticky morning clock
// #006
play{c=LFPulse.kr(0.5);b=SinOsc.kr(0.0034);a=Line.kr(0.1,2pi,37);FreeVerb.ar(Blip.ar(a*340!2*Impulse.kr(b*34/pi),c*TIRand.kr(0,113,c),c))}

// another drum part
// #007
play{a=Impulse;b=SinOsc;a.kr(6).lag*Crackle.ar(LFSaw.kr(5).abs.lag2)+a.ar(7).lag*b.ar(222*b.kr(29))+([a.kr(2,0,4)+a.kr(1)].lag*b.ar(70!2))}

/// i like to play these two on series
// #008
play{a=Impulse;a.kr(8).lag2*Crackle.ar(LFSaw.kr(5).abs.lag2)+GVerb.ar([a.kr(2,0,4).lag+a.kr(1,pi/5).lag]*Blip.ar(5,2,0.2)!2,6,0.4)}
///
// #009
play{a=Impulse;a.kr(8).lag2*Crackle.ar(LFSaw.kr(7).abs.lag3)+GVerb.ar([a.kr(2,0,4).lag+a.kr(1,pi/1.2).lag]*SinOsc.ar(20)!2,6,0.4,0.4)}


// http://sccode.org/1-34v
// «fractal tweets» by aucotsi
//on 05 Apr'12 12:26 in tweets
// I was looking some fractal structures, with a friend who studies the maths, and we found a // simple algorithm. So i made some tweets with the formula.
// #010
r{inf.do{|i|a=i.asInteger.rand2;if(a.even){a=a/2}{a=a*3+1};play{SinOsc.ar(a,0,0.1)!2*EnvGen.ar(Env.perc,1,1,0,1,2)};0.07.wait;}}.play
//
// #011
r{inf.do{|i|a=i.asInteger;if(a.even){a=a/2}{a=a*3+1};play{SinOsc.ar(a,0,0.1)!2*EnvGen.ar(Env.perc,1,1,0,1,2)};0.01.wait;}}.play
//
// #012
a=(-23);r{inf.do{a=a.asInteger;a.postln;if(a.even){a=a/2}{a=a*3+1};play{SinOsc.ar(a,0,0.1)!2*EnvGen.ar(Env.perc,1,1,0,1,2)};0.1.wait}}.play
//
// #013
a=(-917);r{inf.do{a=a.asInteger.postln;if(a.even){a=a/2}{a=a*3+1};play{SinOsc.ar(a,0,0.1)!2*EnvGen.ar(Env.perc,1,1,0,1,2)};0.1.wait}}.play

// the funny thing is that when you have a negative input this folds into a loop!
// the correct formula is this below
// #014
a=73;r=r{inf.do{a=a.asInteger;if(a==1){r.stop};if(a.even){a=a/2}{a=a*3+1};play{Blip.ar(a)!2*EnvGen.ar(Env.perc,1,1,0,1,2)};0.1.wait}}.play


// http://sccode.org/1-4RE
// «..and tweets» by aucotsi
// on 21 Nov'12 08:25 in sctweettweets
// 01
// #015
play{a=SinOsc.ar(_);g=Stepper.ar(_);f=111!2+(148*a.(3.0166));FreeVerb.ar(HPF.ar(a.(2**f)/3,7e3)+a.(g.(a.(2))*444/g.(f)))}// #SuperCollider

// 02
// #016
play{a=SinOsc.ar(_);b=LFPulse.ar(_);g=Stepper.ar(_);Splay.ar(HPF.ar(a.({|i| f=111!2+(148*a.(1/i));g.(b.(i.sqrt))*(444/i)/g.(f) }!12,123)))}

// 03
// #017
play{a=SinOsc;b=LFPulse;g=Stepper;Splay.ar(HPF.ar(a.ar({|i|f=111!2+(148*a.ar(1/i));g.ar(b.ar(i))*(444/i)/g.ar(f)}!8,123).tanh))}// #sc140

// 04
// #018
SynthDef(\,{|f,j|Out.ar(0,LFTri.ar(f!2)/8*Line.ar(2,1,j,1,0,2))}).add;29.do{|i|Pbind(\instrument,\,\f,(i+1)%9*88,\dur,i+1/9,\j,i/99).play}

// 05 - nasty for cpu ~8k ugens, ~40% on my machine
// #019
d=Dust;a=SinOsc;300.do{|i|{a.ar(Stepper.kr(d.kr(1),0,0,t=TChoose.kr(d.kr(3),(4..7)))*129+[a.kr(t),a.kr(t+1).neg],a.kr(i/t),i+1*1e-4)}.play}


// http://sccode.org/1-4Vo
// «tweets again» by aucotsi
// on 13 Nov'13 08:12 in sctweettweets
//1.
// #020
play{p=Pulse;GVerb.ar(IFFT(PV_BrickWall(FFT(Buffer.alloc(s,128),WhiteNoise.ar*p.ar(8,5e-4)+SinOsc.ar(9*p.ar(1),0,n=p.kr(p.ar(5)))),n)))}//w8

//2.
// #021
play{a=SinOsc;p=Pulse;WhiteNoise.ar*p.kr(8,0.01)+a.ar(98*n=p.ar(4),0,p.kr(2,add:1))+GVerb.ar(a.ar(99*n)+p.ar(p.kr(3*n)),1,mul:0.1)}// #sc140

//3.
// #022
play{p=Pulse;WhiteNoise.ar*p.ar(8,h=3e-3)+GVerb.ar(GrainSin.ar(2,p.ar(8),n=h*t=LFNoise0.ar,1/n),2)+PMOsc.ar(9*p.ar(4*t),111,p.kr(6,t,1,1))}

//4.
// #023
play{GVerb.ar(IFFT(PV_BrickWall(FFT(Buffer.alloc(s,1024),WhiteNoise.ar*Pulse.ar(8,2e-2)),SinOsc.ar(Duty.kr(1,0,Dseq((10..19),inf))))))}

//5.
// #024
play{a=SinOsc;p=Pulse;GVerb.ar(WhiteNoise.ar*p.ar(TChoose.kr(a.kr(2),[5,8,20,30]))*p.ar(16,0.1))+a.ar(97*p.ar(4),0,p.kr(5,add:1))}// #sc140

//6.
// #025
ProxySpace.push;~a0.play;~a1.play;fork{loop{2.do{|i|currentEnvironment[(\a++i).asSymbol]={GVerb.ar(LFTri.ar(99+9.rand2),1,i)/2};0.2.wait}}}


// http://sccode.org/1-4W7
// «quine sctweet» by aucotsi
// on 07 Apr'14 14:19 in sctweettweetsc140quine
// #026
format("%", thisFunction.cs) // #sc140 #SuperCollider


// http://sccode.org/1-Z
// «drum tweet» by Jonatan Liljedahl
// on 28 Aug'11 10:00 in sctweetdrums
// #027
play{a=Impulse;tanh(a.kr(8).lag*Crackle.ar(LFSaw.kr(3).abs.lag*1.8)+GVerb.ar([a.kr(2)+a.kr(4,0.5)].lag*Blip.ar(4.9,7,0.4)!2,1,1)*5)}


// ======================
// twitter posts
// ======================
//yorgos diapoulis
//@aucotsi
//May 2, 2013
// #028
2.do{|i|SynthDef(\++i,{|f|a=[PinkNoise,LFCub];Out.ar(0,a[i].ar(f)*Line.ar(1,0,k=1/6))}).add;Pbind(\instrument,\++i,\f,80*i+k,\dur,i+k).play}

//yorgos diapoulis
//@aucotsi
//Jun 12, 2013
// #029
a=[35,69,82,84,32,104,116,116,112,58,47,47,111,119,46,108,121,47,108,87,103,109,101];a.size do:{|i|a[i].asAscii.post};"\r".post

//yorgos diapoulis
//@aucotsi
//Nov 13, 2013
// #030
play{p=Pulse;GVerb.ar(IFFT(PV_BrickWall(FFT(Buffer.alloc(s,128),WhiteNoise.ar*p.ar(8,5e-4)+SinOsc.ar(9*p.ar(1),0,n=p.kr(p.ar(5)))),n)))}//w8

//yorgos diapoulis
//@aucotsi
//Nov 13, 2013
// #031
play{a=SinOsc;p=Pulse;WhiteNoise.ar*p.kr(8,0.01)+a.ar(98*n=p.ar(4),0,p.kr(2,add:1))+GVerb.ar(a.ar(99*n)+p.ar(p.kr(3*n)),1,mul:0.1)}// #sc140

//yorgos diapoulis
//@aucotsi
//Nov 13, 2013
// #032
play{p=Pulse;WhiteNoise.ar*p.ar(8,h=3e-3)+GVerb.ar(GrainSin.ar(2,p.ar(8),n=h*t=LFNoise0.ar,1/n),2)+PMOsc.ar(9*p.ar(4*t),111,p.kr(6,t,1,1))}

//yorgos diapoulis
//@aucotsi
//Nov 13, 2013
// #033
play{GVerb.ar(IFFT(PV_BrickWall(FFT(Buffer.alloc(s,1024),WhiteNoise.ar*Pulse.ar(8,2e-2)),SinOsc.ar(Duty.kr(1,0,Dseq((10..19),inf))))))}

//yorgos diapoulis
//@aucotsi
//Nov 13, 2013
// #034
play{a=SinOsc;p=Pulse;GVerb.ar(WhiteNoise.ar*p.ar(TChoose.kr(a.kr(2),[5,8,20,30]))*p.ar(16,0.1))+a.ar(97*p.ar(4),0,p.kr(5,add:1))}// #sc140

//yorgos diapoulis
//@aucotsi
//Nov 13, 2013
// #035
ProxySpace.push;~a0.play;~a1.play;fork{loop{2.do{|i|currentEnvironment[(\a++i).asSymbol]={GVerb.ar(LFTri.ar(99+9.rand2),1,i)/2};0.2.wait}}}

//yorgos diapoulis
//@aucotsi
//Nov 22, 2013
// #036
fork{loop{Date.getDate.asString.do{|i|{SinOsc.ar(i.ascii)*EnvGen.ar(Env.perc,doneAction:2)!2}.play;i.post;1.wait;};"\r".post}}// #sc140

//yorgos diapoulis
//@aucotsi
//Nov 30, 2013
// #037
play{FreeVerb2.ar(b=RLPF.ar(Klank.ar(`[(1..82)],Impulse.ar(1),0),SinOsc.ar(122).range(10,3300)),b)/99}// #SuperCollider #sc140

//yorgos diapoulis
//@aucotsi
//Dec 3, 2013
// #038
play{FreeVerb2.ar(RLPF.ar(a=Convolution.ar(StandardN.ar([1,2], 2),Gendy1.ar(4,1,1,1,20,999)),SinOsc.ar(999).range(9,1e4)),a)/222}// #sc140

//yorgos diapoulis
//@aucotsi
//Dec 4, 2013
// #039
play{a=SinOsc;p=Pulse;WhiteNoise.ar*p.kr(10,1e-2)+a.ar(39*p.ar(1))+FreeVerb.ar(a.ar(Convolution.ar(b=HenonN.ar(8),b)))!2/9}// #SuperCollider

//yorgos diapoulis
//@aucotsi
//Dec 4, 2013
// #040
m=[GrainSin,GrainFM];{|i|play{b=GbmanN.ar(_);CombN.ar(GVerb.ar(m[i].ar(2,Saw.kr(9-i),t=9e-3,c=Convolution.ar(b.(4),b.(5))/4,c/t)),t,t)/9}}!2

//yorgos diapoulis
//@aucotsi
//Dec 6, 2013
// #041
play{a=LFCub;GVerb.ar(Formlet.ar(a.ar(Convolution.ar(b=LinCongN.ar(5),b)),a.ar(Sweep.ar(a.ar(1/9),3)).range(1999,3999),0.01,0.1))}// #sc140

//yorgos diapoulis
//@aucotsi
//Jan 8, 2014
// #042
a=c=nil;b=SinOsc;9.do{|i|a=a++"b.ar("++(99/(i+1)).asString++"*";c=c++")"};play{FreeVerb.ar((a++"9"++c).interpret)!2}// #SuperCollider #sc140

//yorgos diapoulis
//@aucotsi
//Jan 17, 2014
// #043
play{a=SinOsc.ar(_);f=Stepper.ar(LFPulse.ar(53+(329*a.(Duty.ar(1,0,Dseq([5,5,5,7],inf))))));a.(334/f).tanh!2}// #sc140 #SuperCollider

//yorgos diapoulis
//@aucotsi
//Jan 17, 2014
// #044
play{a=SinOsc;Formlet.ar(a.ar(Convolution.ar(b=GbmanN.ar(Stepper.ar(a.ar(5))),b)),a.ar(Sweep.ar(a.ar(1/9),2)).range(1e3,4e3),0.01,1/99)!2}//

//yorgos diapoulis
//@aucotsi
//Jan 23, 2014
// #045
play{GVerb.ar(TGrains.ar(2,Pulse.ar(3),Buffer.read(s,Platform.resourceDir+/+"sounds/a11wlk01.wav"),Sweep.ar(x=Pulse.ar(4s)),x,Sweep.ar(x)))}

//yorgos diapoulis
//@aucotsi
//Jul 7, 2014
// #046
play{p=Saw;SendTrig.ar(Changed.ar(a=Latch.ar(Stepper.ar(p.ar(Line.kr(99,1,40,1,0,2))),p.ar(8))),0,a)};OSCFunc({|m|(degree:m[3]).play},'/tr')

//yorgos diapoulis
//@aucotsi
//Sep 14, 2014
// #047
{b=SinOsc;Pan2.ar(AllpassC.ar(a=b.ar(PulseCount.ar(Impulse.ar(9),PinkNoise.ar)*437),0.1,0.01),b.ar(79*b.ar(1/8).abs/a))}.play// #sc140

//yorgos diapoulis
//@aucotsi
//Dec 7, 2014
// #048
play{FreeVerb2.ar(a=Klank.ar(`[[2,3,5,7]], Dust.ar(XLine.kr(1,0.01,49)))*BrownNoise.ar,a,0.5)}// #sc140 #SuperCollider

//yorgos diapoulis
//@aucotsi
//Sep 28, 2015
// #049
fork{8.do{a=(p:Pseq("kbdEngagement:bydClick".ascii.normalize(1,9).round,9).asStream,f:{(degree:~p.next).play});27.do{a.use{a.f};0.2.wait}}}

//yorgos diapoulis
//@aucotsi
//Feb 28, 2016
// #050
play{a=SinOsc;FreeVerb.ar(GrainSin.ar(2,a.kr(15*a.kr(13)*a.kr(12)),(a.kr(9)*a.kr(19*a.kr(29))).abs/4,28+18*Stepper.kr(a.kr(25),0,1,12)))}

//yorgos diapoulis
//@aucotsi
//Sep 29, 2017
// #051
play{a=SinOsc;Pan2.ar(a.ar(132*Pulse.ar(1,a.kr(2)).tanh)+GrainIn.ar(2,a.kr(11),1/2**11,Hilbert.ar(a.ar(33+9*a.kr(9+7*a.kr(2))))),a.kr(3))/9}

// ======================
// OFFLINE
// ======================
// 220122
// #052
Ndef(\x, { a=SinOsc;c=Sweep;t=Stepper.kr(a.kr(1/32),0,16,128,16,resetval:16).poll; Pan2.ar(BPeakEQ.ar(FreeVerb2.ar(x=Hilbert.ar(RLPF.ar(a.ar(900.nextPrime+41.nextPrime*a.kr(93.nextPrime*c.kr(a.kr(13/t)*a.kr(3),c.kr(a.kr(11/t)*a.kr(17/t/3*a.kr(5+3*a.kr(1/2*c.kr(a.kr(14),Stepper.kr(a.kr(13),0,11,23,3))))))))),128.nextPrime+24.nextPrime*c.kr(a.kr(1)),0.045).tanh),x,0.4,0.6,0.94,mul:0.5),80,0.73),a.kr(13/t)) }).play;

// 220216
// #053
Ndef(\x,{p=LFPulse.ar(_);FreeVerb.ar(RLPF.ar(p.([11,13]*Sweep.ar(p.(37)))*bitAnd(bitXor(p.(2),p.(5)),bitOr(p.(3),p.(7))),1999,1/8))/2}).play;

// 220330
// #054
Ndef(\x, {a=LFPulse; b=SinOsc; Limiter.ar(Pan2.ar(RLPF.ar(a.ar(Stepper.kr(a.kr(15,Sweep.kr(a.kr(0.1),0.95)),0,125,250,25)+(25*b.kr(1.3+(a.kr(1.5,0.2) bitAnd: a.kr(1.3,0.2)))),0.0,0.25+(0.15*b.kr(1/5))),500+((130*Sweep.kr((a.kr(1/3,0.2) bitXor: a.kr(1/4,0.2)),23))+150*(a.kr(1/4,0.1) bitOr: a.kr(1/3,0.1))),rq:0.25+(0.1*b.kr(1/9))),b.kr(2+b.kr(1/15))),0.95) }).play;

// 220422
// #055
Ndef(\x, { p=Impulse.kr(0.13); Pan2.ar(GrainSin.ar(1, Impulse.kr(Sweep.kr(p,31)), 0.001+Sweep.kr(p,0.0021), freq: Demand.kr(p, 0, Dseq([3, 7, 12].mirror*200, inf))+Sweep.kr(p,122))) }).play;

// ======================
// MASTODON
// ======================
// 2022-11-02
// #056
play{x=LFPulse.kr(_);k=Stepper.kr(x.(9),0,1,23,_);CombC.ar(GrainSin.ar(2,(x.(k.(4)) bitAnd: x.(k.(3))),0.01+0.02*(x.(3) bitOr: x.(k.(5))),SinOsc.kr(k.(1+2*x.(2))).range(9*k.(9),40*k.(5))*(x.(k.(7)) bitXor: x.(k.(11)))),0.2,0.04+(0.1*(LFPulse.kr(k.(9)) bitAnd: LFPulse.kr(k.(17)))))} // #sc140

// 2022-11-13
// #057
play{p=LFPulse.kr(_);t=Stepper.kr(_,0,1,7,_);w=Sweep.ar(_);f=InFeedback.ar(0,2);FreeVerb2.ar(a=PMOsc.ar(97*p.(p.(11),t.(p.(5),2)),9,w.(p.(7) bitXor: p.(5)))*LFGauss.ar(w.(p.(t.(p.(8),t.(p.(5),2))) bitOr: p.(t.(p.(4),2))),w.(p.(5)).range(0.1,0.5)).fold(-0.8,0.8).fold(-0.5,0.5),a+f/5,1/9)} // #sc140 #SuperCollider

// <2022-11-30 Wed 17:39>
// #058
play{a=SinOsc;p=Pulse;f=InFeedback.ar(0,2);Limiter.ar((CombN.ar(RHPF.ar(WhiteNoise.ar,8e3,0.9)*LFGauss.ar(0.1,0.1+(f.abs/9))*p.kr(Select.kr(a.kr(1/3,f/pi,1.5,1.5),[8,12,24]),a.ar(11).range(0.01,0.1)))+a.ar(97*n=p.ar(4,f),f,p.kr(2,f.abs,add:f.abs))+GVerb.ar(a.ar(99*n,f/pi)+p.ar(p.kr(3*n),f.abs),1,mul:0.1)),0.5,0.002).tanh} // #SuperCollider #sc140

// ======================
// ON HARD DRIVES
// ======================
// 2013 April
// #059
play{a=LFPulse;b=SinOsc;b.ar(89!2*Latch.ar(b.ar(8.9),c=a.ar(5)))+(Line.ar(dur:29)*b.ar(1424/Stepper.ar(c,0,1,17,4).lag,0,b.ar(0.4).ceil)/4)}

//////141 - stereo (game*)
// #060
play{a=SinOsc.ar(_);b=LFPulse;c=Latch;d=WhiteNoise;LFGauss.ar(n=a.(4).abs,n/9)*a.(1e3*n)/9+a.(89!2*c.ar(a.(8.9),b.ar(5)))+d.ar(b.ar(10)/99)}

//dark NICE
// #061
play{a=LFPulse;b=SinOsc;b.ar(89!2*c=Latch.ar(b.ar(8.9),a.ar(5)))+(Line.ar(dur:29)*c*b.ar(267*Stepper.ar(c,0,-7,7,2).lag,0,b.ar(0.4).ceil))}

// #062
play{a=LFPulse;b=SinOsc.ar(_);c=Latch;d=WhiteNoise;LFGauss.ar(n=b.(9).abs,n/9)*b.(1424*n)/9+b.(89!2*c.ar(b.(9*n),a.ar(5)))+d.ar(a.ar(10)/99)}

// klank freq->0 -- 131203 (in 031213.scd)
// #063
play{p=LFPulse.ar(_);IFFT(PV_MagFreeze(FFT(LocalBuf(64),Klank.ar(`[[2,3]],Gate.ar(p.(6),LFCub.ar(Gate.ar(p.(7),p.(5))))*n=p.(9),0)),n))!2/990}

// exisou kalo -- 131203 (in 031213.scd)
// #064
play{p=LFPulse.ar(_);IFFT(PV_MagFreeze(FFT(LocalBuf(64),Klank.ar(`[[8,9]],Gate.ar(p.(6),LFCub.ar(Gate.ar(p.(7),p.(5))))*p.(9),9)),p.(2)))/99}

// or simply 69 -- 140104 (in 040114.scd)
// #065
play{a=SinOsc;RLPF.ar(a.ar(Latch.ar(a.ar(n=99+x=XLine.kr(0s,1,69);n*Stepper.kr(a.kr(6))),a.ar(9))*99!2),199,x-0s).tanh/3}// #sc140

// *)(*^^()) -- 140104 (in 040114.scd)
// #066
play{a=SinOsc;RLPF.ar(a.ar(Latch.ar(a.ar(n=99+x=XLine.kr(0s,1,69);n*Stepper.kr(a.kr(6))),a.ar(9))*99!2),199+a.kr(x).range(-75,99).poll,x-0s).tanh/3}// #sc140

// #067
play{a=SinOsc;RLPF.ar(a.ar(Latch.ar(a.ar(n=99+x=XLine.kr(0s,1,69);n*Stepper.kr(a.kr(6))),a.ar(9))*n!2),199+a.kr(x).range(-9,n),x-0s).tanh/3}

// #068 -- 221130
play{a=SinOsc;f=InFeedback.ar(0,2);RLPF.ar(a.ar(Latch.ar(a.ar(n=99+x=XLine.kr(0s,1,69);n*Stepper.kr(a.kr(6,f)),f),a.ar(9,f))*n!2),299+a.kr(x+(f*x/2),f).range(-9,n),x-0s).tanh/9}

// #069 -- 230128 @ 44100Hz -- not working
Ndef(\x,{f=LFSaw;FreeVerb2.ar(RLPF.ar(a=Limiter.ar(Convolution.ar(StandardN.ar([1.1,2], 2),Gendy1.ar(4,1,1,1,f.kr(0.3).fold(f.kr(2).range(-0.9,-0.7),f.kr(3).range(0.6,0.9)).fold(f.kr(3).range(-0.4,-0.2),f.kr(5).range(0.2,-0.4)).range(20,733),f.kr(13).fold(-0.7,0.7).fold(-0.4,0.4).range(1999,7333))),0.95),f.kr(SinOsc.kr(11).range(99,130)).range(999,1e4),f.kr(SinOsc.kr(1.1).range(1,12)).range(0.3,0.95)),Ndef(\x)/9)}).play

// #070 -- 240630 -- 280 chars -- longer decay
play{p=LFPulse;f=LFSaw.kr(_);t=1/Stepper.kr(p.kr(1),0,1);b=f.(t).range(0.1,1);a=f.(1/t).range(0.01,b);d=f.(1).range(0.1,b);v=Decay2.kr(p.kr(t),a,d);c=p.ar(37*t,0,f.(t).range(0.1,b),v);l=LocalIn.ar(1)+c;LocalOut.ar(DelayN.ar(l*b));FreeVerb.ar(LeakDC.ar(l).fold(f.(t).neg,f.(t)))!2}

// #070 variation -- 280 chars
{p=LFPulse;f=LFSaw.kr(_);t=1/Stepper.kr(p.kr(1),0,1);b=f.(t).range(0.1,1);a=f.(1/t).range(0.01,b);d=f.(1).range(0.1,b);v=Decay2.kr(p.kr(t),a,d);c=p.ar(37*t,0,f.(t).range(0.1,b),v);l=LocalIn.ar(1)+c;LocalOut.ar(DelayC.ar(l*b,1,t));FreeVerb.ar(l.fold(f.(t).neg,f.(t)).tanh)!2}.play;

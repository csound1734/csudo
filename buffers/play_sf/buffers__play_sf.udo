/****************************************************************************
*****************************************************************************
UDO DEFINITIONS IN buffers/play_sf:
*****************************************************************************
BufFiPl1   : aout, kfin BufFiPl1 ifn, kplay, kspeed, kvol [, iskip [, iwrap]]
BufFiPl2   : aL, aR BufFiPl2 ifnL, ifnR, kplay, kspeed, kvol [, iskip [, iwrap]]
BufFiPl4   : a1, a2, a3, a4 BufFiPl4 ifn1, ifn2, ifn3, ifn4, kplay, kspeed, kvol [, iskip [, iwrap]]
BufFiPl8   : a1, a2, a3, a4, a5, a6, a7, a8 BufFiPl8 ifn1, ifn2, ifn3, ifn4, ifn5, ifn6, ifn7, ifn8, kplay, kspeed, kvol [, iskip [, iwrap]]
*****************************************************************************
****************************************************************************/

/****************************************************************************
aout, kfin BufFiPl1 ifn, kplay, kspeed, kvol [, iskip [, iwrap]]
Plays a mono sample from a GEN01 function table, including sample rate conversion

Plays a mono sample from a GEN01 function table, including sample rate conversion. The input parameters are similar to diskin (speed, loop play or play once, skiptime) plus a factor for amplitude scaling.
See the UDO BufPlay for playing any buffer, with some more options, but without sample rate conversion.
written by joachim heintz

ifn - number of the function table which contains the sample (please use GEN01 - any other GEN routine will lead to an error because it does not contain the sample rate of the soundfile)
(you can also use BufFiCt1 for creating the table - see the example below)
iskip - skiptime (sec)
iwrap - iwrap=0 plays the file just once (stops at end of table for positive speed and at start of table for negative speed), or stops if the direction of speed changes. the default is 1 (loop play) 
kplay - 1 plays the table, 0 or any other number stops playing
kspeed - speed and direction (negative = backwards) of the pointer through the sample, e.g. 1 = normal, 2 = double (=octave higher), -0.5 = half (octave lower) and backwards
kvol - ampltude scaling factor (1 = original amplitude)
aout - audio output
kfin - 1 if iwrap=0 and playback has finished, otherwise 0
****************************************************************************/
/****************************************************************************
aL, aR BufFiPl2 ifnL, ifnR, kplay, kspeed, kvol [, iskip [, iwrap]]
Plays a stereo sample from two GEN01 function tables, including sample rate conversion

Plays a stereo sample from two GEN01 function tables for the left and right channel, including sample rate conversion. The input parameters are similar to diskin (speed, loop play or play once, skiptime) plus a factor for amplitude scaling.
See the UDO BufPlay for playing any buffer, with some more options, but without sample rate conversion.
written by joachim heintz

ifnL - number of the function table which contains channel 1 of the sample (use GEN01 with 1 for the channel parameter - any other GEN routine will lead to an error because it does not contain the sample rate of the soundfile)
(you can also use BufFiCt2 for creating the tables for left and right channel - see the example below)
ifnR - number of the function table which contains channel 2 of the sample (use the same f-statement as for ifnL but with 2 for the channel parameter)
iskip - skiptime (sec)
iwrap - iwrap=0 plays the file is just once (stops at end of table for positive speed and at start of table for negative speed), or stops if the direction of speed changes.the default is 1 (loop play) 
kplay - 1 plays the table, 0 or any other number stops playing
kspeed - speed and direction (negative = backwards) of the pointer through the sample, e.g. 1 = normal, 2 = double (=octave higher), -0.5 = half (octave lower) and backwards
kvol - ampltude scaling factor (1 = original amplitude)
aL - audio output channel 1
aR - audio output channel 2
kfin - 1 if iwrap=0 and playback has finished, otherwise 0
****************************************************************************/
/****************************************************************************
a1, a2, a3, a4 BufFiPl4 ifn1, ifn2, ifn3, ifn4, kplay, kspeed, kvol [, iskip [, iwrap]]
Plays a four channel sample from four GEN01 function tables, including sample rate conversion

Plays a four channel sample from four GEN01 function tables, including sample rate conversion. The input parameters are similar to diskin (speed, loop play or play once, skiptime) plus a factor for amplitude scaling.
See the UDO BufPlay for playing any buffer, with some more options, but without sample rate conversion.
written by joachim heintz

ifn1 - number of the function table which contains channel 1 of the sample (use GEN01 with 1 for the channel parameter - any other GEN routine will lead to an error because it does not contain the sample rate of the soundfile)
(you can also use BufFiCt4 for creating the tables for all channels - see the example below)
ifn2 - number of the function table which contains channel 2 of the sample (use the same f-statement as for ifnL but with 2 for the channel parameter)
ifn3 - number of the function table for the 3. channel
ifn4 - number of the function table for the 4. channel
iskip - skiptime (sec)
iwrap - iwrap=0 plays the file is just once (stops at end of table for positive speed and at start of table for negative speed), or stops if the direction of speed changes. the default is 1 (loop play)
kplay - 1 plays the table, 0 or any other number stops playing
kspeed - speed and direction (negative = backwards) of the pointer through the sample, e.g. 1 = normal, 2 = double (=octave higher), -0.5 = half (octave lower) and backwards
kvol - ampltude scaling factor (1 = original amplitude)
a1 - audio output channel 1
a2 - audio output channel 2
a3 - audio output channel 3
a4 - audio output channel 4
kfin - 1 if iwrap=0 and playback has finished, otherwise 0 
****************************************************************************/
/****************************************************************************
a1, a2, a3, a4, a5, a6, a7, a8 BufFiPl8 ifn1, ifn2, ifn3, ifn4, ifn5, ifn6, ifn7, ifn8, kplay, kspeed, kvol [, iskip [, iwrap]]
Plays an eight channel sample from eight GEN01 function tables, including sample rate conversion

Plays an eight channel sample from eight GEN01 function tables, including sample rate conversion. The input parameters are similar to diskin (speed, loop play or play once, skiptime) plus a factor for amplitude scaling.
See the UDO BufPlay for playing any buffer, with some more options, but without sample rate conversion.
written by joachim heintz

ifn1 - number of the function table which contains channel 1 of the sample (use GEN01 with 1 for the channel parameter - any other GEN routine will lead to an error because it does not contain the sample rate of the soundfile)
(you can also use BufFiCt8 for creating the tables for all channels - see the example below)
ifn2 - number of the function table which contains channel 2 of the sample (use the same f-statement as for ifnL but with 2 for the channel parameter)
ifn3 - number of the function table for the 3. channel
ifn4 - number of the function table for the 4. channel
ifn5 - number of the function table for the 5. channel
ifn6 - number of the function table for the 6. channel
ifn7 - number of the function table for the 7. channel
ifn8 - number of the function table for the 8. channel
iskip - skiptime (sec)
iwrap - iwrap=0 plays the file is just once (stops at end of table for positive speed and at start of table for negative speed), or stops if the direction of speed changes. the default is 1 (loop play)
kplay - 1 plays the table, 0 or any other number stops playing
kspeed - speed and direction (negative = backwards) of the pointer through the sample, e.g. 1 = normal, 2 = double (=octave higher), -0.5 = half (octave lower) and backwards
kvol - ampltude scaling factor (1 = original amplitude)
a1 - audio output channel 1
a2 - audio output channel 2
a3 - audio output channel 3
a4 - audio output channel 4
a5 - audio output channel 5
a6 - audio output channel 6
a7 - audio output channel 7
a8 - audio output channel 8
kfin - 1 if iwrap=0 and playback has finished, otherwise 0  
****************************************************************************/

  opcode BufFiPl1, ak, ikkkop
ifn, kplay, kspeed, kvol, iskip, iwrap xin
;SAFETY CHECK IF THE TABLE IS REALLY GENERATED BY GEN01
if ftsr(ifn) == 0 then
 prints    "ERROR!\n FUNCTION TABLE %d HAS NO SAMPLE RATE VALUE (NOT GENERATED BY GEN01?)\n", ifn
 prints    "PERFORMANCE HAS BEEN TURNED OF.\n"
 turnoff
endif
iftlen    =         ftlen(ifn)/ftsr(ifn)
kcps      =         kspeed / iftlen
iphs      =         iskip / iftlen
kfin      init      0
;CALCULATIONS ONLY REQUIRED FOR WRAP=0
if iwrap == 0 then
kndx      phasor    kcps, iphs
kfirst    init      1 ;don't check condition below at the first k-cycle (always true)
kprevndx  init      0
 ;end of table check:
  ;for positive speed, check if this index is lower than the previous one
  if kfirst == 0 && kspeed > 0 && kndx < kprevndx then 
kfin      =         1
  else
 ;for negative speed, check if this index is higher than the previous one
kprevndx  =         (kprevndx == iphs ? 1 : kprevndx) 
   if kfirst == 0 && kspeed < 0 && kndx > kprevndx then
kfin      =         1
   endif
kfirst    =         0 ;end of first cycle in wrap = 0
  endif
kprevndx  =         kndx ;next previous is this index
endif
;READING THE SOUND WITH POSCIL3
if kplay == 1 && kfin == 0 then
asig      poscil3   kvol, kcps, ifn, iphs
else
asig      =         0
endif
          xout      asig, kfin
  endop

  opcode BufFiPl2, aak, iikkkop
ifnL, ifnR, kplay, kspeed, kvol, iskip, iwrap xin
aL, kfin  BufFiPl1  ifnL, kplay, kspeed, kvol, iskip, iwrap
aR, kfin  BufFiPl1  ifnR, kplay, kspeed, kvol, iskip, iwrap
          xout      aL, aR, kfin
  endop

  opcode BufFiPl4, aaaak, iiiikkkop
ifn1, ifn2, ifn3, ifn4, kplay, kspeed, kvol, iskip, iwrap xin
a1, kfin  BufFiPl1  ifn1, kplay, kspeed, kvol, iskip, iwrap
a2, kfin  BufFiPl1  ifn2, kplay, kspeed, kvol, iskip, iwrap
a3, kfin  BufFiPl1  ifn3, kplay, kspeed, kvol, iskip, iwrap
a4, kfin  BufFiPl1  ifn4, kplay, kspeed, kvol, iskip, iwrap
          xout      a1, a2, a3, a4, kfin
  endop

  opcode BufFiPl8, aaaaaaaak, iiiiiiiikkkop
ifn1, ifn2, ifn3, ifn4, ifn5, ifn6, ifn7, ifn8, kplay, kspeed, kvol, iskip, iwrap xin
a1, kfin  BufFiPl1  ifn1, kplay, kspeed, kvol, iskip, iwrap
a2, kfin  BufFiPl1  ifn2, kplay, kspeed, kvol, iskip, iwrap
a3, kfin  BufFiPl1  ifn3, kplay, kspeed, kvol, iskip, iwrap
a4, kfin  BufFiPl1  ifn4, kplay, kspeed, kvol, iskip, iwrap
a5, kfin  BufFiPl1  ifn5, kplay, kspeed, kvol, iskip, iwrap
a6, kfin  BufFiPl1  ifn6, kplay, kspeed, kvol, iskip, iwrap
a7, kfin  BufFiPl1  ifn7, kplay, kspeed, kvol, iskip, iwrap
a8, kfin  BufFiPl1  ifn8, kplay, kspeed, kvol, iskip, iwrap
          xout      a1, a2, a3, a4, a5, a6, a7, a8, kfin
  endop



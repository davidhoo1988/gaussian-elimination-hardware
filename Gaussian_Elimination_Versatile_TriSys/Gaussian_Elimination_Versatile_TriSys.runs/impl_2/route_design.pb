
o
Command: %s
53*	vivadotcl2>
*route_design -directive NoTimingRelaxation2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a200t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a200t2default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
i
Using Router directive '%s'.
20*	routeflow2&
NoTimingRelaxation2default:defaultZ35-270h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
B
-Phase 1 Build RT Design | Checksum: f64642d7
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:01:31 ; elapsed = 00:01:11 . Memory (MB): peak = 2336.453 ; gain = 92.1722default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
A
,Phase 2.1 Create Timer | Checksum: f64642d7
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:01:35 ; elapsed = 00:01:15 . Memory (MB): peak = 2341.301 ; gain = 97.0202default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
M
8Phase 2.2 Fix Topology Constraints | Checksum: f64642d7
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:36 ; elapsed = 00:01:16 . Memory (MB): peak = 2349.160 ; gain = 104.8792default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.3 Pre Route Cleanup | Checksum: f64642d7
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:36 ; elapsed = 00:01:16 . Memory (MB): peak = 2349.160 ; gain = 104.8792default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.4 Update Timing | Checksum: 1047f46b8
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:17 ; elapsed = 00:01:42 . Memory (MB): peak = 2453.855 ; gain = 209.5742default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=0.031  | TNS=0.000  | WHS=-0.186 | THS=-1802.500|
2default:defaultZ35-416h px? 
H
3Phase 2 Router Initialization | Checksum: d10f3901
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:34 ; elapsed = 00:01:53 . Memory (MB): peak = 2463.906 ; gain = 219.6252default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
B
-Phase 3 Initial Routing | Checksum: a87ab882
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:59 ; elapsed = 00:02:06 . Memory (MB): peak = 2555.973 ; gain = 311.6912default:defaulth px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.071 | TNS=-0.130 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
?
?Congestion is preventing the router from routing all nets. The router will prioritize the successful completion of routing all nets over timing optimizations.177*routeZ35-447h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 152b7d1a3
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:12:26 ; elapsed = 00:07:02 . Memory (MB): peak = 2555.973 ; gain = 311.6912default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.178 | TNS=-0.641 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 1e98d070d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:20:36 ; elapsed = 00:12:02 . Memory (MB): peak = 2555.973 ; gain = 311.6912default:defaulth px? 
u

Phase %s%s
101*constraints2
4.3 2default:default2&
Global Iteration 22default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.158 | TNS=-0.315 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.3 Global Iteration 2 | Checksum: 19f73027b
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:27:05 ; elapsed = 00:15:57 . Memory (MB): peak = 2555.973 ; gain = 311.6912default:defaulth px? 
u

Phase %s%s
101*constraints2
4.4 2default:default2&
Global Iteration 32default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.160 | TNS=-0.391 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.4 Global Iteration 3 | Checksum: 1f551ae09
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:29:33 ; elapsed = 00:17:39 . Memory (MB): peak = 2555.973 ; gain = 311.6912default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 1f551ae09
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:29:34 ; elapsed = 00:17:39 . Memory (MB): peak = 2555.973 ; gain = 311.6912default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 5.1.1 Update Timing | Checksum: 1915c4547
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:29:39 ; elapsed = 00:17:43 . Memory (MB): peak = 2555.973 ; gain = 311.6912default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.150 | TNS=-0.267 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 1f47746ad
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:29:40 ; elapsed = 00:17:44 . Memory (MB): peak = 2555.973 ; gain = 311.6912default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 1f47746ad
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:29:41 ; elapsed = 00:17:44 . Memory (MB): peak = 2555.973 ; gain = 311.6912default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 1f47746ad
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:29:41 ; elapsed = 00:17:44 . Memory (MB): peak = 2555.973 ; gain = 311.6912default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 6.1.1 Update Timing | Checksum: 1ce26b220
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:29:47 ; elapsed = 00:17:48 . Memory (MB): peak = 2555.973 ; gain = 311.6912default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.150 | TNS=-0.267 | WHS=0.024  | THS=0.000  |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 181b0d59a
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:29:47 ; elapsed = 00:17:48 . Memory (MB): peak = 2555.973 ; gain = 311.6912default:defaulth px? 
A
,Phase 6 Post Hold Fix | Checksum: 181b0d59a
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:29:47 ; elapsed = 00:17:49 . Memory (MB): peak = 2555.973 ; gain = 311.6912default:defaulth px? 
t

Phase %s%s
101*constraints2
7 2default:default2'
Timing Verification2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
7.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 7.1 Update Timing | Checksum: 17e187241
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:30:02 ; elapsed = 00:17:56 . Memory (MB): peak = 2555.973 ; gain = 311.6912default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.150 | TNS=-0.267 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
G
2Phase 7 Timing Verification | Checksum: 17e187241
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:30:02 ; elapsed = 00:17:57 . Memory (MB): peak = 2555.973 ; gain = 311.6912default:defaulth px? 
o

Phase %s%s
101*constraints2
8 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 8 Route finalize | Checksum: 17e187241
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:30:05 ; elapsed = 00:17:58 . Memory (MB): peak = 2555.973 ; gain = 311.6912default:defaulth px? 
v

Phase %s%s
101*constraints2
9 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 9 Verifying routed nets | Checksum: 17e187241
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:30:05 ; elapsed = 00:17:59 . Memory (MB): peak = 2555.973 ; gain = 311.6912default:defaulth px? 
s

Phase %s%s
101*constraints2
10 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
F
1Phase 10 Depositing Routes | Checksum: 181f930c0
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:30:15 ; elapsed = 00:18:10 . Memory (MB): peak = 2555.973 ; gain = 311.6912default:defaulth px? 
w

Phase %s%s
101*constraints2
11 2default:default2)
Incr Placement Change2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.2402default:default2
2555.9732default:default2
0.0002default:defaultZ17-268h px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
0.0712default:defaultZ30-746h px? 
A
,Ending IncrPlace Task | Checksum: 1a0d89c74
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:26 ; elapsed = 00:01:05 . Memory (MB): peak = 2839.652 ; gain = 283.6802default:defaulth px? 
J
5Phase 11 Incr Placement Change | Checksum: 181f930c0
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:31:44 ; elapsed = 00:19:17 . Memory (MB): peak = 2839.652 ; gain = 595.3712default:defaulth px? 
q

Phase %s%s
101*constraints2
12 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
D
/Phase 12 Build RT Design | Checksum: 11fd3b6b0
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:32:04 ; elapsed = 00:19:38 . Memory (MB): peak = 2839.652 ; gain = 595.3712default:defaulth px? 
w

Phase %s%s
101*constraints2
13 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
13.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
B
-Phase 13.1 Create Timer | Checksum: b920fc9c
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:32:11 ; elapsed = 00:19:46 . Memory (MB): peak = 2839.652 ; gain = 595.3712default:defaulth px? 
|

Phase %s%s
101*constraints2
13.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
N
9Phase 13.2 Fix Topology Constraints | Checksum: b920fc9c
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:32:12 ; elapsed = 00:19:47 . Memory (MB): peak = 2839.652 ; gain = 595.3712default:defaulth px? 
u

Phase %s%s
101*constraints2
13.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
G
2Phase 13.3 Pre Route Cleanup | Checksum: 2fe28b04
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:32:13 ; elapsed = 00:19:47 . Memory (MB): peak = 2839.652 ; gain = 595.3712default:defaulth px? 
q

Phase %s%s
101*constraints2
13.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 13.4 Update Timing | Checksum: 1f6b9f99f
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:33:05 ; elapsed = 00:20:20 . Memory (MB): peak = 2851.395 ; gain = 607.1132default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=0.066  | TNS=0.000  | WHS=-0.186 | THS=-1790.503|
2default:defaultZ35-416h px? 
J
5Phase 13 Router Initialization | Checksum: 1f85faca3
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:33:21 ; elapsed = 00:20:30 . Memory (MB): peak = 2860.926 ; gain = 616.6452default:defaulth px? 
q

Phase %s%s
101*constraints2
14 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
D
/Phase 14 Initial Routing | Checksum: 27e202c17
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:33:28 ; elapsed = 00:20:35 . Memory (MB): peak = 2860.926 ; gain = 616.6452default:defaulth px? 
t

Phase %s%s
101*constraints2
15 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
v

Phase %s%s
101*constraints2
15.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.273 | TNS=-0.872 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
I
4Phase 15.1 Global Iteration 0 | Checksum: 255bdd33f
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:41:10 ; elapsed = 00:25:06 . Memory (MB): peak = 2893.406 ; gain = 649.1252default:defaulth px? 
v

Phase %s%s
101*constraints2
15.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.134 | TNS=-0.339 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
I
4Phase 15.2 Global Iteration 1 | Checksum: 16002d2fa
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:43:49 ; elapsed = 00:26:52 . Memory (MB): peak = 2895.266 ; gain = 650.9842default:defaulth px? 
v

Phase %s%s
101*constraints2
15.3 2default:default2&
Global Iteration 22default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.064 | TNS=-0.220 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 15.3 Global Iteration 2 | Checksum: 843eee7d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:46:24 ; elapsed = 00:28:31 . Memory (MB): peak = 2898.551 ; gain = 654.2702default:defaulth px? 
v

Phase %s%s
101*constraints2
15.4 2default:default2&
Global Iteration 32default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.208 | TNS=-0.480 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
I
4Phase 15.4 Global Iteration 3 | Checksum: 1afd062a5
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:49:07 ; elapsed = 00:30:23 . Memory (MB): peak = 2899.559 ; gain = 655.2772default:defaulth px? 
G
2Phase 15 Rip-up And Reroute | Checksum: 1afd062a5
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:49:07 ; elapsed = 00:30:24 . Memory (MB): peak = 2899.559 ; gain = 655.2772default:defaulth px? 
}

Phase %s%s
101*constraints2
16 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
16.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
s

Phase %s%s
101*constraints2
16.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
F
1Phase 16.1.1 Update Timing | Checksum: 1426d825a
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:49:12 ; elapsed = 00:30:27 . Memory (MB): peak = 2899.559 ; gain = 655.2772default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.047 | TNS=-0.147 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
D
/Phase 16.1 Delay CleanUp | Checksum: 154a6062f
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:49:14 ; elapsed = 00:30:28 . Memory (MB): peak = 2899.559 ; gain = 655.2772default:defaulth px? 
{

Phase %s%s
101*constraints2
16.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
N
9Phase 16.2 Clock Skew Optimization | Checksum: 154a6062f
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:49:14 ; elapsed = 00:30:28 . Memory (MB): peak = 2899.559 ; gain = 655.2772default:defaulth px? 
P
;Phase 16 Delay and Skew Optimization | Checksum: 154a6062f
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:49:14 ; elapsed = 00:30:28 . Memory (MB): peak = 2899.559 ; gain = 655.2772default:defaulth px? 
o

Phase %s%s
101*constraints2
17 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
17.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
s

Phase %s%s
101*constraints2
17.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
F
1Phase 17.1.1 Update Timing | Checksum: 1f4361694
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:49:21 ; elapsed = 00:30:32 . Memory (MB): peak = 2899.559 ; gain = 655.2772default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.047 | TNS=-0.132 | WHS=0.024  | THS=0.000  |
2default:defaultZ35-416h px? 
D
/Phase 17.1 Hold Fix Iter | Checksum: 11312a84f
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:49:21 ; elapsed = 00:30:32 . Memory (MB): peak = 2899.559 ; gain = 655.2772default:defaulth px? 
B
-Phase 17 Post Hold Fix | Checksum: 11312a84f
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:49:21 ; elapsed = 00:30:33 . Memory (MB): peak = 2899.559 ; gain = 655.2772default:defaulth px? 
u

Phase %s%s
101*constraints2
18 2default:default2'
Timing Verification2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
18.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 18.1 Update Timing | Checksum: 1a8790608
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:49:35 ; elapsed = 00:30:40 . Memory (MB): peak = 2899.559 ; gain = 655.2772default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.047 | TNS=-0.132 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 18 Timing Verification | Checksum: 1a8790608
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:49:35 ; elapsed = 00:30:40 . Memory (MB): peak = 2899.559 ; gain = 655.2772default:defaulth px? 
p

Phase %s%s
101*constraints2
19 2default:default2"
Route finalize2default:defaultZ18-101h px? 
C
.Phase 19 Route finalize | Checksum: 1a8790608
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:49:38 ; elapsed = 00:30:42 . Memory (MB): peak = 2899.559 ; gain = 655.2772default:defaulth px? 
w

Phase %s%s
101*constraints2
20 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
J
5Phase 20 Verifying routed nets | Checksum: 1a8790608
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:49:39 ; elapsed = 00:30:43 . Memory (MB): peak = 2899.559 ; gain = 655.2772default:defaulth px? 
s

Phase %s%s
101*constraints2
21 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
F
1Phase 21 Depositing Routes | Checksum: 1c9ed1801
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:49:49 ; elapsed = 00:30:55 . Memory (MB): peak = 2899.559 ; gain = 655.2772default:defaulth px? 
t

Phase %s%s
101*constraints2
22 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Post Routing Timing Summary %s
20*route2J
6| WNS=-0.047 | TNS=-0.130 | WHS=0.026  | THS=0.000  |
2default:defaultZ35-20h px? 
?
dThe design did not meet timing requirements. Please run report_timing_summary for detailed reports.
39*routeZ35-39h px? 
?
?TNS is the sum of the worst slack violation on every endpoint in the design. Review the paths with the biggest WNS violations in the timing reports and modify your constraints or your design to improve both WNS and TNS.
96*routeZ35-253h px? 
G
2Phase 22 Post Router Timing | Checksum: 1d966d9e7
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:50:19 ; elapsed = 00:31:12 . Memory (MB): peak = 2899.559 ; gain = 655.2772default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2q
]Time (s): cpu = 00:50:20 ; elapsed = 00:31:13 . Memory (MB): peak = 2899.559 ; gain = 655.2772default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
6002default:default2
12default:default2
12default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:50:422default:default2
00:31:312default:default2
2899.5592default:default2
698.8202default:defaultZ17-268h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:252default:default2
00:00:102default:default2
2899.5592default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?C:/Users/Hu Jingwei/Dropbox/ROLLO/hardware/Gaussian_Elimination_Versatile_TriSys/Gaussian_Elimination_Versatile_TriSys.runs/impl_2/comb_SA_routed.dcp2default:defaultZ17-1381h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:342default:default2
00:00:192default:default2
2899.5592default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2~
jExecuting : report_drc -file comb_SA_drc_routed.rpt -pb comb_SA_drc_routed.pb -rpx comb_SA_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2q
]report_drc -file comb_SA_drc_routed.rpt -pb comb_SA_drc_routed.pb -rpx comb_SA_drc_routed.rpx2default:defaultZ4-113h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
?C:/Users/Hu Jingwei/Dropbox/ROLLO/hardware/Gaussian_Elimination_Versatile_TriSys/Gaussian_Elimination_Versatile_TriSys.runs/impl_2/comb_SA_drc_routed.rpt?C:/Users/Hu Jingwei/Dropbox/ROLLO/hardware/Gaussian_Elimination_Versatile_TriSys/Gaussian_Elimination_Versatile_TriSys.runs/impl_2/comb_SA_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
report_drc: 2default:default2
00:00:362default:default2
00:00:192default:default2
2899.5592default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file comb_SA_methodology_drc_routed.rpt -pb comb_SA_methodology_drc_routed.pb -rpx comb_SA_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file comb_SA_methodology_drc_routed.rpt -pb comb_SA_methodology_drc_routed.pb -rpx comb_SA_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
450*coretcl2?
?C:/Users/Hu Jingwei/Dropbox/ROLLO/hardware/Gaussian_Elimination_Versatile_TriSys/Gaussian_Elimination_Versatile_TriSys.runs/impl_2/comb_SA_methodology_drc_routed.rpt?C:/Users/Hu Jingwei/Dropbox/ROLLO/hardware/Gaussian_Elimination_Versatile_TriSys/Gaussian_Elimination_Versatile_TriSys.runs/impl_2/comb_SA_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2(
report_methodology: 2default:default2
00:00:462default:default2
00:00:282default:default2
2899.5592default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2?
zExecuting : report_power -file comb_SA_power_routed.rpt -pb comb_SA_power_summary_routed.pb -rpx comb_SA_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
mreport_power -file comb_SA_power_routed.rpt -pb comb_SA_power_summary_routed.pb -rpx comb_SA_power_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
6122default:default2
12default:default2
12default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:00:502default:default2
00:00:302default:default2
2899.5592default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2o
[Executing : report_route_status -file comb_SA_route_status.rpt -pb comb_SA_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file comb_SA_timing_summary_routed.rpt -pb comb_SA_timing_summary_routed.pb -rpx comb_SA_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
?
UpdateTimingParams:%s.
91*timing2R
> Speed grade: -1, Delay Type: min_max, Timing Stage: Requireds2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 
?
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2"
timing summary2default:defaultZ38-282h px? 
?
%s4*runtcl2d
PExecuting : report_incremental_reuse -file comb_SA_incremental_reuse_routed.rpt
2default:defaulth px? 
x
TNo incremental reuse to report, no incremental placement and routing data was found.278*	vivadotclZ4-545h px? 
?
%s4*runtcl2d
PExecuting : report_clock_utilization -file comb_SA_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
rExecuting : report_bus_skew -warn_on_violation -file route_report_bus_skew_0.rpt -rpx route_report_bus_skew_0.rpx
2default:defaulth px? 
?
UpdateTimingParams:%s.
91*timing2R
> Speed grade: -1, Delay Type: min_max, Timing Stage: Requireds2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 


End Record
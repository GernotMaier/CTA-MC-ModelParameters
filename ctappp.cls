%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% CTA TDR Template  Version 1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{ctappp}

\LoadClass{article}
\RequirePackage{rotating}
\RequirePackage{color}
\RequirePackage{graphicx}
\RequirePackage{multicol}
\RequirePackage{setspace}
\RequirePackage{colortbl}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{tocloft}
\RequirePackage[colorlinks=true,pdffitwindow=true, pdfstartview=FitH]{hyperref}
\RequirePackage{helvet}
\RequirePackage[margin=2.5cm, a4paper]{geometry}
\RequirePackage{calc}
\RequirePackage{datetime}
\RequirePackage{enumitem}
\RequirePackage{tikz}
\RequirePackage{placeins}
\RequirePackage[toc,nonumberlist]{glossaries}
\RequirePackage[titletoc]{appendix}


\newdateformat{ctadate}{\twodigit{\THEDAY}\ \monthname[\THEMONTH] \THEYEAR}
\newdateformat{tabledate}{\THEYEAR-\twodigit{\THEMONTH}-\twodigit{\THEDAY}}
\setdefaultdate{\ctadate}


\renewcommand{\familydefault}{\sfdefault}
\renewcommand{\appendixname}{Appendix}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Colors and hyperlinks
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\definecolor{ctagray}{RGB}{200,200,200}
\definecolor{ctadarkgray}{RGB}{25,25,25}
\definecolor{ctablue}{RGB}{0,32,78}
\definecolor{ctalightblue}{RGB}{178,188,203}        %--- 70% transparency of ctablue
\definecolor{tablightblue}{RGB}{220,230,241}
\definecolor{tabmedblue}{RGB}{184,204,228}
\definecolor{tabinterblue}{RGB}{149,179,215}
\definecolor{tabdarkblue}{RGB}{83,141,213}
\definecolor{c1a2548}{RGB}{26,37,72}            %--- dark blue
\definecolor{cee233b}{RGB}{238,35,59}           %--- red

\color{ctadarkgray}

\newcommand\ctadarkgray[1]{\textcolor{ctadarkgray}{#1}}
\newcommand\ctagray[1]{\textcolor{ctagray}{#1}}
\newcommand\ctablue[1]{\textcolor{ctablue}{#1}}
\newcommand\ctablueUP[1]{\textcolor{ctablue}{\MakeUppercase{#1}}}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Custom commands
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\global\let\@version\@empty
\global\let\@history\@empty
\global\let\@acronym\@empty
\global\let\@abbreviations\@empty
\global\let\@keywords\@empty
\global\let\@authors\@empty
\global\let\@docs\@empty
\global\let\@approvedby\@empty
\global\let\@distribution\@empty
\global\let\@realtitle\@title
\global\let\@realdate\@date
\global\let\@revision\@empty
\global\let\@ownership\@empty




\newcommand{\version}[1]{\def\@version{#1}}
\newcommand{\history}[1]{\def\@history{#1}}
\newcommand{\acronym}[1]{\def\@acronym{#1}}
\newcommand{\keywords}[1]{\def\@keywords{#1}}
\newcommand{\authors}[1]{\def\@authors{#1}}
\newcommand{\abbreviations}[1]{\def\@abbreviations{#1}}
\newcommand{\docs}[1]{\def\@docs{#1}}
\newcommand{\approvedby}[1]{\def\@approvedby{#1}}
\newcommand{\distribution}[1]{\def\@distribution{#1}}
\newcommand{\revision}[1]{\def\@revision{#1}}
\newcommand{\ownership}[1]{\def\@ownership{#1}}


\global\let\@project\@empty
\newcommand{\project}[1]{\def\@project{#1}}

\global\let\@shorttitle\@empty
\newcommand{\shorttitle}[1]{\def\@shorttitle{#1}}

\global\let\@checkedby\@empty
\newcommand{\checkedby}[1]{\def\@checkedby{#1}}

\global\let\@DocComment\@empty
\newcommand{\DocComment}[1]{\def\@DocComment{#1}}

\global\let\@editor\@empty
\newcommand{\editor}[1]{\def\@editor{#1}}

%\newcommand{\TitleBox}[1]{\fcolorbox{white}{ctalightblue}{\parbox{\linewidth}{\textbf{#1\strut}}}}

% \renewcommand{\bibname}{References}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Load Packages with customized commands
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[margin=10pt,font={footnotesize, color=ctablue},labelfont=bf,labelsep=endash]{caption}

\setglossarystyle{super3col}
\setlength{\glsdescwidth}{\linewidth}
%\makeglossaries


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% The CTA logo
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\ctalogo}{
\begin{tikzpicture}[y=0.80pt, x=0.80pt, yscale=-1.000000, xscale=1.000000, inner sep=0pt, outer sep=0pt]
\begin{scope}[cm={{1.33333,0.0,0.0,-1.33333,(0.0,191.33867)}}]
      \begin{scope}[shift={(192.3171,63.5241)}]
        \path[fill=c1a2548,nonzero rule] (0.0000,0.0000) -- (0.0000,25.7760) .. controls
          (0.0000,42.8930) and (-6.6150,47.7130) .. (-8.6390,49.2880) .. controls
          (-9.9970,50.3440) and (-14.9690,53.4940) .. (-22.8250,53.7020) .. controls
          (-32.1710,53.9490) and (-37.6600,52.6170) .. (-41.9440,49.8580) --
          (-41.9440,37.6880) .. controls (-40.9510,37.9060) and (-32.1770,40.0830) ..
          (-27.0300,39.6320) .. controls (-22.8860,39.2690) and (-21.4440,37.7240) ..
          (-20.6500,36.6770) .. controls (-19.5370,35.2080) and (-19.0910,33.4580) ..
          (-18.9150,31.6440) .. controls (-18.8410,30.8720) and (-18.7570,24.1530) ..
          (-18.7570,24.1530) .. controls (-18.7570,24.1530) and (-27.4430,24.2070) ..
          (-28.5410,24.1530) .. controls (-36.7640,24.1530) and (-41.6570,22.0480) ..
          (-44.2810,20.1740) .. controls (-51.5070,15.0110) and (-50.5710,2.2910) ..
          (-50.4060,0.4020) .. controls (-49.6020,-8.7930) and (-42.9210,-15.5930) ..
          (-37.2990,-16.9510) .. controls (-24.5610,-20.0260) and (-18.3410,-13.6740) ..
          (-16.9950,-11.4190) .. controls (-15.8790,-13.3480) and (-14.8480,-15.5580) ..
          (-13.3600,-17.1190) -- (3.2160,-17.1190) .. controls (0.2120,-5.0150) and
          (0.0000,-3.1100) .. (0.0000,0.0000)(-22.3120,-3.1550) .. controls
          (-23.6590,-3.9540) and (-25.7180,-4.1740) .. (-26.8550,-4.1740) .. controls
          (-29.5990,-4.1740) and (-31.0730,-2.7450) .. (-31.5330,-1.4570) .. controls
          (-31.9750,-0.2190) and (-32.1780,1.0500) .. (-32.1780,2.3590) .. controls
          (-32.1780,4.2770) and (-32.2540,7.0990) .. (-31.2180,8.6360) .. controls
          (-30.5060,9.6930) and (-29.4700,10.3590) .. (-28.3290,10.8650) .. controls
          (-24.9030,12.3840) and (-18.6880,12.2750) .. (-18.3580,12.2750) --
          (-18.3580,2.5920) .. controls (-18.3360,1.3480) and (-18.7450,-1.0390) ..
          (-22.3120,-3.1550);
      \end{scope}
      \begin{scope}[shift={(131.7675,61.2889)}]
        \path[fill=c1a2548,nonzero rule] (0.0000,0.0000) .. controls (-2.0660,0.0900)
          and (-3.7600,0.8460) .. (-4.9180,2.6210) .. controls (-6.0920,4.4200) and
          (-6.5940,6.4670) .. (-6.6050,8.5410) .. controls (-6.6630,18.6220) and
          (-6.6050,39.5120) .. (-6.6050,39.5120) -- (14.3300,39.5120) --
          (14.3300,52.6340) .. controls (14.3300,52.6340) and (-4.2520,52.6250) ..
          (-6.6050,52.6420) -- (-6.6050,72.7780) .. controls (-13.0000,71.4870) and
          (-19.1440,69.6470) .. (-25.0930,66.9990) -- (-25.0930,52.6330) --
          (-33.3180,52.6330) -- (-33.3180,39.4920) -- (-25.0930,39.4920) .. controls
          (-25.0930,39.4920) and (-25.0850,18.8830) .. (-25.0930,9.0770) .. controls
          (-25.0930,-0.9160) and (-23.2810,-5.3540) .. (-21.7170,-7.7790) .. controls
          (-20.2920,-9.9870) and (-15.7380,-15.2430) .. (-7.2250,-15.2430) .. controls
          (-0.6260,-15.2430) and (3.0200,-13.9570) .. (4.9950,-13.1980) .. controls
          (5.9950,-12.8140) and (10.1510,-10.8240) .. (10.1510,-10.8240) --
          (5.6640,1.5330) .. controls (5.6640,1.5330) and (1.7860,0.0000) ..
          (0.0000,0.0000);
      \end{scope}
      \begin{scope}[shift={(86.1793,61.1932)}]
        \path[fill=c1a2548,nonzero rule] (0.0000,0.0000) .. controls (-6.0750,0.0000)
          and (-8.5050,2.8530) .. (-9.8730,4.5550) .. controls (-12.3980,7.6950) and
          (-14.0750,12.5210) .. (-14.1900,16.9590) .. controls (-14.4020,25.2080) and
          (-13.3750,33.3110) .. (-7.7430,37.9480) .. controls (-4.8390,40.3380) and
          (-1.5560,40.5400) .. (-0.1450,40.5900) .. controls (3.5740,40.7220) and
          (7.3130,39.5010) .. (7.8700,39.3230) -- (7.8700,53.1840) .. controls
          (-2.3600,58.5410) and (-16.1150,53.5050) .. (-21.8160,47.6800) .. controls
          (-31.6710,37.6090) and (-32.5040,25.1570) .. (-32.6450,20.9940) .. controls
          (-33.2550,2.9480) and (-25.9000,-6.0760) .. (-20.5130,-9.9860) .. controls
          (-15.9710,-13.2830) and (-10.0620,-15.3750) .. (-2.9690,-15.1080) .. controls
          (10.6190,-14.5960) and (18.6930,-8.6470) .. (19.2590,-8.2810) .. controls
          (17.6960,-4.0720) and (16.6460,0.1990) .. (15.7460,4.5580) .. controls
          (8.7970,1.4720) and (2.9610,0.0000) .. (0.0000,0.0000);
      \end{scope}
      \begin{scope}[shift={(215.476,41.5134)}]
        \path[fill=c1a2548,nonzero rule] (0.0000,0.0000) .. controls (0.0000,0.0000) and
          (-56.5230,-33.3760) .. (-127.5790,-24.5620) .. controls (-152.4930,-21.4720)
          and (-184.2820,-11.5260) .. (-197.4900,12.6080) .. controls
          (-215.3470,45.2330) and (-177.3800,76.3110) .. (-172.5420,80.0850) --
          (-172.5420,81.0980) .. controls (-173.1350,80.7310) and (-217.0330,53.4370) ..
          (-214.9300,16.1320) .. controls (-213.1830,-14.8620) and (-182.1460,-30.5340)
          .. (-155.2450,-36.9990) .. controls (-135.1340,-41.8320) and
          (-113.8200,-41.9030) .. (-93.4050,-39.2190) .. controls (-31.6880,-31.1040)
          and (1.0040,-0.4750) .. (1.0040,-0.4750) -- cycle;
      \end{scope}
  \path[fill=cee233b,nonzero rule] (242.9520,139.6840) -- (364.4250,139.6840) --
    (364.4250,143.0320) -- (242.9520,143.0320) -- cycle;
  \path[fill=cee233b,nonzero rule] (242.9520,17.2110) -- (363.4940,17.2110) --
    (363.4940,20.5590) -- (242.9520,20.5590) -- cycle;
  \begin{scope}[cm={{1.0,0.0,0.0,-1.0,(242.952,100.6184)}},fill=c1a2548,nonzero rule]
    \path[fill] (7.3181,-13.7340) .. controls (3.3333,-13.7340) and
      (0.8020,-10.7767) .. (0.8020,-6.5412) .. controls (0.8020,-2.3308) and
      (3.3082,0.4261) .. (7.3933,0.4261) .. controls (9.2229,0.4261) and
      (10.6514,-0.1754) .. (11.8794,-1.1529) -- (10.1502,-3.6089) .. controls
      (9.1978,-3.0075) and (8.5462,-2.7067) .. (7.5938,-2.7067) .. controls
      (6.0149,-2.7067) and (4.9623,-3.6089) .. (4.9623,-6.5663) .. controls
      (4.9623,-9.5487) and (5.9397,-10.7015) .. (7.6439,-10.7015) .. controls
      (8.5462,-10.7015) and (9.3231,-10.4008) .. (10.1752,-9.7492) --
      (11.8794,-12.1050) .. controls (10.6013,-13.1827) and (9.1727,-13.7340) ..
      (7.3181,-13.7340) -- cycle;
    \path[fill] (21.3278,-13.7340) .. controls (19.7489,-13.7340) and
      (18.5710,-13.1075) .. (17.4933,-11.8794) -- (17.4933,-18.9971) --
      (13.5335,-18.5961) -- (13.5335,0.0000) -- (17.4933,0.0000) --
      (17.4933,-9.1226) .. controls (18.1700,-10.2003) and (18.9219,-10.8268) ..
      (19.7991,-10.8268) .. controls (20.5509,-10.8268) and (21.0522,-10.4509) ..
      (21.0522,-9.0474) -- (21.0522,0.0000) -- (25.0120,0.0000) -- (25.0120,-9.7241)
      .. controls (25.0120,-12.2554) and (23.6085,-13.7340) .. (21.3278,-13.7340) --
      cycle;
    \path[fill] (39.6232,-6.9171) .. controls (39.6232,-11.2278) and
      (37.2924,-13.7340) .. (33.4830,-13.7340) .. controls (29.4480,-13.7340) and
      (27.2676,-10.5762) .. (27.2676,-6.5913) .. controls (27.2676,-2.4310) and
      (29.5232,0.4261) .. (33.9591,0.4261) .. controls (36.1145,0.4261) and
      (37.8187,-0.3759) .. (39.1470,-1.4285) -- (37.5180,-3.6340) .. controls
      (36.3651,-2.8320) and (35.4127,-2.4561) .. (34.3351,-2.4561) .. controls
      (32.7060,-2.4561) and (31.5782,-3.1077) .. (31.3276,-5.4886) --
      (39.5480,-5.4886) .. controls (39.5981,-5.8896) and (39.6232,-6.4911) ..
      (39.6232,-6.9171) -- cycle(35.7386,-7.8695) -- (31.3026,-7.8695) .. controls
      (31.5031,-10.2755) and (32.2549,-11.1025) .. (33.5832,-11.1025) .. controls
      (35.1621,-11.1025) and (35.7135,-9.8494) .. (35.7386,-8.0449) -- cycle;
    \path[fill] (49.0967,-13.6839) .. controls (47.5679,-13.6839) and
      (46.2646,-12.5812) .. (45.6631,-10.7266) -- (45.3123,-13.3080) --
      (41.8788,-13.3080) -- (41.8788,0.0000) -- (45.8386,0.0000) --
      (45.8386,-6.6916) .. controls (46.2897,-8.6715) and (46.9664,-9.8494) ..
      (48.5954,-9.8494) .. controls (49.0215,-9.8494) and (49.3723,-9.7742) ..
      (49.7984,-9.6740) -- (50.4249,-13.5085) .. controls (49.9738,-13.6338) and
      (49.5979,-13.6839) .. (49.0967,-13.6839) -- cycle;
    \path[fill] (63.3069,-6.9171) .. controls (63.3069,-11.2278) and
      (60.9761,-13.7340) .. (57.1666,-13.7340) .. controls (53.1317,-13.7340) and
      (50.9512,-10.5762) .. (50.9512,-6.5913) .. controls (50.9512,-2.4310) and
      (53.2068,0.4261) .. (57.6428,0.4261) .. controls (59.7982,0.4261) and
      (61.5024,-0.3759) .. (62.8307,-1.4285) -- (61.2016,-3.6340) .. controls
      (60.0488,-2.8320) and (59.0964,-2.4561) .. (58.0188,-2.4561) .. controls
      (56.3897,-2.4561) and (55.2619,-3.1077) .. (55.0113,-5.4886) --
      (63.2317,-5.4886) .. controls (63.2818,-5.8896) and (63.3069,-6.4911) ..
      (63.3069,-6.9171) -- cycle(59.4222,-7.8695) -- (54.9862,-7.8695) .. controls
      (55.1867,-10.2755) and (55.9386,-11.1025) .. (57.2669,-11.1025) .. controls
      (58.8458,-11.1025) and (59.3972,-9.8494) .. (59.4222,-8.0449) -- cycle;
    \path[fill] (73.3568,-13.7340) .. controls (71.6776,-13.7340) and
      (70.3994,-13.0323) .. (69.2967,-11.7040) -- (68.9960,-13.3080) --
      (65.5625,-13.3080) -- (65.5625,0.0000) -- (69.5223,0.0000) --
      (69.5223,-9.0975) .. controls (70.1989,-10.2003) and (70.9508,-10.8268) ..
      (71.8280,-10.8268) .. controls (72.6049,-10.8268) and (73.0811,-10.4509) ..
      (73.0811,-9.0474) -- (73.0811,0.0000) -- (77.0409,0.0000) -- (77.0409,-9.7241)
      .. controls (77.0409,-12.2554) and (75.6625,-13.7340) .. (73.3568,-13.7340) --
      cycle;
    \path[fill] (83.9831,-19.0221) -- (80.0233,-18.5961) -- (80.0233,0.0000) --
      (83.9831,0.0000) -- cycle(92.2035,-13.3080) -- (88.1685,-13.3080) --
      (84.1084,-7.2680) -- (88.0682,0.0000) -- (92.5293,0.0000) -- (88.1685,-7.4685)
      -- cycle;
    \path[fill] (99.2459,-13.7340) .. controls (95.1859,-13.7340) and
      (92.7298,-10.9271) .. (92.7298,-6.6665) .. controls (92.7298,-2.1804) and
      (95.2109,0.4261) .. (99.2459,0.4261) .. controls (103.3060,0.4261) and
      (105.7621,-2.3809) .. (105.7621,-6.6415) .. controls (105.7621,-11.1276) and
      (103.3060,-13.7340) .. (99.2459,-13.7340) -- cycle(99.2459,-10.8268) ..
      controls (100.8499,-10.8268) and (101.6519,-9.5988) .. (101.6519,-6.6415) ..
      controls (101.6519,-3.7593) and (100.8499,-2.4811) .. (99.2459,-2.4811) ..
      controls (97.6419,-2.4811) and (96.8400,-3.7092) .. (96.8400,-6.6665) ..
      controls (96.8400,-9.5487) and (97.6419,-10.8268) .. (99.2459,-10.8268) --
      cycle;
    \path[fill] (118.8946,-13.3080) -- (114.8596,-13.3080) -- (112.4035,-3.0075) --
      (110.0477,-13.3080) -- (105.7370,-13.3080) -- (110.0226,0.0000) --
      (114.7092,0.0000) -- cycle;
  \end{scope}
  \begin{scope}[cm={{1.0,0.0,0.0,-1.0,(242.952,73.5514)}},fill=c1a2548,nonzero rule]
    \path[fill] (8.5712,-3.1328) .. controls (8.0449,-2.8320) and (7.5938,-2.7067)
      .. (7.1427,-2.7067) .. controls (6.3156,-2.7067) and (5.8896,-3.1578) ..
      (5.8896,-4.4360) -- (5.8896,-10.5511) -- (8.5211,-10.5511) --
      (8.9472,-13.3080) -- (5.8896,-13.3080) -- (5.8896,-16.6412) --
      (1.9298,-16.1901) -- (1.9298,-13.3080) -- (0.0501,-13.3080) --
      (0.0501,-10.5511) -- (1.9298,-10.5511) -- (1.9298,-4.3859) .. controls
      (1.9298,-1.2531) and (3.3583,0.4010) .. (6.2906,0.4261) .. controls
      (7.4936,0.4261) and (8.8970,0.0752) .. (9.8995,-0.6266) -- cycle;
    \path[fill] (22.5810,-6.9171) .. controls (22.5810,-11.2278) and
      (20.2502,-13.7340) .. (16.4407,-13.7340) .. controls (12.4057,-13.7340) and
      (10.2253,-10.5762) .. (10.2253,-6.5913) .. controls (10.2253,-2.4310) and
      (12.4809,0.4261) .. (16.9169,0.4261) .. controls (19.0723,0.4261) and
      (20.7765,-0.3759) .. (22.1048,-1.4285) -- (20.4757,-3.6340) .. controls
      (19.3229,-2.8320) and (18.3705,-2.4561) .. (17.2928,-2.4561) .. controls
      (15.6638,-2.4561) and (14.5360,-3.1077) .. (14.2854,-5.4886) --
      (22.5058,-5.4886) .. controls (22.5559,-5.8896) and (22.5810,-6.4911) ..
      (22.5810,-6.9171) -- cycle(18.6963,-7.8695) -- (14.2603,-7.8695) .. controls
      (14.4608,-10.2755) and (15.2127,-11.1025) .. (16.5410,-11.1025) .. controls
      (18.1199,-11.1025) and (18.6713,-9.8494) .. (18.6963,-8.0449) -- cycle;
    \path[fill] (28.3202,0.4261) .. controls (29.2976,0.4261) and (30.1497,0.2256)
      .. (30.7261,-0.0251) -- (29.9743,-2.8320) .. controls (29.7988,-2.7568) and
      (29.5733,-2.7067) .. (29.3227,-2.7067) .. controls (28.8465,-2.7067) and
      (28.6209,-2.9824) .. (28.6209,-3.5338) -- (28.6209,-19.0221) --
      (24.6611,-18.5961) -- (24.6611,-3.3834) .. controls (24.6611,-0.9524) and
      (26.0145,0.4261) .. (28.3202,0.4261) -- cycle;
    \path[fill] (43.6582,-6.9171) .. controls (43.6582,-11.2278) and
      (41.3274,-13.7340) .. (37.5180,-13.7340) .. controls (33.4830,-13.7340) and
      (31.3026,-10.5762) .. (31.3026,-6.5913) .. controls (31.3026,-2.4310) and
      (33.5582,0.4261) .. (37.9941,0.4261) .. controls (40.1495,0.4261) and
      (41.8537,-0.3759) .. (43.1820,-1.4285) -- (41.5530,-3.6340) .. controls
      (40.4001,-2.8320) and (39.4477,-2.4561) .. (38.3701,-2.4561) .. controls
      (36.7410,-2.4561) and (35.6132,-3.1077) .. (35.3626,-5.4886) --
      (43.5830,-5.4886) .. controls (43.6331,-5.8896) and (43.6582,-6.4911) ..
      (43.6582,-6.9171) -- cycle(39.7736,-7.8695) -- (35.3376,-7.8695) .. controls
      (35.5381,-10.2755) and (36.2899,-11.1025) .. (37.6182,-11.1025) .. controls
      (39.1971,-11.1025) and (39.7485,-9.8494) .. (39.7736,-8.0449) -- cycle;
    \path[fill] (50.6254,-13.7340) .. controls (47.2671,-13.7340) and
      (45.1870,-11.9546) .. (45.1870,-9.6740) .. controls (45.1870,-7.6189) and
      (46.4902,-6.2655) .. (49.1217,-5.5137) .. controls (51.5277,-4.8370) and
      (51.9287,-4.5613) .. (51.9287,-3.6591) .. controls (51.9287,-2.8571) and
      (51.2019,-2.4060) .. (49.9989,-2.4060) .. controls (48.6957,-2.4060) and
      (47.4676,-2.9323) .. (46.4651,-3.7092) -- (44.5354,-1.5539) .. controls
      (45.8386,-0.3759) and (47.7934,0.4261) .. (50.0991,0.4261) .. controls
      (53.4073,0.4261) and (56.0138,-1.2030) .. (56.0138,-3.9598) .. controls
      (56.0138,-6.3407) and (54.5351,-7.4434) .. (51.9036,-8.1953) .. controls
      (49.5227,-8.8970) and (49.1718,-9.1978) .. (49.1718,-9.8995) .. controls
      (49.1718,-10.5010) and (49.6981,-10.9020) .. (50.7758,-10.9020) .. controls
      (51.9287,-10.9020) and (53.0314,-10.5261) .. (54.0590,-9.8745) --
      (55.5126,-12.1050) .. controls (54.2845,-13.1075) and (52.5552,-13.7340) ..
      (50.6254,-13.7340) -- cycle;
    \path[fill] (63.8081,-13.7340) .. controls (59.8232,-13.7340) and
      (57.2920,-10.7767) .. (57.2920,-6.5412) .. controls (57.2920,-2.3308) and
      (59.7982,0.4261) .. (63.8833,0.4261) .. controls (65.7128,0.4261) and
      (67.1414,-0.1754) .. (68.3694,-1.1529) -- (66.6401,-3.6089) .. controls
      (65.6878,-3.0075) and (65.0362,-2.7067) .. (64.0838,-2.7067) .. controls
      (62.5049,-2.7067) and (61.4523,-3.6089) .. (61.4523,-6.5663) .. controls
      (61.4523,-9.5487) and (62.4297,-10.7015) .. (64.1339,-10.7015) .. controls
      (65.0362,-10.7015) and (65.8131,-10.4008) .. (66.6652,-9.7492) --
      (68.3694,-12.1050) .. controls (67.0912,-13.1827) and (65.6627,-13.7340) ..
      (63.8081,-13.7340) -- cycle;
    \path[fill] (75.5597,-13.7340) .. controls (71.4997,-13.7340) and
      (69.0436,-10.9271) .. (69.0436,-6.6665) .. controls (69.0436,-2.1804) and
      (71.5247,0.4261) .. (75.5597,0.4261) .. controls (79.6198,0.4261) and
      (82.0759,-2.3809) .. (82.0759,-6.6415) .. controls (82.0759,-11.1276) and
      (79.6198,-13.7340) .. (75.5597,-13.7340) -- cycle(75.5597,-10.8268) ..
      controls (77.1637,-10.8268) and (77.9657,-9.5988) .. (77.9657,-6.6415) ..
      controls (77.9657,-3.7593) and (77.1637,-2.4811) .. (75.5597,-2.4811) ..
      controls (73.9558,-2.4811) and (73.1538,-3.7092) .. (73.1538,-6.6665) ..
      controls (73.1538,-9.5487) and (73.9558,-10.8268) .. (75.5597,-10.8268) --
      cycle;
    \path[fill] (91.9253,-13.7340) .. controls (90.5970,-13.7340) and
      (89.1935,-13.2077) .. (88.0908,-11.8293) -- (87.8903,-13.3080) --
      (84.4066,-13.3080) -- (84.4066,5.5638) -- (88.3665,5.1377) --
      (88.3665,-0.9524) .. controls (89.1935,-0.0251) and (90.2962,0.4261) ..
      (91.5995,0.4261) .. controls (94.8826,0.4261) and (96.8876,-2.5814) ..
      (96.8876,-6.6916) .. controls (96.8876,-11.0023) and (95.3588,-13.7340) ..
      (91.9253,-13.7340) -- cycle(90.3714,-2.4811) .. controls (89.5444,-2.4811) and
      (88.9178,-2.8571) .. (88.3665,-3.6591) -- (88.3665,-9.2730) .. controls
      (88.9429,-10.2504) and (89.7449,-10.8268) .. (90.6471,-10.8268) .. controls
      (91.9754,-10.8268) and (92.7774,-9.9497) .. (92.7774,-6.6415) .. controls
      (92.7774,-3.6591) and (91.8501,-2.4811) .. (90.3714,-2.4811) -- cycle;
    \path[fill] (110.9975,-6.9171) .. controls (110.9975,-11.2278) and
      (108.6668,-13.7340) .. (104.8573,-13.7340) .. controls (100.8223,-13.7340) and
      (98.6419,-10.5762) .. (98.6419,-6.5913) .. controls (98.6419,-2.4310) and
      (100.8975,0.4261) .. (105.3335,0.4261) .. controls (107.4888,0.4261) and
      (109.1931,-0.3759) .. (110.5214,-1.4285) -- (108.8923,-3.6340) .. controls
      (107.7395,-2.8320) and (106.7871,-2.4561) .. (105.7094,-2.4561) .. controls
      (104.0804,-2.4561) and (102.9526,-3.1077) .. (102.7020,-5.4886) --
      (110.9223,-5.4886) .. controls (110.9724,-5.8896) and (110.9975,-6.4911) ..
      (110.9975,-6.9171) -- cycle(107.1129,-7.8695) -- (102.6769,-7.8695) ..
      controls (102.8774,-10.2755) and (103.6293,-11.1025) .. (104.9576,-11.1025) ..
      controls (106.5365,-11.1025) and (107.0878,-9.8494) .. (107.1129,-8.0449) --
      cycle;
  \end{scope}
  \begin{scope}[cm={{1.0,0.0,0.0,-1.0,(242.952,46.4843)}},fill=c1a2548,nonzero rule]
    \path[fill] (12.0799,-3.8596) -- (12.0799,-9.0224) .. controls
      (12.0799,-12.1050) and (10.4258,-13.7340) .. (6.5663,-13.7340) .. controls
      (5.0625,-13.7340) and (3.2330,-13.3832) .. (1.5539,-12.7566) --
      (2.4561,-10.1502) .. controls (3.7844,-10.6013) and (5.0876,-10.8519) ..
      (5.9397,-10.8519) .. controls (7.5688,-10.8519) and (8.1953,-10.3757) ..
      (8.1953,-8.7968) -- (8.1953,-8.2204) -- (6.8420,-8.2204) .. controls
      (2.8320,-8.2204) and (0.6015,-6.6415) .. (0.6015,-3.7343) .. controls
      (0.6015,-1.3032) and (2.2807,0.4261) .. (4.9372,0.4261) .. controls
      (6.5161,0.4261) and (7.9948,-0.1002) .. (8.9472,-1.5539) .. controls
      (9.5737,-0.2506) and (10.6013,0.2256) .. (12.1551,0.3509) -- (12.9822,-2.2305)
      .. controls (12.3556,-2.4561) and (12.0799,-2.8320) .. (12.0799,-3.8596) --
      cycle(6.0901,-2.4060) .. controls (5.1127,-2.4060) and (4.5613,-3.0325) ..
      (4.5613,-4.0851) .. controls (4.5613,-5.4134) and (5.4134,-6.0400) ..
      (7.2179,-6.0400) -- (8.1953,-6.0400) -- (8.1953,-3.6591) .. controls
      (7.7191,-2.8821) and (6.9923,-2.4060) .. (6.0901,-2.4060) -- cycle;
    \path[fill] (22.4807,-13.6839) .. controls (20.9519,-13.6839) and
      (19.6487,-12.5812) .. (19.0472,-10.7266) -- (18.6963,-13.3080) --
      (15.2628,-13.3080) -- (15.2628,0.0000) -- (19.2226,0.0000) --
      (19.2226,-6.6916) .. controls (19.6737,-8.6715) and (20.3504,-9.8494) ..
      (21.9795,-9.8494) .. controls (22.4055,-9.8494) and (22.7564,-9.7742) ..
      (23.1824,-9.6740) -- (23.8090,-13.5085) .. controls (23.3579,-13.6338) and
      (22.9819,-13.6839) .. (22.4807,-13.6839) -- cycle;
    \path[fill] (32.5306,-13.6839) .. controls (31.0018,-13.6839) and
      (29.6986,-12.5812) .. (29.0971,-10.7266) -- (28.7462,-13.3080) --
      (25.3127,-13.3080) -- (25.3127,0.0000) -- (29.2725,0.0000) --
      (29.2725,-6.6916) .. controls (29.7237,-8.6715) and (30.4003,-9.8494) ..
      (32.0294,-9.8494) .. controls (32.4554,-9.8494) and (32.8063,-9.7742) ..
      (33.2323,-9.6740) -- (33.8589,-13.5085) .. controls (33.4078,-13.6338) and
      (33.0318,-13.6839) .. (32.5306,-13.6839) -- cycle;
    \path[fill] (45.4125,-3.8596) -- (45.4125,-9.0224) .. controls
      (45.4125,-12.1050) and (43.7584,-13.7340) .. (39.8989,-13.7340) .. controls
      (38.3951,-13.7340) and (36.5656,-13.3832) .. (34.8864,-12.7566) --
      (35.7887,-10.1502) .. controls (37.1170,-10.6013) and (38.4202,-10.8519) ..
      (39.2723,-10.8519) .. controls (40.9013,-10.8519) and (41.5279,-10.3757) ..
      (41.5279,-8.7968) -- (41.5279,-8.2204) -- (40.1745,-8.2204) .. controls
      (36.1646,-8.2204) and (33.9341,-6.6415) .. (33.9341,-3.7343) .. controls
      (33.9341,-1.3032) and (35.6132,0.4261) .. (38.2698,0.4261) .. controls
      (39.8487,0.4261) and (41.3274,-0.1002) .. (42.2798,-1.5539) .. controls
      (42.9063,-0.2506) and (43.9339,0.2256) .. (45.4877,0.3509) --
      (46.3148,-2.2305) .. controls (45.6882,-2.4561) and (45.4125,-2.8320) ..
      (45.4125,-3.8596) -- cycle(39.4227,-2.4060) .. controls (38.4453,-2.4060) and
      (37.8939,-3.0325) .. (37.8939,-4.0851) .. controls (37.8939,-5.4134) and
      (38.7460,-6.0400) .. (40.5505,-6.0400) -- (41.5279,-6.0400) --
      (41.5279,-3.6591) .. controls (41.0517,-2.8821) and (40.3249,-2.4060) ..
      (39.4227,-2.4060) -- cycle;
    \path[fill] (59.9485,-13.3080) -- (55.8634,-13.3080) -- (53.2570,-2.5313) --
      (50.8761,-13.3080) -- (46.6656,-13.3080) -- (50.7257,0.0000) --
      (52.0790,0.0000) .. controls (51.3522,1.7042) and (50.3999,2.4561) ..
      (47.7934,2.7819) -- (48.2195,5.5638) .. controls (52.4049,5.3382) and
      (54.6604,3.3834) .. (55.7130,0.0251) -- cycle;
  \end{scope}
\end{scope}
\end{tikzpicture}
}

\newcommand{\ctafootlogobig}{
\begin{tikzpicture}[y=0.80pt, x=0.80pt, yscale=-1.000000, xscale=1.000000, inner sep=0pt, outer sep=0pt]
\begin{scope}[cm={{1.33333,0.0,0.0,-1.33333,(0.0,191.33867)}}]
      \begin{scope}[shift={(192.3171,63.5241)}]
        \path[fill=c1a2548,nonzero rule] (0.0000,0.0000) -- (0.0000,25.7760) .. controls
          (0.0000,42.8930) and (-6.6150,47.7130) .. (-8.6390,49.2880) .. controls
          (-9.9970,50.3440) and (-14.9690,53.4940) .. (-22.8250,53.7020) .. controls
          (-32.1710,53.9490) and (-37.6600,52.6170) .. (-41.9440,49.8580) --
          (-41.9440,37.6880) .. controls (-40.9510,37.9060) and (-32.1770,40.0830) ..
          (-27.0300,39.6320) .. controls (-22.8860,39.2690) and (-21.4440,37.7240) ..
          (-20.6500,36.6770) .. controls (-19.5370,35.2080) and (-19.0910,33.4580) ..
          (-18.9150,31.6440) .. controls (-18.8410,30.8720) and (-18.7570,24.1530) ..
          (-18.7570,24.1530) .. controls (-18.7570,24.1530) and (-27.4430,24.2070) ..
          (-28.5410,24.1530) .. controls (-36.7640,24.1530) and (-41.6570,22.0480) ..
          (-44.2810,20.1740) .. controls (-51.5070,15.0110) and (-50.5710,2.2910) ..
          (-50.4060,0.4020) .. controls (-49.6020,-8.7930) and (-42.9210,-15.5930) ..
          (-37.2990,-16.9510) .. controls (-24.5610,-20.0260) and (-18.3410,-13.6740) ..
          (-16.9950,-11.4190) .. controls (-15.8790,-13.3480) and (-14.8480,-15.5580) ..
          (-13.3600,-17.1190) -- (3.2160,-17.1190) .. controls (0.2120,-5.0150) and
          (0.0000,-3.1100) .. (0.0000,0.0000)(-22.3120,-3.1550) .. controls
          (-23.6590,-3.9540) and (-25.7180,-4.1740) .. (-26.8550,-4.1740) .. controls
          (-29.5990,-4.1740) and (-31.0730,-2.7450) .. (-31.5330,-1.4570) .. controls
          (-31.9750,-0.2190) and (-32.1780,1.0500) .. (-32.1780,2.3590) .. controls
          (-32.1780,4.2770) and (-32.2540,7.0990) .. (-31.2180,8.6360) .. controls
          (-30.5060,9.6930) and (-29.4700,10.3590) .. (-28.3290,10.8650) .. controls
          (-24.9030,12.3840) and (-18.6880,12.2750) .. (-18.3580,12.2750) --
          (-18.3580,2.5920) .. controls (-18.3360,1.3480) and (-18.7450,-1.0390) ..
          (-22.3120,-3.1550);
      \end{scope}
      \begin{scope}[shift={(131.7675,61.2889)}]
        \path[fill=c1a2548,nonzero rule] (0.0000,0.0000) .. controls (-2.0660,0.0900)
          and (-3.7600,0.8460) .. (-4.9180,2.6210) .. controls (-6.0920,4.4200) and
          (-6.5940,6.4670) .. (-6.6050,8.5410) .. controls (-6.6630,18.6220) and
          (-6.6050,39.5120) .. (-6.6050,39.5120) -- (14.3300,39.5120) --
          (14.3300,52.6340) .. controls (14.3300,52.6340) and (-4.2520,52.6250) ..
          (-6.6050,52.6420) -- (-6.6050,72.7780) .. controls (-13.0000,71.4870) and
          (-19.1440,69.6470) .. (-25.0930,66.9990) -- (-25.0930,52.6330) --
          (-33.3180,52.6330) -- (-33.3180,39.4920) -- (-25.0930,39.4920) .. controls
          (-25.0930,39.4920) and (-25.0850,18.8830) .. (-25.0930,9.0770) .. controls
          (-25.0930,-0.9160) and (-23.2810,-5.3540) .. (-21.7170,-7.7790) .. controls
          (-20.2920,-9.9870) and (-15.7380,-15.2430) .. (-7.2250,-15.2430) .. controls
          (-0.6260,-15.2430) and (3.0200,-13.9570) .. (4.9950,-13.1980) .. controls
          (5.9950,-12.8140) and (10.1510,-10.8240) .. (10.1510,-10.8240) --
          (5.6640,1.5330) .. controls (5.6640,1.5330) and (1.7860,0.0000) ..
          (0.0000,0.0000);
      \end{scope}
      \begin{scope}[shift={(86.1793,61.1932)}]
        \path[fill=c1a2548,nonzero rule] (0.0000,0.0000) .. controls (-6.0750,0.0000)
          and (-8.5050,2.8530) .. (-9.8730,4.5550) .. controls (-12.3980,7.6950) and
          (-14.0750,12.5210) .. (-14.1900,16.9590) .. controls (-14.4020,25.2080) and
          (-13.3750,33.3110) .. (-7.7430,37.9480) .. controls (-4.8390,40.3380) and
          (-1.5560,40.5400) .. (-0.1450,40.5900) .. controls (3.5740,40.7220) and
          (7.3130,39.5010) .. (7.8700,39.3230) -- (7.8700,53.1840) .. controls
          (-2.3600,58.5410) and (-16.1150,53.5050) .. (-21.8160,47.6800) .. controls
          (-31.6710,37.6090) and (-32.5040,25.1570) .. (-32.6450,20.9940) .. controls
          (-33.2550,2.9480) and (-25.9000,-6.0760) .. (-20.5130,-9.9860) .. controls
          (-15.9710,-13.2830) and (-10.0620,-15.3750) .. (-2.9690,-15.1080) .. controls
          (10.6190,-14.5960) and (18.6930,-8.6470) .. (19.2590,-8.2810) .. controls
          (17.6960,-4.0720) and (16.6460,0.1990) .. (15.7460,4.5580) .. controls
          (8.7970,1.4720) and (2.9610,0.0000) .. (0.0000,0.0000);
      \end{scope}
      \begin{scope}[shift={(215.476,41.5134)}]
        \path[fill=c1a2548,nonzero rule] (0.0000,0.0000) .. controls (0.0000,0.0000) and
          (-56.5230,-33.3760) .. (-127.5790,-24.5620) .. controls (-152.4930,-21.4720)
          and (-184.2820,-11.5260) .. (-197.4900,12.6080) .. controls
          (-215.3470,45.2330) and (-177.3800,76.3110) .. (-172.5420,80.0850) --
          (-172.5420,81.0980) .. controls (-173.1350,80.7310) and (-217.0330,53.4370) ..
          (-214.9300,16.1320) .. controls (-213.1830,-14.8620) and (-182.1460,-30.5340)
          .. (-155.2450,-36.9990) .. controls (-135.1340,-41.8320) and
          (-113.8200,-41.9030) .. (-93.4050,-39.2190) .. controls (-31.6880,-31.1040)
          and (1.0040,-0.4750) .. (1.0040,-0.4750) -- cycle;
      \end{scope}
\end{scope}
\end{tikzpicture}
}

% render the logo for the footer only once (to speed up):
\newsavebox{\ctafootlogo}
\savebox{\ctafootlogo}{
  \resizebox{0.7cm}{!}{\ctafootlogobig}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% chapter, section headings - nicer, maybe for the future
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%\RequirePackage[Bjornstrup]{fncychap}
%
%\renewcommand\DOCH{%
  %\settowidth{\py}{\CNoV\thechapter}
  %\addtolength{\py}{-10pt}
  %\fboxsep=0pt%
  %\colorbox{ctalightblue}{\rule{0pt}{40pt}\parbox[b]{\textwidth}{\hfill}}%
  %\kern-\py\raise20pt%
  %\hbox{\color{ctablue}\CNoV\thechapter}\\%
%}
%
%\renewcommand\DOTI[1]{%
  %\nointerlineskip\raggedright%
  %\fboxsep=\myhi%
  %\vskip-1ex%
  %\colorbox{ctalightblue}{\parbox[t]{\mylen}{\CTV\FmTi{#1}}}\par\nobreak%
  %\vskip 40pt%
%}
%
%\renewcommand\DOTIS[1]{%
  %\fboxsep=0pt
  %\colorbox{ctalightblue}{\rule{0pt}{40pt}\parbox[b]{\textwidth}{\hfill}}\\%
  %\nointerlineskip\raggedright%
  %\fboxsep=\myhi%
  %\colorbox{ctalightblue}{\parbox[t]{\mylen}{\CTV\FmTi{#1}}}\par\nobreak%
  %\vskip 40pt%
 %}
%
%%\usepackage[Bjornstrup]{fncychap}
%
%\ChTitleVar{\raggedleft\huge\sffamily\bfseries\color{ctablue}\thechapter\ }	

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% chapter, section headings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%\renewcommand\chapter{\FloatBarrier\if@openright\cleardoublepage\else\clearpage\fi\vspace*{0.85cm}\@startsection 
%{chapter}
%{0}
%{\z@}%               
%%{\vspace*{1cm}}
%{-\baselineskip}
%{7.6ex \@plus.2ex}%
%{\FloatBarrier\normalfont\huge\bfseries\ctablue}}


\renewcommand{\section}{\@startsection
{section}%                   % the name
{1}%                         % the level
{0mm}%                       % the indent
{-\baselineskip}%            % the before skip
{0.5\baselineskip}%          % the after skip
{\normalfont\Large\bfseries\ctablue}} % the style

\renewcommand{\subsection}{\@startsection
{subsection}%                   % the name
{2}%                         % the level
{0mm}%                       % the indent
{-\baselineskip}%            % the before skip
{0.4\baselineskip}%          % the after skip
{\normalfont\Large\ctablue}} % the style

\renewcommand{\subsubsection}{\@startsection
{subsubsection}%                   % the name
{3}%                         % the level
{0mm}%                       % the indent
{-\baselineskip}%            % the before skip
{0.3\baselineskip}%          % the after skip
{\normalfont\large\ctablue}} % the style


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% page length
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\parindent}{0in}
\setlength{\parskip}{1em}
\setlength{\textheight}{24.6cm}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Header & Footer
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\project{}


\fancypagestyle{firststyle}{
\renewcommand{\headrulewidth}{0pt}
\fancyhf{}
\fancyfoot[L]{\setlength{\unitlength}{1mm} 
		\begin{picture}(0,0)
				\put(-1.3,-2){\usebox{\ctafootlogo}}
		\end{picture}
		\hspace{7mm}\scriptsize{\@project}
		}
\fancyfoot[R] {\scriptsize{\@acronym\ $|$\ v. \@version\ $|$\ \@realdate}}
\fancyfoot[C] {\scriptsize{Page \thepage\ of \pageref{LastPage}}}
}


\fancypagestyle{plain}{
\fancyhf{}
\fancyhead[L]{{\scriptsize\nouppercase\leftmark}}
\fancyhead[R]{{\scriptsize\nouppercase\rightmark}}
\renewcommand{\footrulewidth}{0.2pt}
\fancyfoot[L]{\setlength{\unitlength}{1mm} 
		\begin{picture}(0,0)
				\put(-1.3,-2){\usebox{\ctafootlogo}}
		\end{picture}
		\hspace{7mm}\scriptsize{\@project}
		}
\fancyfoot[R] {\scriptsize{\@acronym\ $|$\ v.\@version\ $|$\ \@realdate}}
\fancyfoot[C] {\scriptsize{Page \thepage\ of \pageref{LastPage}}}
}


\fancyhf{}
\pagestyle{fancy}

\fancyhead[L]{{\scriptsize\nouppercase\leftmark}}
\fancyhead[R]{{\scriptsize\nouppercase\rightmark}}

\renewcommand{\footrulewidth}{0.2pt}

\fancyfoot[L]{\setlength{\unitlength}{1mm} 
		\begin{picture}(0,0)
				\put(-1.3,-2){\usebox{\ctafootlogo}}
		\end{picture}
		\hspace{7mm}\scriptsize{\@project}
		}
\fancyfoot[R] {\scriptsize{\@acronym\ $|$\ v.\@version\ $|$\ \@realdate}}
\fancyfoot[C] {\scriptsize{Page \thepage\ of \pageref{LastPage}}}		

	

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Titlepage
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\maketitle}{%
\newpage

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\definecolor{firstcolor}{RGB}{102,140,179} % background color of first page
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\thispagestyle{firststyle}

\vspace*{0.1cm}	


\begin{center}
				\resizebox{7cm}{!}{\ctalogo}
\end{center}

\vspace{2cm}	


\begin{center}
\hrule
\vspace{2mm}
	\ctablue{\Huge{\textbf{\@title}}}
\vspace{4mm}
\hrule
\end{center}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% a picture or logos
%\vfill
%\begin{center}
	%\includegraphics[trim=0cm 4cm 0cm 0cm, clip= true, width=\textwidth]{CTA-concept1.png}
%\end{center}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\color{ctadarkgray}	



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Document Properties Page
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% \newpage

\pagestyle{fancy}
\markboth{Document Properties}{} 


\begingroup
\renewcommand{\arraystretch}{1.5}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Authors

\begin{center}
\renewcommand{\arraystretch}{1.5}
\resizebox{\textwidth}{!}{
  \begin{tabular}{|p{0.13\textwidth}|p{0.2\textwidth}|p{0.15\textwidth}|p{0.3\textwidth}|}
  \hline 
  \cellcolor{ctalightblue} &  \cellcolor{ctalightblue} Name &  \cellcolor{ctalightblue} Date & \cellcolor{ctalightblue} Signature \\
  \hline
  \cellcolor{ctalightblue} Prepared by & \@authors \hfill &  &  \\
  \hline
  \cellcolor{ctalightblue} Approved by & \@approvedby \hfill &  &  \\
  \hline
  \cellcolor{ctalightblue} Released by & \@distribution \hfill &  & \\
  \hline
  \end{tabular}
}
\end{center}

% \begin{center}
% \resizebox{\textwidth}{!}{
% 	\begin{tabular}{|p{0.04\textwidth} !{\color{white}\vrule} p{0.12\textwidth}!{\color{white}\vrule} p{0.3\textwidth}!{\color{white}\vrule} p{0.11\textwidth}!{\color{white}\vrule} p{0.07\textwidth} p{0.25\textwidth}|}
% 	\hline 
% 	\multicolumn{6}{|l|}{\cellcolor{ctalightblue} \textbf{Authors:} }\\
% 	\hline
% 	\multicolumn{6}{|l|}{\@authors \hfill } \\
% 	 & & & & & \\[1pt]
% 	\hline
% 	\end{tabular}
% }	
% \end{center}

\vspace{0.5cm}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Keywords	
%\begin{center}
%\resizebox{\textwidth}{!}{
%	\begin{tabular}{|p{0.04\textwidth} !{\color{white}\vrule} p{0.12\textwidth}!{\color{white}\vrule} p{0.3\textwidth}!{\color{white}\vrule} p{0.11\textwidth}!{\color{white}\vrule} p{0.07\textwidth} p{0.25\textwidth}|}
%	\hline 
%	\multicolumn{6}{|l|}{\cellcolor{ctalightblue} \textbf{Keywords:} }\\
%	\hline
%	\multicolumn{6}{|l|}{\@keywords \hfill } \\
%	 & & & & & \\[1pt]
%	\hline
%	\end{tabular}
%}	
%\end{center}
%
%\vspace{0.5cm}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% This Version
\newpage
\begin{center}
\resizebox{\textwidth}{!}{
	\begin{tabular}{|p{0.05\textwidth}|p{0.04\textwidth}|p{0.13\textwidth}|p{0.3\textwidth}|p{0.13\textwidth}|p{0.2\textwidth}|}
	\hline 
	\multicolumn{6}{|l|}{\cellcolor{ctalightblue} \textbf{This version:} }\\
	\hline
	\cellcolor{ctalightblue}Issue & \cellcolor{ctalightblue} Rev. & \cellcolor{ctalightblue} Created & \cellcolor{ctalightblue} Comment & \cellcolor{ctalightblue} Ownership & \cellcolor{ctalightblue} Distribution \\
	\hline

  \@version & \@revision & \tabledate\@realdate & \@DocComment & \@ownership & \@distribution \\
  \hline
	
	\end{tabular}
}	
\end{center}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Change log
\begin{center}
\resizebox{\textwidth}{!}{
  \begin{tabular}{|p{0.05\textwidth}|p{0.04\textwidth}|p{0.13\textwidth}|p{0.35\textwidth}|p{0.35\textwidth}|}
  \hline 
  \multicolumn{5}{|l|}{\cellcolor{ctalightblue} \textbf{Change log:} }\\
  \hline
  \cellcolor{ctalightblue}Issue & \cellcolor{ctalightblue} Rev. & \cellcolor{ctalightblue} Created & \cellcolor{ctalightblue} Comment & \cellcolor{ctalightblue} Parts affected \\
  \hline

  \@history
  
  \end{tabular}
} 
\end{center}

\endgroup
	
}


\color{ctadarkgray}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% ToC
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\maketoc}{
\newpage
%\FloatBarrier\if@openright\cleardoublepage\else\clearpage\fi
\color{ctablue}
  \renewcommand{\contentsname}{\ctablue{Table of Contents}}
%	\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
	\setlength\cftparskip{3pt}
	%\setcounter{tocdepth}{3}
    % GMGM - need to decide which depth to show
	\setcounter{tocdepth}{2}
%  \addcontentsline{toc}{chapter}{Table of Contents}
%  \addcontentsline{toc}{section}{Table of Contents}
	\markboth{Table of Contents}{}
	\tableofcontents
	\clearpage

\color{ctadarkgray}	
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% redefine left and rightmark
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\renewcommand{\chaptermark}[1]{\markboth{\thechapter.\ #1}{}}
%\renewcommand{\sectionmark}[1]{\markright{\thesection\ #1}}	


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% pdf metadata
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\AtBeginDocument{
\hypersetup{
    pdftitle={\@shorttitle},    % title
    pdfauthor={\@editor},     % author
    pdfsubject={CTA Technical Design Reports},   % subject of the document
    pdfcreator={CTA TDR template by M-A. Besel},   % creator of the document
    pdfproducer={LaTeX}, % producer of the document
    pdfkeywords={\@keywords}, % list of keywords
		urlcolor     = ctablue, %Colour for external hyperlinks
		linkcolor    = ctablue, %Colour of internal links
		citecolor    = ctablue  %Colour of citations
}
}

0:
    0    0    3     m0      = 0
3:
    0    1    6     m1      = m1
6:
    0 1842    9     m1842   = m1842
9:
    0    7   12     m7      = m7
    0  132   15     m132    = m132
   51   51   18     m51     = 0
    7    0   21     m0      - -1842
    0   51   24     m51     = 1842
    0    0   27     m0      = 0
   52   52   30     m52     = 0
    7    0   33     m0      = -1842
    0   52   36     m52     = 1842
    0    0   39     m0      = 0
   58   58   42     m58     = 0
    7    0   45     m0      = -1842
    0   58   48     m59     = 1842
    0    0   51     m0      = 0
51:
    0    0   54     m1842   = 0
   13    0   57     m0      = -132
57:
    0    0   60     m1842   = -m0 = 132
    0    0   63     m0      = 0
    4    0   66     m0      = -m4 = -1
    0    7   69     m7      = m7 + 1 = 1843
    0    0   72     m0      = 0
  108  108   75     m108    = 0
    7    0   78     m0      = -1843
    0  108   81     m108    = 1843
    0    0   84     m0      = 0
  109  109   87     m109    = 0
    7    0   90     m0      = -1843
    0  109   93     m109    = 1843
    0    0   96     m0      = 0
  115  115   99     m115    = 0
    7    0  102     m0      = -1843
    0  115  105     m115    = 1843
    0    0  108     m0      = 0
108:
    0    0  111     m1843   = 0
   10    0  114     m0      = -7
114:
    0    0  117     m1843   = 7
    0    0  120     m0      =  0
    4    0  123     m0      = -m4
    0    7  126     m7      = m7 + 1 = 1844
    0    0  129     m0      = 0
    0    0 1398     jmp 1398

132:
    4    7  135     m7      = m7` - 1
  150  150  138     m150    = 0
    7    0  141     m0      m0 - m7
    0  150  144     m150    = m7` - 1
    0    0  147     m0      = 0 
 1839 1839  150     m1839   = 0
 m150    0  153     m0      = m0 - m[m7`-1]
    0 1839  156     m1839   = m[m7`-1]
    0    0  159     m0      
    0    0 1839

162:
    0    0  165     m0      = 0
    4    7  168     m7      = m7` - 1 = 1856
  183  183  171     m183    = m183 - m183 = 0
    7    0  174     m0      = m0 - m7 = -1856
    0  183  177     m183    = m7` - 1 = 1856
    0    0  180     m0      = 0
  163  163  183     m163    = m163 - m163 = 0
    0    0  186     m0      = m0 - m1856 = -1
    0  163  189     m163    = m[m7` - 1] = 1
    0    0  192     m0      = 0
    0    0  195     m0      = 0
    4    7  198     m7      = m7` - 2 = 1855
  213  213  201     m213    = m213 - m213 = 0
    7    0  204     m0      = m0 - m7 = -1855
    0  213  207     m213    = m7` - 2 = 1855
    0    0  210     m0      = 0
  193  193  213     m193    = m193 - m193 = 0
    0    0  216     m0      = m0 - m1855 = -1
    0  193  219     m193    = m[m7` - 2] = 1
    0    0  222     m0      = 0
  235  235  225     m235    = m235 - m235 = 0
    0    0  228     m0      = 0
    0  235  231     m235    = m235
    0    0  234     m0      = 0
    0 m235  237     m[m235] = m[m235]

{{{ if m[m7` - 1] == 0 jmp 276
  163    0  243     if m[m7` - 1] >= 0 jmp 243   -> 243
    0    0  249     jmp 249
 243:
    0    0  246     m0      = 0
    0  163  276     m163    = m163 - m0 = 1
    0  163  276     if m[m7` - 1] <= 0 jmp 276
}}}

{{{ while m163 !=0 do --m163
    249:
      193    0  252     m0      = -m[m7` - 2] = -1
        0  235  255     m235    = m235 + m[m7` - 2] = 1

    {{{ if (--m163) == 0 jmp 276
        0    0  258     m0      = 0
        4  163  261     m163    = m163 - 1 = 0
      163    0  267     if (m163 >= 0)   -> 267
        0    0  273
     267:
        0    0  270     m0      = 0
        0  163  276     if (m163 <= 0)   -> 276
    }}}

    273:
        0    0  249     jmp 249
}}}
276:
    0    0  279     m[m277] = m[m277]
    4    7  282     m7      = m7` - 3 = 1854
  297  297  285     m297    = m297 - m297 = 0
    7    0  288     m0      = m0 - m7 = -1854
    0  297  291     m297    = m7` - 3 = 1854
    0    0  294     m0      = 0
  277  277  297     m277    = m277 - m277 = 0
    0    0  300     m0      = m0 - m1854 = -1269
    0  277  303     m277    = m[m7` - 3] = 1269
    0    0  306     m0      = 0
  377  377  309     m377    = m377 - m377 = 0
  277    0  312     m0      = m0 - m277 = -1269
    0  377  315     m377    = m[m7` - 3] = 1269
    0    0  318     m0      = 0
  354  354  321     m354    = m354 - m354 = 0
    7    0  324     m0      = m0 - m7 = -1854
    0  354  327     m354    = m7` - 3 = 1854
    0    0  330     m0      = 0
  355  355  333     m355    = m355 - m355 = 0
    7    0  336     m0      = m0 - m7 = -1854
    0  355  339     m355    = m7` - 3 = 1854
    0    0  342     m0      = 0
  361  361  345     m361    = m361 - m361 = 0
    7    0  348     m0      = m0 - m7 = -1854
    0  361  351     m361    = m7` - 3 = 1854
    0    0  354     m0      = 0
    0    0  357     m[m7` - 3] = 0
  235    0  360     m0      = m0 - m235 = -1
    0    0  363     m[m7` - 3] = m235 = 1 // = m[m7` - 2] ??
    0    0  366     m0      = 0
    4    0  369     m0      = m0 - m4 = -1
    0    7  372     m7      = m7` - 2 = 1855
    0    0  375     m0      = 0
375:
    0    0  277     m0      = 0   -> 1269


378:
    0    0  381     m[m379] = m[m379] - m[m378] = m[m379]
    4    7  384     m7      = m7` - 1 = 1844
  399  399  387     m399    = 0
    7    0  390     m0      = 1 - m7`
    0  399  393     m399    = m7` - 1
    0    0  396     m0      = 0
  379  379  399     m379    = 0
399:
 m399    0  402     m0      = -m[m7` - 1]
    0  379  405     m379    = m[m7` - 1]
    0    0  408     m0      = 0
  421  421  411     m421    = 0
    4    0  414     m0      = -1
    0  421  417     m421    = 1
    0    0  420     m0      = 0
420:
    0    4  423     m[m421] = m[m421]
  436  436  426     m436    = 0
    0    0  429     m0      = 0
    0  436  432     m436    = m436
    0    0  435     m0      = 0
435:
    0    0  438     m0      = 0
  436  436  441     m436    = 0
  379    0  444     m0      = -m379 = -m[m7` - 1]` = -7
    0  436  447     m436    = m379 = m[m7` - 1] = 7

{{{ if m436 == 0 jmp 1296
    0    0  450     m0      = 0
  436    0  456     if m436 >= 0 jmp 456
    0    0  462     jmp 462

 456:
    0    0  459     m0      = 0
    0  436 1296     if m436 <= 0 jmp 1296
}}}
462:
    4  421  465     m421    = m421 - 1 = 1 - 1 = 0
    4  436  468     m436    = m436 - 1 = 6 = m[m7` - 1] - 1

{{{ if m436 == 0 jmp 1296
  436    0  474     if m436 >= 0 jmp 474
    0    0  480     jmp 480

 474:
    0    0  477     m0      = 0
    0  436 1296     if m436 <= 0 jmp 1296
}}}
480:
  493  493  483     m493    = 0
    0    0  486     m0      = 0
    0  493  489     m493    = m493
    0    0  492     m0      = 0
492:
    0    0  495     m0      = 0
  493  493  498     m493    = m493 - m493 = 0
  436    0  501     m0      = -m436 = -6
    0  493  504     m493    = m436 = m[m7` - 1] - 1 = 6
    0    0  507     m0      = 0
  543  543  510     m543    = 0
    7    0  513     m0      = -m7 = -1844
    0  543  516     m543    = m7` - 1 = 1844
    0    0  519     m0      = 0
  544  544  522     m544    = 0
    7    0  525     m0      = m0 - m7 = -1844
    0  544  528     m544    = m544 - m0 = 1844
    0    0  531     m0      = 0
  550  550  534     m550    = m550 - m550 = 0
    7    0  537     m0      = m0 - m7 = -1844
    0  550  540     m550    = m550 - m0 = 1844
    0    0  543     m0      = 0
543:
    0    0  546     m[m7` - 1] = 0
  436    0  549     m0      = -m436 = -6
    0    0  552     m[m7` - 1] = m[m7` - 1] - 1;
    0    0  555     m0      = 0
    4    0  558     m0      = -1
    0    7  561     m7      = m7` = 1845
    0    0  564     m0      = 0
    0  684  567     m684    = m684 = 4
  603  603  570     m603    = 0
    7    0  573     m0      = -m7` = -1845
    0  603  576     m603    = m7` = 1845
    0    0  579     m0      = 0
  604  604  582     m604    = 0
    7    0  585     m0      = -m7` = -1845
    0  604  588     m604    = m7` = 1845
    0    0  591     m0      = 0
  610  610  594     m610    = 0
    7    0  597     m0      = -m7` = -1845
    0  610  600     m610    = m7` = 1845
    0    0  603     m0      = 0
603:
    0    0  606     m[m7`]   = 0
  565    0  609     m0      = -m565 = -684
609:
    0    0  612     m[m7`]   = m565 = 684
    0    0  615     m0      = 0
    4    0  618     m0      = -1
    0    7  621     m7      = m7` + 1 = 1846
    0    0  624     m0      = 0
  660  660  627     m660    = 0
    7    0  630     m0      = -m7`-1 = -1846
    0  660  633     m660    = m7` + 1 = 1846
    0    0  636     m0      = 0
  661  661  639     m661    = 0
    7    0  642     m0      = -(m7` + 1) = -1846
    0  661  645     m661    = m7` + 1 = 1846
    0    0  648     m0      = 0
  667  667  651     m667    = m667 - m667 = 0
    7    0  654     m0      = m0 - m7 = -1846
    0  667  657     m667    = m7` + 1 = 1846
    0    0  660     m0      = 0
    0    0  663     m[m7` + 1] = 0
  493    0  666     m0      = -m493 = -m[m7` - 1]+1 = -6
    0    0  669     m[m7` + 1] = m[m7` - 1] - 1 = 6
    0    0  672     m0      = 0
    4    0  675     m0      = m0 - m4 = -1
    0    7  678     m7      = m7` + 2 = 1847
    0    0  681     m0      = 0
    0    0  378     m0      = 0   -> 378


684:
    4    7  687     m7      = m7 - 1 = 1855
  702  702  690     m702    = m702 - m702 = 0
    7    0  693     m0      = m0 - m7 = -1855
    0  702  696     m702    = m7` - 1 = 1855
    0    0  699     m0      = 0
  493  493  702     m493    = m493 - m493 = 0
702:
    0    0  705     m0      = m0 - m1855 = 0
    0  493  708     m493    = m[m7` - 1] = 0
    0    0  711     m0      = 0
    4    7  714     m7      = m7` - 2 = 1854
  729  729  717     m729    = m729 - m729 = 0
    7    0  720     m0      = m0 - m7 = -1854
    0  729  723     m729    = m7` - 2 = 1854
    0    0  726     m0      = 0
  436  436  729     m436    = m436 - m436 = 0
729:
    0 m729  732     m0      = -m[m7` - 2] = -1
    0  436  735     m436    = m[m7` - 2] = 1
    0    0  738     m0      = 0
  751  751  741     m751    = m751 - m751 = 0
    0    0  744     m0      = 0
    0  751  747     m751    = m751 - m0 = 0
    0    0  750     m0      = 0
750:
    0    0  753     m0      = 0
  751  751  756     m751    = m751 - m751 = 0
  436    0  759     m0      = m0 - m436 = -1
    0  751  762     m751    = m[m7` - 2] = 1
    0    0  765     m0      = 0
    4  751  768     m751    = m[m7` - 2] - 1 = 0
  804  804  771     m804    = m804 - m804 = 0
    7    0  774     m0      = m0 - m7 = -1854
    0  804  777     m804    = m7` - 2 = 1854
    0    0  780     m0      = 0
  805  805  783     m805    = m805 - m805 = 0
    7    0  786     m0      = m0 - m7 = -1854
    0  805  789     m805    = m7` - 2 = 1854
    0    0  792     m0      = 0
  811  811  795     m811    = m811 - m811 = 0
    7    0  798     m0      = m0 - m7 = -1854
    0  811  801     m811    = m7` - 2 = 1854
    0    0  804     m0      = 0
804:
 m804 m805  807     m[m7` - 2] = 0
  436    0  810     m0      = -m436 = -m[m7` - 2]` = -1
810:
    0 m811  813     m[m7` - 2] = m[m7` - 2]` = 1
    0    0  816     m0      = 0
    4    0  819     m0      = m0 - m4 = -1
    0    7  822     m7      = m7` - 1 = 1855
    0    0  825     m0      = 0
  861  861  828     m861    = m861 - m861 = 0
    7    0  831     m0      = m0 - m7 = -1855
    0  861  834     m861    = m7` - 1 = 1855
    0    0  837     m0      = 0
  862  862  840     m862    = m862 - m862 = 0
    7    0  843     m0      = m0 - m7 = -1855
    0  862  846     m862    = m7` - 1 = 1855
    0    0  849     m0      = 0
  868  868  852     m868    = m868 - m868 = 0
    7    0  855     m0      = m0 - m7 = -1855
    0  868  858     m868    = m7` - 1 = 1855
    0    0  861     m0      = 0
861:
 m861 m862  864     m[m7` - 1] = 0
  493    0  867     m0      = m0 - m493 = -m[m7` - 1] = 0
867:
    0 m868  870     m[m7` - 1] = m[m7` - 1]` = 0
    0    0  873     m0      = 0
    4    0  876     m0      = m0 - m4 = -1
    0    7  879     m7      = m7` = 1856
    0    0  882     m0      = 0
    0 1002  885     m1002   = m1002 = 4
  921  921  888     m921    = m921 - m921 = 0
    7    0  891     m0      = m0 - m7 = -1856
    0  921  894     m921    = m7` = 1856
    0    0  897     m0      = 0
  922  922  900     m922    = m922 - m922 = 0
    7    0  903     m0      = m0 - m7 = -1856
    0  922  906     m922    = m7` = 1856
    0    0  909     m0      = 0
  928  928  912     m928    = m928 - m928 = 0
    7    0  915     m0      = m0 - m7 = -1856
    0  928  918     m928    = m7` = 1856
    0    0  921     m0      = 0
921:
    0    0  924     m[m7`]  = 0
  883    0  927     m0      = m0 - m883 = -1002
927:
    0    0  930     m[m7`]  = m883 = 1002
    0    0  933     m0      = 0
    4    0  936     m0      = m0 - m4 = -1
    0    7  939     m7      = m7` + 1 = 1857
    0    0  942     m0      = 0
  978  978  945     m978    = m978 - m978 = 0
    7    0  948     m0      = m0 - m7 = -1857
    0  978  951     m978    = m7` + 1 = 1857
    0    0  954     m0      = 0
  979  979  957     m979    = m979 - m979 = 0
    7    0  960     m0      = m0 - m7 = -1857
    0  979  963     m979    = m7` + 1 = 1857
    0    0  966     m0      = 0
  985  985  969     m985    = m985 - m985 = 0
    7    0  972     m0      = m0 - m7 = -1857
    0  985  975     m985    = m7` + 1 = 1857
    0    0  978     m0      = 0
978:
    0    0  981     m[m7` + 1] = 0
  751    0  984     m0      = m0 - m751 = 0
985:
    0    0  987     m[m7` + 1] = m751 = m[m7` - 2] - 1 = 0
    0    0  990     m0      = 0
    4    0  993     m0      = m0 - m4 = -1
    0    7  996     m7      = m7` + 2 = 1858
    0    0  999     m0      = 0
    0    0  378     m0      = 0   -> 378

1002:
    4    7 1005     m7      = m7` - 1 = 1856
 1020 1020 1008     m1020   = m1020 - m1020 = 0
    7    0 1011     m0      = m0 - m7 = -1856
    0 1020 1014     m1020   = m7` - 1 = 1856
    0    0 1017     m0      = m0 - m0 = 0
  751  751 1020     m751    = m751 - m751 = 0
    0    0 1023     m0      = m0 - m1856 = -1
    0  751 1026     m751    = m[m7` - 1] = 1
    0    0 1029     m0      = 0
    4    7 1032     m7      = m7` - 2 = 1855
 1047 1047 1035     m1047   = m1047 - m1047 = 0
    7    0 1038     m0      = m0 - m7 = -1855
    0 1047 1041     m1047   = m7` - 2 = 1855
    0    0 1044     m0      = 0
  493  493 1047     m493    = m493 - m493 = 0
    0    0 1050     m0      = -m[m7` - 2] = 0
    0  493 1053     m493    = m[m7` - 2] = 0
    0    0 1056     m0      = 0
    4    7 1059     m7      = m7` - 3 = 1854
 1074 1074 1062     m1074   = m1074 - m1074 = 0
    7    0 1065     m0      = m0 - m7 = -1854
    0 1074 1068     m1074   = m7` - 3 = 1854
    0    0 1071     m0      = 0
  436  436 1074     m436    = m436 - m436 = 0
    0    0 1077     m0      = m0 - m1854 = -1
    0  436 1080     m436    = m[m7` - 3] = 1
    0    0 1083     m0      = 0
  751    0 1086     m0      = m0 - m751 = -1
    0  493 1089     m493    = m493 + m751 = m[m7` - 2] + m[m7` - 1] = 1
    0    0 1092     m0      = 0
    0 1269 1095     m1269   = m1269 - m0 = 4
 1131 1131 1098     m1131   = m1131 - m1131 = 0
    7    0 1101     m0      = m0 - m7 = -1854
    0 1131 1104     m1131   = m7` - 3 = 1854
    0    0 1107     m0      = 0
 1132 1132 1110     m1132   = m1132 - m1132 = 0
    7    0 1113     m0      = m0 - m7 = -1854
    0 1132 1116     m1132   = m7` - 3 = 1854
    0    0 1119     m0      = 0
 1138 1138 1122     m1138   = m1138 - m1138 = 0
    7    0 1125     m0      = m0 - m7 = -1854
    0 1138 1128     m1138   = m7` - 3 = 1854
    0    0 1131     m0      = 0
    0    0 1134     m[m7` - 3] = 0
 1093    0 1137     m0      = m0 - m1093 = -1269
    0    0 1140     m[m7` - 3] = 1269 = m1093
    0    0 1143     m0      = 0
    4    0 1146     m0      = m0 - m4 = -1
    0    7 1149     m7      = m7` - 2 = 1855
    0    0 1152     m0      = 0
 1188 1188 1155     m1188   = m1188 - m1188 = 0
    7    0 1158     m0      = m0 - m7 = -1855
    0 1188 1161     m1188   = m7` - 2 = 1855
    0    0 1164     m0      = 0
 1189 1189 1167     m1189   = m1189 - m1189 = 0
    7    0 1170     m0      = m0 - m7 = -1855
    0 1189 1173     m1189   = m7` - 2 = 1855
    0    0 1176     m0      = 0
 1195 1195 1179     m1195   = m1195 - m1195 = 0
    7    0 1182     m0      = m0 - m7 = -1855
    0 1195 1185     m1195   = m7` - 2 = 1855
    0    0 1188     m0      = 0
    0    0 1191     m[m7` - 2] = 0
  436    0 1194     m0      = m0 - m436 = -1
    0    0 1197     m[m7` - 2] = m[m7` - 3]` = 1
    0    0 1200     m0      = 0
    4    0 1203     m0      = m0 - m4 = -1
    0    7 1206     m7      = m7` - 1 = 1856
    0    0 1209     m0      = 0
 1245 1245 1212     m1245   = m1245 - m1245 = 0
    7    0 1215     m0      = m0 - m7 = -1856
    0 1245 1218     m1245   = m7` - 1 = 1856
    0    0 1221     m0      = 0
 1246 1246 1224     m1246   = m1246 - m1246 = 0
    7    0 1227     m0      = m0 - m7 = -1856
    0 1246 1230     m1246   = m7` - 1 = 1856
    0    0 1233     m0      = 0
 1252 1252 1236     m1252   = m1252 - m1252 = 0
    7    0 1239     m0      = m0 - m7 = -1856
    0 1252 1242     m1252   = m7` - 1 = 1856
    0    0 1245     m0      = 0
    0    0 1248     m[m7` - 1] = 0
  493    0 1251     m0      = m0 - m493 = -1
    0    0 1254     m[m7` - 1] = m[m7` - 2]` + m[m7` - 1]` = 1
    0    0 1257     m0      = 0
    4    0 1260     m0      = m0 - m4 = -1
    0    7 1263     m7      = m7` = 1857
    0    0 1266     m0      = 0
    0    0  162     m0      = 0   -> 162

1269:
    4    7 1272     m7      = m7` - 1 = 1854
 1287 1287 1275     m1287   = m1287 - m1287 = 0
    7    0 1278     m0      = m0 - m7 = -1854
    0 1287 1281     m1287   = m7` - 1 = 1854
    0    0 1284     m0      = 0
  421  421 1287     m421    = m421 - m421 = 0
    0    0 1290     m0      = m0 - m1854 = -1
    0  421 1293     m421    = m[m7` - 1] = 1
    0    0 1296     m0      = 0

1296:
    0    0 1299     m0      = 0
    4    7 1302     m7      = m7` - 1 = 1855
 1317 1317 1305     m1317   = m1317 - m1317 = 0
    7    0 1308     m0      = m0 - m7 = -1855
    0 1317 1311     m1317   = m7` - 1 = 1855
    0    0 1314     m0      = 0
 1297 1297 1317     m1297   = m1297 - m1297 = 0
1317:
    0    0 1320     m0      = -m[m7` - 1] = -684
    0 1297 1323     m1297   = m[m7` - 1] = 684
    0    0 1326     m0      = 0
 1397 1397 1329     m1397   = 0
 1297    0 1332     m0      = m0 - m1297 = -684
    0 1397 1335     m1397   = m[m7` - 1] = 684
    0    0 1338     m0      = 0
 1374 1374 1341     m1374   = m1374 - m1374 = 0
    7    0 1344     m0      = m0 - m7 = -1855
    0 1374 1347     m1374   = m7` - 1 = 1855
    0    0 1350     m0      = 0
 1375 1375 1353     m1375   = m1375 - m1375 = 0
    7    0 1356     m0      = m0 - m7 = -1855
    0 1375 1359     m1375   = m7` - 1 = 1855
    0    0 1362     m0      = 0
 1381 1381 1365     m1381   = m1381 - m1381 = 0
    7    0 1368     m0      = m0 - m7 = -1855
    0 1381 1371     m1381   = m7` - 1 = 1855
    0    0 1374     m0      = 0
1374:
    0    0 1377     m[m7` - 1] = 0
  421    0 1380     m0      = -m421 = 0
1380:
    0    0 1383     m[m7` - 1]   = m421 = 0
    0    0 1386     m0      = 0
    4    0 1389     m0      = m0 - m4 = -1
    0    7 1392     m7      = m7` = 1856
    0    0 1395     m0      = 0
1395:
    0    0 1297     jmp m[m7` - 1] -> 684

1398:
// results: 
//     m7 = m7 + 1
//     m[m7`]  = m[m7`-m4]`
//     m[m7` - m4] = 1563
    0    0 1401     m0      = 0
    4    7 1404     m7      = m7 - 1
 1419 1419 1407     m1419   = 0
    7    0 1410     m0      = m0 - m7 = 1 - m7`
    0 1419 1413     m1419   = m1419 - m0 = m7` - 1
    0    0 1416     m0      = 0
 1399 1399 1419     m1399   = 0
1419:
    0    0 1422     m0      = -m[m7`-1]
    0 1399 1425     m1399   = m[m7`-1]
    0    0 1428     m0      = 0
 1441 1441 1431     m1441   = 0
    0    0 1434     m0      = 0
    0 1441 1437     m1441   = m1441 - m0 = 0
    0    0 1440     m0      = 0
1440:
    0    0 1443     m0      = 0
    0 1563 1446     m1563   = m1563 - 0
 1482 1482 1449     m1482   = 0
    7    0 1452     m0      = m0 - m7 = 1 - m7`
    0 1482 1455     m1482   = m7` - 1
    0    0 1458     m0      = 0
 1483 1483 1461     m1483   = 0
    7    0 1464     m0      = m0 - m7 = 1 - m7`
    0 1483 1467     m1483   = m7` - 1
    0    0 1470     m0      = 0
 1489 1489 1473     m1489   = 0
    7    0 1476     m0      = m0 - m7 = 1 - m7`
    0 1489 1479     m1489   = m7` - 1
    0    0 1482     m0      = 0
1482:
    0    0 1485     m[m7` - 1] = 0
 1444    0 1488     m0      = -1563
1488:
    0    0 1491     m[m7` - 1] = -m0 = 1563
    0    0 1494     m0      = 0
    4    0 1497     m0      = -1
    0    7 1500     m7      = m7 - m0 = m7`-1+1=m7`
    0    0 1503     m0      = 0
 1539 1539 1506     m1539   = 0
    7    0 1509     m0      = -m7`
    0 1539 1512     m1539   = m7`
    0    0 1515     m0      = 0
 1540 1540 1518     m1540    = 0
    7    0 1521     m0      = -m7`
    0 1540 1524     m1540   = m7`
    0    0 1527     m0      = 0
 1546 1546 1530     m1546   = 0
    7    0 1533     m0      = -m7`
    0 1546 1536     m1546   = m7`
    0    0 1539     m0      = 0
1539:
    0    0 1542     m[m7`]  = 0
 1399    0 1545     m0      = -m[m7`-1]`
1545:
    0    0 1548     m[m7`]  = m[m7`] - m0 = m[m7`-1]`
    0    0 1551     m0      = 0
    4    0 1554     m0      = -1
    0    7 1557     m7      = m7` + 1
    0    0 1560     m0      = 0
    0    0  378     jump 378

1563:
    4    7 1566     m7      = m7` - 1 = 1843
 1581 1581 1569     m1581   = m1581 - m1581 = 0
    7    0 1572     m0      = m0 - m7 = -1843
    0 1581 1575     m1581   = m7` - 1 = 1843
    0    0 1578     m0      = 0
 1441 1441 1581     m1441   = m1441 - m1441 = 0
    0    0 1584     m0      = m0 - m1843 = -1854
    0 1441 1587     m1441   = m[m7` - 1] = 1854
    0    0 1590     m0      = 0
    0 1710 1593     m1710   = m1710
 1629 1629 1596     m1629   = m1629 - m1629 = 0
    7    0 1599     m0      = m0 - m7 = -1843
    0 1629 1602     m1629   = m7` - 1 = 1843
    0    0 1605     m0      = 0
 1630 1630 1608     m1630   = m1630 - m1630 = 0
    7    0 1611     m0      = m0 - m7 = -1843
    0 1630 1614     m1630   = m7` - 1 = 1843
    0    0 1617     m0      = 0
 1636 1636 1620     m1636   = m1636 - m1636 = 0
    7    0 1623     m0      = m0 - m7 = -1843
    0 1636 1626     m1636   = m7` - 1 = 1843
    0    0 1629     m0      = 0
    0    0 1632     m[m7` - 1] = 0
 1591    0 1635     m0      = m0 - m1591 = -1710
    0    0 1638     m[m7` - 1]  = m1591 = 1710
    0    0 1641     m0      = 0
    4    0 1644     m0      = m0 - m4 = -1
    0    7 1647     m7      = m7` = 1844
    0    0 1650     m0      = 0
 1686 1686 1653     m1686   = 0
    7    0 1656     m0      = m0 - m7 = -1844
    0 1686 1659     m1686   = m7` = 1844
    0    0 1662     m0      = 0
 1687 1687 1665     m1687   = m1687 - m1687 = 0
    7    0 1668     m0      = m0 - m7 = -1844
    0 1687 1671     m1687   = m7` = 1844
    0    0 1674     m0      = 0
 1693 1693 1677     m1693   = m1693 - m1693 = 0
    7    0 1680     m0      = m0 - m7 = -1844
    0 1693 1683     m1693   = m7` = 1844
    0    0 1686     m0      = 0
    0    0 1689     m[m7`]  = 0
 1441    0 1692     m0      = m0 - m1441 = -1854
    0    0 1695     m[m7`]  = m[m7` - 1] = 1854
    0    0 1698     m0      = 0
    4    0 1701     m0      = m0 - m4 = -1
    0    7 1704     m7      = m7` + 1 = 1845
    0    0 1707     m0      = 0
    0    0  378     m0      = 0   -> 378

1710:
    4    7 1713
 1728 1728 1716
    7    0 1719
    0 1728 1722
    0    0 1725
 1441 1441 1728
    0    0 1731
    0 1441 1734
    0    0 1737
    0    0 1740
    4    7 1743
 1758 1758 1746
    7    0 1749
    0 1758 1752
    0    0 1755
 1738 1738 1758
    0    0 1761
    0 1738 1764
    0    0 1767
 1838 1838 1770
 1738    0 1773
    0 1838 1776
    0    0 1779
 1815 1815 1782
    7    0 1785
    0 1815 1788
    0    0 1791
 1816 1816 1794
    7    0 1797
    0 1816 1800
    0    0 1803
 1822 1822 1806
    7    0 1809
    0 1822 1812
    0    0 1815
    0    0 1818
 1441    0 1821
    0    0 1824
    0    0 1827
    4    0 1830
    0    7 1833
    0    0 1836
    0    0 1738
    0    0    0
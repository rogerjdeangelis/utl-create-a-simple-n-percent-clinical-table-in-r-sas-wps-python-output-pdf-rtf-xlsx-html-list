%let pgm=utl-create-a-simple-n-percent-clinical-table-in-r-sas-wps-python-output-pdf-rtf-xlsx-html-list;

Create a simple n percent clinical table in r sas wps python output pdf rtf xlsx html list

github
https://tinyurl.com/2s48apu6
https://github.com/rogerjdeangelis/utl-create-a-simple-n-percent-clinical-table-in-r-sas-wps-python-output-pdf-rtf-xlsx-html-list

Minimal code to create a simple n percent clinical table in r, sas, wps, and python that
requires minimal processing to ceate congruent reports in  rtf, xlsx, html, or list format.
However the rtf, xlsx, html, and list have not been beautifed. Beautification often involves
style sheets, templates, LaTeX or markdown whichcan be very time consuming.
involves substantial

   Using 5 languages to create a clinical n(pct) table each in 5 formats

      1. SAS
           sas_desth.htm   HTML format
           sas_destl.txt   Text format
           sas_destp.pdf   Acobat PDF
           sas_destr.rtf   Rich Text Format
           sas_destx.xlsx  Excel

      2. WPS
           wps_desth.htm
           wps_destl.txt
           wps_destp.pdf
           wps_destr.rtf
           wps_destx.xlsx

      3. WP proc R
           r_desh.htm
           r_desl.txt
           r_desp.pdf
           r_desr.rtf
           r_desx.xlsx

      4. Python & R
           py_desh.htm
           py_desl.txt
           py_desp.pdf
           py_desr.rtf
           py_desx.xlsx

      5. Proc tabulate (it is a language)



https://github.com/rogerjdeangelis?tab=repositories&q=clinical&type=&language=&sort=
https://github.com/rogerjdeangelis/utl_minimal_code_for_demographic_clinical_n_percent_report
https://stackoverflow.com/questions/76245368/add-row-and-column-total-to-gtsummary-tbl-summary
https://reporter.r-sassy.org/articles/reporter-rtf.html

/*---- I gave up on this python package - it creates python unique data structures ----*/
https://rconsortium.github.io/rtrs-wg/tablepkgs.html#flextable

/*                   _
(_)_ __  _ __  _   _| |_
| | `_ \| `_ \| | | | __|
| | | | | |_) | |_| | |_
|_|_| |_| .__/ \__,_|\__|
        |_|
*/

proc datasets lib=work kill nodetails nolist;
run;quit;

data have;
informat
CAT $13.
VAL $24.
TRT $7.
ID 8.
;input
CAT VAL TRT ID @@;
cards4;
AgeGroup 18-39 Aspirin 2 AgeGroup 18-39 Aspirin 5 AgeGroup 18-39 Aspirin 10
AgeGroup 18-39 Aspirin 15 AgeGroup 18-39 Aspirin 19 AgeGroup 18-39 Aspirin 20
AgeGroup 18-39 Aspirin 25 AgeGroup 18-39 Aspirin 29 AgeGroup 18-39 Aspirin 30
AgeGroup 18-39 Placebo 1 AgeGroup 18-39 Placebo 6 AgeGroup 18-39 Placebo 9
AgeGroup 18-39 Placebo 16 AgeGroup 18-39 Placebo 26 AgeGroup 40-64 Aspirin 3
AgeGroup 40-64 Placebo 13 AgeGroup 40-64 Placebo 23 AgeGroup 40-65 Aspirin 17
AgeGroup 40-65 Aspirin 27 AgeGroup 40-65 Placebo 7 AgeGroup 40-66 Aspirin 11
AgeGroup 40-66 Placebo 21 AgeGroup 40-66 Placebo 31 AgeGroup 65+ Aspirin 18
AgeGroup 65+ Aspirin 22 AgeGroup 65+ Aspirin 28 AgeGroup 65+ Aspirin 32 AgeGroup
65+ Placebo 4 AgeGroup 65+ Placebo 8 AgeGroup 65+ Placebo 12 AgeGroup 65+
Placebo 14 AgeGroup 65+ Placebo 24 Ethnicity Hispanic Aspirin 3 Ethnicity
Hispanic Aspirin 10 Ethnicity Hispanic Aspirin 11 Ethnicity Hispanic Aspirin 20
Ethnicity Hispanic Aspirin 30 Ethnicity Hispanic Placebo 1 Ethnicity Hispanic
Placebo 4 Ethnicity Hispanic Placebo 6 Ethnicity Hispanic Placebo 8 Ethnicity
Hispanic Placebo 13 Ethnicity Hispanic Placebo 14 Ethnicity Hispanic Placebo 16
Ethnicity Hispanic Placebo 21 Ethnicity Hispanic Placebo 23 Ethnicity Hispanic
Placebo 24 Ethnicity Hispanic Placebo 26 Ethnicity Hispanic Placebo 31 Ethnicity
Non-Hispanic Aspirin 2 Ethnicity Non-Hispanic Aspirin 5 Ethnicity Non-Hispanic
Aspirin 15 Ethnicity Non-Hispanic Aspirin 17 Ethnicity Non-Hispanic Aspirin 18
Ethnicity Non-Hispanic Aspirin 19 Ethnicity Non-Hispanic Aspirin 22 Ethnicity
Non-Hispanic Aspirin 25 Ethnicity Non-Hispanic Aspirin 27 Ethnicity Non-Hispanic
Aspirin 28 Ethnicity Non-Hispanic Aspirin 29 Ethnicity Non-Hispanic Aspirin 32
Ethnicity Non-Hispanic Placebo 7 Ethnicity Non-Hispanic Placebo 9 Ethnicity
Non-Hispanic Placebo 12 Followup_Flag 0 Aspirin 2 Followup_Flag 0 Aspirin 3
Followup_Flag 0 Aspirin 5 Followup_Flag 0 Aspirin 15 Followup_Flag 0 Aspirin 17
Followup_Flag 0 Aspirin 19 Followup_Flag 0 Aspirin 20 Followup_Flag 0 Aspirin 22
Followup_Flag 0 Aspirin 25 Followup_Flag 0 Aspirin 27 Followup_Flag 0 Aspirin 29
Followup_Flag 0 Aspirin 30 Followup_Flag 0 Aspirin 32 Followup_Flag 0 Placebo 7
Followup_Flag 0 Placebo 9 Followup_Flag 0 Placebo 12 Followup_Flag 0 Placebo 13
Followup_Flag 0 Placebo 23 Followup_Flag 1 Aspirin 10 Followup_Flag 1 Aspirin 11
Followup_Flag 1 Aspirin 18 Followup_Flag 1 Aspirin 28 Followup_Flag 1 Placebo 1
Followup_Flag 1 Placebo 4 Followup_Flag 1 Placebo 6 Followup_Flag 1 Placebo 8
Followup_Flag 1 Placebo 14 Followup_Flag 1 Placebo 16 Followup_Flag 1 Placebo 21
Followup_Flag 1 Placebo 24 Followup_Flag 1 Placebo 26 Followup_Flag 1 Placebo 31
Gender F Aspirin 3 Gender F Aspirin 5 Gender F Aspirin 10 Gender F Aspirin 15
Gender F Aspirin 17 Gender F Aspirin 18 Gender F Aspirin 20 Gender F Aspirin 22
Gender F Aspirin 25 Gender F Aspirin 27 Gender F Aspirin 28 Gender F Aspirin 30
Gender F Aspirin 32 Gender F Placebo 1 Gender F Placebo 7 Gender F Placebo 8
Gender F Placebo 12 Gender F Placebo 13 Gender F Placebo 14 Gender F Placebo 23
Gender F Placebo 24 Gender M Aspirin 2 Gender M Aspirin 11 Gender M Aspirin 19
Gender M Aspirin 29 Gender M Placebo 4 Gender M Placebo 6 Gender M Placebo 9
Gender M Placebo 16 Gender M Placebo 21 Gender M Placebo 26 Gender M Placebo 31
;;;;
run;quit;


/***********************************************************************************************************************/
/*                                              |             _                                _                       */
/*                                              |  _ __ _   _| | ___  ___   _ __    _ __   ___| |_                     */
/*  WORK.HAVE total obs=128 20MAY2023           | | `__| | | | |/ _ \/ __| | `_ \  | `_ \ / __| __|                    */
/*                                              | | |  | |_| | |  __/\__ \ | | | | | |_) | (__| |_                     */
/* Obs       CAT       VAL           TRT    ID  | |_|   \__,_|_|\___||___/ |_| |_| | .__/ \___|\__|                    */
/*                                              |                                  |_|                                 */
/*   1    AgeGroup     18-39       Aspirin   2  |                                                                      */
/*   2    AgeGroup     18-39       Aspirin   5  |                                                                      */
/*   3    AgeGroup     18-39       Aspirin  10  |  Consider AgeGroup 18-39 counts and percents                         */
/*   4    AgeGroup     18-39       Aspirin  15  |                                                                      */
/*   5    AgeGroup     18-39       Aspirin  19  |  Suppose the big N for trt is                                        */
/*   6    AgeGroup     18-39       Aspirin  20  |                                                                      */
/*   7    AgeGroup     18-39       Aspirin  25  |                 N              N                                     */
/*   8    AgeGroup     18-39       Aspirin  29  |    trt        Obs      N    Miss                                     */
/*   9    AgeGroup     18-39       Aspirin  30  |    -------------------------------                                   */
/*  10    AgeGroup     18-39       Placebo   1  |    Aspirin     68     68       0                                     */
/*  11    AgeGroup     18-39       Placebo   6  |    Placebo     60     60       0                                     */
/*  12    AgeGroup     18-39       Placebo   9  |                                                                      */
/*  13    AgeGroup     18-39       Placebo  16  | Obs   cat    val      trt    id   Rules                    n(pct)    */
/*  14    AgeGroup     18-39       Placebo  26  |                                                                      */
/*  15    AgeGroup     40-64       Aspirin   3  | 1  AgeGroup  18-39  Aspirin   2   n=9 N=68 Pct=100*(9/68)  9(13%)    */
/*  16    AgeGroup     40-64       Placebo  13  | 2  AgeGroup  18-39  Aspirin   5                                      */
/*  17    AgeGroup     40-64       Placebo  23  | 3  AgeGroup  18-39  Aspirin  10                                      */
/*  18    AgeGroup     40-65       Aspirin  17  | 4  AgeGroup  18-39  Aspirin  15                                      */
/*  19    AgeGroup     40-65       Aspirin  27  | 5  AgeGroup  18-39  Aspirin  19                                      */
/*  20    AgeGroup     40-65       Placebo   7  | 6  AgeGroup  18-39  Aspirin  20                                      */
/*  21    AgeGroup     40-66       Aspirin  11  | 7  AgeGroup  18-39  Aspirin  25                                      */
/*  22    AgeGroup     40-66       Placebo  21  | 8  AgeGroup  18-39  Aspirin  29                                      */
/*  23    AgeGroup     40-66       Placebo  31  | 9  AgeGroup  18-39  Aspirin  30                                      */
/*  24    AgeGroup     65+         Aspirin  18  |                                                                      */
/*  25    AgeGroup     65+         Aspirin  22  | 1  AgeGroup  18-39  Placebo   1   n=5 N=60 Pct=100*(5/60)   5(8%)    */
/*  26    AgeGroup     65+         Aspirin  28  | 2  AgeGroup  18-39  Placebo   6                                      */
/*  27    AgeGroup     65+         Aspirin  32  | 3  AgeGroup  18-39  Placebo   9                                      */
/*  28    AgeGroup     65+         Placebo   4  | 4  AgeGroup  18-39  Placebo  16                                      */
/*  29    AgeGroup     65+         Placebo   8  | 5  AgeGroup  18-39  Placebo  26                                      */
/*  30    AgeGroup     65+         Placebo  12  |                                                                      */
/*  31    AgeGroup     65+         Placebo  14  |                                                                      */
/*  32    AgeGroup     65+         Placebo  24  |                                                                      */
/*  ....                                        |                                                                      */
/*                                              |                                                                      */
/***********************************************************************************************************************/


/*                         _
 ___  __ _ ___   ___  __ _| |
/ __|/ _` / __| / __|/ _` | |
\__ \ (_| \__ \ \__ \ (_| | |
|___/\__,_|___/ |___/\__, |_|
                        |_|
*/

/*---- crreate big N header ----*/
proc sql;
    select resolve(catx(" ",'%Let',trt,'=',trt,'#(N=',Put(Count(id),2.),');'))
         from have  Group by trt
;quit;

%put &=aspirin; /*---- ASPIRIN=Aspirin #(N= 68 ) ----*/
%put &=placebo; /*---- PLACEBO=Placebo #(N= 60 ) ----*/

proc sql;
  create
    table havPct as
  select
    l.cat
   ,l.val
   ,l.trt
   ,count(*) as numerator
   ,right(put(cats(put(count(*),3.),'(',put(100*count(*)/r.denominator,5.1 -r),'%)'),$10.)) as nPct
  from
    have as l, (
      select
        trt
       ,count(*) as denominator
      from
        have
      group
        by trt ) as r
  where
      l.trt = r.trt
  group
      by l.cat, l.trt, l.val
;quit;

/**************************************************************************************************************************/
/*   _       _                               _ _       _                                                                  */
/*  (_)_ __ | |_ ___ _ __ _ __ ___   ___  __| (_) __ _| |_ ___                                                            */
/*  | | `_ \| __/ _ \ `__| `_ ` _ \ / _ \/ _` | |/ _` | __/ _ \                                                           */
/*  | | | | | ||  __/ |  | | | | | |  __/ (_| | | (_| | ||  __/                                                           */
/*  |_|_| |_|\__\___|_|  |_| |_| |_|\___|\__,_|_|\__,_|\__\___|                                                           */
/*                                                                                                                        */
/*                                                                                                                        */
/*  Up to 40 obs from last table WORK.WANT total obs=22 20MAY2023:09:35:08                                                */
/*                                                                                                                        */
/*  Obs    CAT              VAL               TRT      NUMERATOR      NPCT                                                */
/*                                                                                                                        */
/*    1    AgeGroup         18-39           Aspirin         9        9(13.2%)                                             */
/*    2    AgeGroup         40-64           Aspirin         1         1(1.5%)                                             */
/*    3    AgeGroup         40-65           Aspirin         2         2(2.9%)                                             */
/*    4    AgeGroup         40-66           Aspirin         1         1(1.5%)                                             */
/*    5    AgeGroup         65+             Aspirin         4         4(5.9%)                                             */
/*    6    AgeGroup         18-39           Placebo         5         5(8.3%)                                             */
/*    7    AgeGroup         40-64           Placebo         2         2(3.3%)                                             */
/*    8    AgeGroup         40-65           Placebo         1         1(1.7%)                                             */
/*    9    AgeGroup         40-66           Placebo         2         2(3.3%)                                             */
/*   10    AgeGroup         65+             Placebo         5         5(8.3%)                                             */
/*   11    Ethnicity        Hispanic        Aspirin         5         5(7.4%)                                             */
/*   12    Ethnicity        Non-Hispanic    Aspirin        12       12(17.6%)                                             */
/*   13    Ethnicity        Hispanic        Placebo        12       12(20.0%)                                             */
/*   14    Ethnicity        Non-Hispanic    Placebo         3         3(5.0%)                                             */
/*   15    Followup_Flag    0               Aspirin        13       13(19.1%)                                             */
/*   16    Followup_Flag    1               Aspirin         4         4(5.9%)                                             */
/*   17    Followup_Flag    0               Placebo         5         5(8.3%)                                             */
/*   18    Followup_Flag    1               Placebo        10       10(16.7%)                                             */
/*   19    Gender           F               Aspirin        13       13(19.1%)                                             */
/*   20    Gender           M               Aspirin         4         4(5.9%)                                             */
/*   21    Gender           F               Placebo         8        8(13.3%)                                             */
/*   22    Gender           M               Placebo         7        7(11.7%)                                             */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*
| |_ _ __ __ _ _ __  ___ _ __   ___  ___  ___
| __| `__/ _` | `_ \/ __| `_ \ / _ \/ __|/ _ \
| |_| | | (_| | | | \__ \ |_) | (_) \__ \  __/
 \__|_|  \__,_|_| |_|___/ .__/ \___/|___/\___|
                        |_|
*/

proc sql;
  create
    table want as

  select
    l.cat
   ,l.val
   ,l.npct as Aspirin
   ,r.npct as Placebo
  from
    havPct as l, havPct as r
  where
        l.trt = "Aspirin"
    and r.trt = "Placebo"
    and l.cat =  r.cat
    and l.val =  r.val
;quit;

%macro dest  ;
  proc report data=want split="#" missing;
  title "Simple Clinical N Percent Table formated for Excel, List, Html, and PDF";
  define cat / order "Category";
  define val / order "Value";
  define aspirin / "&aspirin" style={just=right};
  define placebo / "&placebo" style={just=right};
  compute before cat;
    skp=" ";
    line skp $1.;
  endcomp;
  run;quit;
%mend dest;

/*---- list                                                  ----*/
ods listing file="d:/des/sas_destl.txt";
%dest;
ods listing;

/*---- PDF                                                   ----*/
/*---- many sas styles and javascript cascading style sheets ----*/
ods pdf file="d:/des/sas_destp.pdf" style=journal;
%dest;
ods pdf close;

/*---- HTML                                                  ----*/
ods _all_ close;
ods html file = "sas_desth.htm" (url=none) path='d:\des';
%dest;
ods html close;
ods listing;

/*---- RTF                                                   ----*/
ods _all_ close;
ods rtf file = "d:/des/sas_destr.rtf";
%dest;
ods rtf close;
ods listing;

/*---- EXCEL                                                 ----*/
ods _all_ close;
ods excel file = "d:/des/sas_destx.xlsx";
%dest;
ods excel close;
ods listing;


/**************************************************************************************************************************/
/*                                                                                                                        */
/*  Simple Clinical N Percent Table formated for Excel, List, Html, and PDF                                               */
/*                                                                                                                        */
/*                                              Aspirin     Placebo                                                       */
/*    Category       Value                      (N= 68 )    (N= 60 )                                                      */
/*                                                                                                                        */
/*    AgeGroup       18-39                       9(13.2%)     5(8.3%)                                                     */
/*                   40-64                        1(1.5%)     2(3.3%)                                                     */
/*                   40-65                        2(2.9%)     1(1.7%)                                                     */
/*                   40-66                        1(1.5%)     2(3.3%)                                                     */
/*                   65+                          4(5.9%)     5(8.3%)                                                     */
/*                                                                                                                        */
/*    Ethnicity      Hispanic                     5(7.4%)   12(20.0%)                                                     */
/*                   Non-Hispanic               12(17.6%)     3(5.0%)                                                     */
/*                                                                                                                        */
/*    Followup_Flag  0                          13(19.1%)     5(8.3%)                                                     */
/*                   1                            4(5.9%)   10(16.7%)                                                     */
/*                                                                                                                        */
/*    Gender         F                          13(19.1%)    8(13.3%)                                                     */
/*                   M                            4(5.9%)    7(11.7%)                                                     */
/*                                                                                                                        */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*                              _
__      ___ __  ___   ___  __ _| |
\ \ /\ / / `_ \/ __| / __|/ _` | |
 \ V  V /| |_) \__ \ \__ \ (_| | |
  \_/\_/ | .__/|___/ |___/\__, |_|
         |_|                 |_|
*/

%utl_submit_wps64('
libname wrk "&_pth" ;
libname wps wpd "&_pth" ;
 options validvarname=any;
 proc sql noprint;
    select cats(trt,"#(N=",Put(Count(id),2.),")") into :Aspirin trimmed from wrk.have where trt="Aspirin" group by trt;
    select cats(trt,"#(N=",Put(Count(id),2.),")") into :Placebo trimmed from wrk.have where trt="Placebo" group by trt;
quit;

proc sql;
  create
    table wps.havPct as
  select
   distinct
    l.cat
   ,l.val
   ,l.trt
   ,count(*) as numerator
   ,right(put(cats(put(count(*),3.),"(",put(100*count(*)/r.denominator,5.1 -r),"%)"),$10.)) as nPct
  from
    wrk.have as l, (
      select
        trt
       ,count(*) as denominator
      from
        wrk.have
      group
        by trt ) as r
  where
      l.trt = r.trt
  group
      by l.cat, l.trt, l.val
;quit;

proc sql;
  create
    table wps.want as

  select
    l.cat
   ,l.val
   ,l.npct as Aspirin
   ,r.npct as Placebo
  from
    wps.havPct as l, wps.havPct as r
  where
        l.trt = "Aspirin"
    and r.trt = "Placebo"
    and l.cat =  r.cat
    and l.val =  r.val
;quit;

%macro dest  ;
  proc report data=wps.want split="#" missing;
  title "Simple Clinical N Percent Table formated for Excel, List, Html, and PDF";
  define cat / order "Category";
  define val / order "Value";
  define aspirin / "&aspirin" style={just=right};
  define placebo / "&placebo" style={just=right};
  compute before cat;
    skp=" ";
    line skp $1.;
  endcomp;
  run;quit;
%mend dest;

/*---- list                                                  ----*/
ods listing file="d:/des/wps_destl.txt";
%dest;
ods listing;

/*---- PDF                                                   ----*/
/*---- many sas styles and javascript cascading style sheets ----*/
ods pdf file="d:/des/wps_destp.pdf" ;
%dest;
ods pdf close;

/*---- HTML                                                  ----*/
ods _all_ close;
ods html file = "wps_desth.htm"  path="d:\des";
%dest;
ods html close;
ods listing;

/*---- RTF                                                   ----*/
ods _all_ close;
ods rtf file = "d:/des/wps_destr.rtf";
%dest;
ods rtf close;
ods listing;

/*---- EXCEL                                                 ----*/
ods _all_ close;
ods excel file = "d:/des/wps_destx.xlsx";
%dest;
ods excel close;
ods listing;
');

/*
__      ___ __  ___   _ __  _ __ ___   ___   _ __
\ \ /\ / / `_ \/ __| | `_ \| `__/ _ \ / __| | `__|
 \ V  V /| |_) \__ \ | |_) | | | (_) | (__  | |
  \_/\_/ | .__/|___/ | .__/|_|  \___/ \___| |_|
         |_|         |_|
*/

libname sd1 "d:/sd1";

data sd1.have;
  set have;
run;quit;

%utl_submit_wps64('

libname sd1 "d:/sd1";

options validvarname=any;
proc r;
export data=sd1.have r=have;
submit;
library(sqldf);
library(gridExtra);
havpct<-sqldf("
  select
    l.cat
   ,l.val
   ,l.trt
   ,printf(\"%.0d\",(count(*)*1)) || \"(\" || printf(\"%.1f\",count(*)*100.0/r.denominator) || \"%)\"  as npct
  from
    have as l, (
      select
        trt
       ,count(*)*1.0 as denominator
      from
        have
      group
        by trt ) as r
  where
      l.trt = r.trt
  group
      by l.cat, l.trt, l.val
");
havpct;
r_want<-sqldf("
  select
    \"       \"       as Category
   ,\"            \"  as Value
   ,\"N=\" || printf(\"%.0d\",sum(trt = \"Placebo\")*1.0) as Placebo
   ,\"N=\" || printf(\"%.0d\",sum(trt = \"Aspirin\")*1.0) as Aspirin
  from
   have
  union
  select
    l.cat as Category
   ,l.val as Value
   ,l.npct as Aspirin
   ,r.npct as Placebo
  from
    havpct as l inner join havpct as r
  on
        r.trt like \"%Placebo%\"
    and l.trt like \"%Aspirin%\"
    and l.cat = r.cat
    and l.val = r.val
");
r_want;
save(r_want, file = "d:/rda/r_want.Rda");
endsubmit;
');

 /**************************************************************************************************************************/
 /*                                                                                                                        */
 /* WHATS GOING ON ABOVE                                                                                                   */
 /*                                                                                                                        */
 /*       1. Compute percents the long way                                                                                 */
 /*       2. Transpose                                                                                                     */
 /*       3. Save r_want in an R workspace table file to load later d:/rda/r_want.Rda)                                     */
 /*                                                                                                                        */
 /* INTERMEDIATE DATASETS                                                                                                  */
 /*                                                                                                                        */
 /* HAVPCT                                                                                                                 */
 /*                                                                                                                        */
 /*              CAT          VAL     TRT      npct                                                                        */
 /* 1       AgeGroup        18-39 Aspirin  9(13.2%)                                                                        */
 /* 2       AgeGroup        40-64 Aspirin   1(1.5%)                                                                        */
 /* 3       AgeGroup        40-65 Aspirin   2(2.9%)                                                                        */
 /* 4       AgeGroup        40-66 Aspirin   1(1.5%)                                                                        */
 /* 5       AgeGroup          65+ Aspirin   4(5.9%)                                                                        */
 /* 6       AgeGroup        18-39 Placebo   5(8.3%)                                                                        */
 /* 7       AgeGroup        40-64 Placebo   2(3.3%)                                                                        */
 /* 8       AgeGroup        40-65 Placebo   1(1.7%)                                                                        */
 /* 9       AgeGroup        40-66 Placebo   2(3.3%)                                                                        */
 /* 10      AgeGroup          65+ Placebo   5(8.3%)                                                                        */
 /* 11     Ethnicity     Hispanic Aspirin   5(7.4%)                                                                        */
 /* 12     Ethnicity Non-Hispanic Aspirin 12(17.6%)                                                                        */
 /* 13     Ethnicity     Hispanic Placebo 12(20.0%)                                                                        */
 /* 14     Ethnicity Non-Hispanic Placebo   3(5.0%)                                                                        */
 /* 15 Followup_Flag            0 Aspirin 13(19.1%)                                                                        */
 /* 16 Followup_Flag            1 Aspirin   4(5.9%)                                                                        */
 /* 17 Followup_Flag            0 Placebo   5(8.3%)                                                                        */
 /* 18 Followup_Flag            1 Placebo 10(16.7%)                                                                        */
 /* 19        Gender            F Aspirin 13(19.1%)                                                                        */
 /* 20        Gender            M Aspirin   4(5.9%)                                                                        */
 /* 21        Gender            F Placebo  8(13.3%)                                                                        */
 /* 22        Gender            M Placebo  7(11.7%)                                                                        */
 /*                                                                                                                        */
 /* R_WANT                                                                                                                 */
 /*                                                                                                                        */
 /*         Category        Value   Placebo   Aspirin                                                                      */
 /* 1                                  N=60      N=68                                                                      */
 /* 2       AgeGroup        18-39  9(13.2%)   5(8.3%)                                                                      */
 /* 3       AgeGroup        40-64   1(1.5%)   2(3.3%)                                                                      */
 /* 4       AgeGroup        40-65   2(2.9%)   1(1.7%)                                                                      */
 /* 5       AgeGroup        40-66   1(1.5%)   2(3.3%)                                                                      */
 /* 6       AgeGroup          65+   4(5.9%)   5(8.3%)                                                                      */
 /* 7      Ethnicity     Hispanic   5(7.4%) 12(20.0%)                                                                      */
 /* 8      Ethnicity Non-Hispanic 12(17.6%)   3(5.0%)                                                                      */
 /* 9  Followup_Flag            0 13(19.1%)   5(8.3%)                                                                      */
 /* 10 Followup_Flag            1   4(5.9%) 10(16.7%)                                                                      */
 /* 11        Gender            F 13(19.1%)  8(13.3%)                                                                      */
 /* 12        Gender            M   4(5.9%)  7(11.7%)                                                                      */
 /*                                                                                                                        */
 /*                                                                                                                        */
 /**************************************************************************************************************************/

%utl_submit_wps64('
options validvarname=any;
libname wrk "&_pth";
proc r;
submit;
library(reporter);
library(openxlsx);
load("d:/rda/r_want.Rda");
r_want;

df2ods<-function(typ) {
  tbl <- create_table(r_want, borders = "bottom");
  rpt <- create_report(pth, output_type = typ, font = "Arial") |> add_content(tbl, align = "left");
  write_report(rpt);
};

pth <- file.path("d:/des", "r_desr.rtf");
df2ods("RTF");

pth <- file.path("d:/des", "r_desp.pdf");
df2ods("PDF");

pth <- file.path("d:/des", "r_desh.htm");
df2ods("HTML");

wb = createWorkbook();
addWorksheet(wb, "r_desx");
writeData(wb, sheet = "r_desx", x = r_want);
saveWorkbook(wb, file = "d:/des/r_desx.xlsx", overwrite = TRUE);

sink(file = "d:/des/r_desl.txt");
r_want;
sink(file = NULL);
endsubmit;
');

/*           _   _                    ___
 _ __  _   _| |_| |__   ___  _ __    ( _ )    _ __
| `_ \| | | | __| `_ \ / _ \| `_ \   / _ \/\ | `__|
| |_) | |_| | |_| | | | (_) | | | | | (_>  < | |
| .__/ \__, |\__|_| |_|\___/|_| |_|  \___/\/ |_|
|_|    |___/
*/

libname sd1 "d:/sd1";
data sd1.have;
  set have;
run;quit;

proc datasets lib=work kill nodetails nolist;
run;quit;

/*---- create sqlite database to transfer python pandas datafram to r ----*/
%utl_submit_py64_310('
import sqlite3;
database = "c:/temp/xport.db";
conn = sqlite3.connect(database);
conn.close();
');

%utlfkil(d:/xpt/r_want.xpt);

%utl_pybegin;
parmcards4;
import sqlite3;
import pandas as pd;
from pydataset import data;
from os import path
import pandas as pd
import pyreadstat
import numpy as np
from pandasql import sqldf
mysql = lambda q: sqldf(q, globals())
from pandasql import PandaSQL
pdsql = PandaSQL(persist=True)
sqlite3conn = next(pdsql.conn.gen).connection.connection
sqlite3conn.enable_load_extension(True)
sqlite3conn.load_extension('c:/temp/libsqlitefunctions.dll')
mysql = lambda q: sqldf(q, globals())
have, meta = pyreadstat.read_sas7bdat("d:/sd1/have.sas7bdat")
print(have);
havpct = pdsql("""
  select
    l.cat
   ,l.val
   ,l.trt
   ,printf(\"%.0d\",(count(*)*1)) || \"(\" || printf(\"%.1f\",count(*)*100.0/r.denominator) || \"%)\"  as npct
  from
    have as l, (
      select
        trt
       ,count(*)*1.0 as denominator
      from
        have
      group
        by trt ) as r
  where
      l.trt = r.trt
  group
      by l.cat, l.trt, l.val
""");
print(havpct);
py_want=pdsql("""
  select
    \"       \"       as Category
   ,\"            \"  as Value
   ,\"N=\" || printf(\"%.0d\",sum(trt = \"Placebo\")*1.0) as Placebo
   ,\"N=\" || printf(\"%.0d\",sum(trt = \"Aspirin\")*1.0) as Aspirin
  from
   have
  union
  select
    l.cat as Category
   ,l.val as Value
   ,l.npct as Aspirin
   ,r.npct as Placebo
  from
    havpct as l inner join havpct as r
  on
        r.trt like \"%Placebo%\"
    and l.trt like \"%Aspirin%\"
    and l.cat = r.cat
    and l.val = r.val
""");
mydb = sqlite3.connect("c:/temp/xport.db");
py_want.to_sql(name="r_want", con=mydb);
mydb.close();
print(chk);
;;;;
%utl_pyend;

/*---- create table seizure in sqlite database ----*/
%utl_submit_py64_310('
mydb = sqlite3.connect("c:/temp/xport.db");
py_want.to_sql(name="r_want", con=mydb);
mydb.close();
');


%utl_submit_r64('
library(RSQLite);
library(DBI);
library(sqldf);
library(reporter);
library(openxlsx);
mydb <- dbConnect(RSQLite::SQLite(), "c:/temp/xport.db");
as.data.frame(dbListTables(mydb));
py_want<-dbGetQuery(mydb, "SELECT * FROM r_want");
str(py_want);
head(py_want);

df2ods<-function(typ) {
  tbl <- create_table(py_want, borders = "bottom");
  rpt <- create_report(pth, output_type = typ, font = "Arial") |> add_content(tbl, align = "left");
  write_report(rpt);
};

pth <- file.path("d:/des", "py_desr.rtf");
df2ods("RTF");

pth <- file.path("d:/des", "py_desp.pdf");
df2ods("PDF");

pth <- file.path("d:/des", "py_desh.htm");
df2ods("HTML");

wb = createWorkbook();
addWorksheet(wb, "py_desx");
writeData(wb, sheet = "py_desx", x = py_want);
saveWorkbook(wb, file = "d:/des/py_desx.xlsx", overwrite = TRUE);

sink(file = "d:/des/py_desl.txt");
py_want;
sink(file = NULL);
');

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/

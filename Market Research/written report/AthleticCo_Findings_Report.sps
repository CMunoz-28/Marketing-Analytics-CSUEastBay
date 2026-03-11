* ============================================================================
*  AthleticCo. Market Research 2025
*  FINDINGS REPORT — SPSS Syntax
*  Run this file after opening AthleticCo_Findings.sav
*  Output: Frequencies, Descriptives, Cross-Tabulations, NPS Summary
* ============================================================================
* INSTRUCTIONS:
*   1. Open AthleticCo_Findings.sav in SPSS
*   2. Edit the GET FILE path below to match where you saved the .sav
*   3. Run > All  (or Ctrl+A, then F5)
* ============================================================================

GET FILE = 'AthleticCo_Findings.sav'.
DATASET NAME AthleticCo WINDOW=FRONT.

* ─────────────────────────────────────────────────────────────────────────────
* SECTION 0 — Confirm sample size
* ─────────────────────────────────────────────────────────────────────────────
TITLE 'AthleticCo. Market Research — Findings Report'.

DESCRIPTIVES VARIABLES = GENDER
  /STATISTICS = N.

* ─────────────────────────────────────────────────────────────────────────────
* SECTION 1 — DEMOGRAPHICS
* ─────────────────────────────────────────────────────────────────────────────
TITLE 'Section 1 — Demographic Profile'.

FREQUENCIES VARIABLES = AGE_GRP  GENDER  HHINCOME  BRANDPRF  PURCHFRQ  PRCHAN
  /BARCHART FREQ
  /ORDER = ANALYSIS.

FREQUENCIES VARIABLES = AGE_GRP2  INC_GRP3
  /BARCHART FREQ
  /ORDER = ANALYSIS.

* ─────────────────────────────────────────────────────────────────────────────
* SECTION 2 — BRAND PERCEPTION & POSITIONING
* ─────────────────────────────────────────────────────────────────────────────
TITLE 'Section 2 — Brand Perception and Positioning'.

* Brand association frequencies
FREQUENCIES VARIABLES =
    ASWOMENS  ASMENS   ASFOOT   ASOUTW
    ASACCS    ASYOGA   ASRSAL
  /ORDER = ANALYSIS.

* Brand positioning
FREQUENCIES VARIABLES = BRANDPOS
  /BARCHART FREQ
  /ORDER = ANALYSIS.

* ─────────────────────────────────────────────────────────────────────────────
* SECTION 3 — BRAND TRUST, SATISFACTION, AND NPS
* ─────────────────────────────────────────────────────────────────────────────
TITLE 'Section 3 — Brand Trust, Satisfaction, and Net Promoter Score'.

* Descriptives for key constructs
DESCRIPTIVES VARIABLES =
    BRTRUST   BRSATIS   LIKREC
    PRMBRAND  PREMCOMP
  /STATISTICS = MEAN STDDEV MIN MAX
  /SORT = NONE.

* NPS group frequencies and bar chart
FREQUENCIES VARIABLES = NPS_GRP
  /BARCHART FREQ
  /ORDER = ANALYSIS.

* Satisfaction group frequencies
FREQUENCIES VARIABLES = SAT_GRP
  /BARCHART FREQ
  /ORDER = ANALYSIS.

* Compare brand_trust by primary brand preference
MEANS TABLES = BRTRUST  BRSATIS  LIKREC  BY  BRANDPRF
  /CELLS = MEAN  STDDEV  COUNT.

* ─────────────────────────────────────────────────────────────────────────────
* SECTION 4 — BRAND EXTENSION PURCHASE INTENT
* ─────────────────────────────────────────────────────────────────────────────
TITLE 'Section 4 — Brand Extension Viability: Purchase Intent'.

DESCRIPTIVES VARIABLES = INTMENS  INTFOOT  INTRSAL  EXTAVG
  /STATISTICS = MEAN STDDEV MIN MAX
  /SORT = NONE.

* Frequencies with bar charts for each extension
FREQUENCIES VARIABLES = INTMENS  INTFOOT  INTRSAL
  /BARCHART FREQ
  /ORDER = ANALYSIS.

* Extension intent by gender
MEANS TABLES = INTMENS  INTFOOT  INTRSAL  EXTAVG  BY  GENDER
  /CELLS = MEAN  STDDEV  COUNT.

* Extension intent by age group (collapsed)
MEANS TABLES = INTMENS  INTFOOT  INTRSAL  BY  AGE_GRP2
  /CELLS = MEAN  STDDEV  COUNT.

* Extension intent by primary brand preference
MEANS TABLES = INTMENS  INTFOOT  INTRSAL  BY  BRANDPRF
  /CELLS = MEAN  STDDEV  COUNT.

* ─────────────────────────────────────────────────────────────────────────────
* SECTION 5 — PRICE SENSITIVITY
* ─────────────────────────────────────────────────────────────────────────────
TITLE 'Section 5 — Price Sensitivity'.

DESCRIPTIVES VARIABLES = PRMBRAND  PREMCOMP
  /STATISTICS = MEAN STDDEV MIN MAX.

* Compare willingness to pay premium: own brand vs competitor
T-TEST PAIRS = PRMBRAND  WITH  PREMCOMP (PAIRED).

* Price premium willingness by primary brand preference
MEANS TABLES = PRMBRAND  PREMCOMP  BY  BRANDPRF
  /CELLS = MEAN  STDDEV  COUNT.

* ─────────────────────────────────────────────────────────────────────────────
* SECTION 6 — RESALE PROGRAM ADOPTION
* ─────────────────────────────────────────────────────────────────────────────
TITLE 'Section 6 — Resale Program Adoption'.

* Sustainability and incentive context
DESCRIPTIVES VARIABLES = SUSTAIN  INCNTINT
  /STATISTICS = MEAN STDDEV MIN MAX.

* All eight resale drivers — descriptives and bar chart
DESCRIPTIVES VARIABLES =
    RD_BKBCK  RD_SANIT  RD_PHOTO  RD_RTRN
    RD_PRICE  RD_WRNTY  RD_LOYAL  RD_TRYON  RDAVG
  /STATISTICS = MEAN STDDEV MIN MAX
  /SORT = NONE.

FREQUENCIES VARIABLES =
    RD_BKBCK  RD_SANIT  RD_PHOTO  RD_RTRN
    RD_PRICE  RD_WRNTY  RD_LOYAL  RD_TRYON
  /ORDER = ANALYSIS.

* Resale interest by gender
MEANS TABLES = INTRSAL  RDAVG  BY  GENDER
  /CELLS = MEAN  STDDEV  COUNT.

* Resale interest by income group
MEANS TABLES = INTRSAL  RDAVG  BY  INC_GRP3
  /CELLS = MEAN  STDDEV  COUNT.

* ─────────────────────────────────────────────────────────────────────────────
* SECTION 7 — DISCOVERY CHANNELS
* ─────────────────────────────────────────────────────────────────────────────
TITLE 'Section 7 — Marketing Discovery Channels'.

DESCRIPTIVES VARIABLES =
    DC_SOCL   DC_INFL   DC_SRCH   DC_STORE
    DC_WOM    DC_EMAIL  DC_EDIT
  /STATISTICS = MEAN STDDEV MIN MAX
  /SORT = NONE.

FREQUENCIES VARIABLES =
    DC_SOCL   DC_INFL   DC_SRCH   DC_STORE
    DC_WOM    DC_EMAIL  DC_EDIT
  /BARCHART FREQ
  /ORDER = ANALYSIS.

* Discovery channels by age group
MEANS TABLES =
    DC_SOCL  DC_INFL  DC_EMAIL  BY  AGE_GRP2
  /CELLS = MEAN  STDDEV  COUNT.

* ─────────────────────────────────────────────────────────────────────────────
* SECTION 8 — KEY CROSS-TABULATIONS
* ─────────────────────────────────────────────────────────────────────────────
TITLE 'Section 8 — Cross-Tabulations'.

* NPS group x Primary brand preference
CROSSTABS
  /TABLES = NPS_GRP  BY  BRANDPRF
  /FORMAT = AVALUE TABLES
  /STATISTICS = CHISQ PHI
  /CELLS = COUNT ROW COLUMN TOTAL
  /COUNT ROUND CELL.

* NPS group x Gender
CROSSTABS
  /TABLES = NPS_GRP  BY  GENDER
  /FORMAT = AVALUE TABLES
  /STATISTICS = CHISQ PHI
  /CELLS = COUNT ROW COLUMN
  /COUNT ROUND CELL.

* NPS group x Age group
CROSSTABS
  /TABLES = NPS_GRP  BY  AGE_GRP2
  /FORMAT = AVALUE TABLES
  /STATISTICS = CHISQ
  /CELLS = COUNT ROW COLUMN
  /COUNT ROUND CELL.

* Satisfaction group x Primary brand preference
CROSSTABS
  /TABLES = SAT_GRP  BY  BRANDPRF
  /FORMAT = AVALUE TABLES
  /STATISTICS = CHISQ PHI
  /CELLS = COUNT ROW COLUMN
  /COUNT ROUND CELL.

* Purchase channel x Gender
CROSSTABS
  /TABLES = PRCHAN  BY  GENDER
  /FORMAT = AVALUE TABLES
  /STATISTICS = CHISQ PHI
  /CELLS = COUNT ROW COLUMN
  /COUNT ROUND CELL.

* ─────────────────────────────────────────────────────────────────────────────
* SECTION 9 — RELIABILITY (Cronbach's Alpha) for multi-item scales
* ─────────────────────────────────────────────────────────────────────────────
TITLE 'Section 9 — Internal Consistency (Cronbach Alpha)'.

* Purchase intent scale (3 items)
RELIABILITY
  /VARIABLES = INTMENS  INTFOOT  INTRSAL
  /MODEL = ALPHA
  /STATISTICS = DESCRIPTIVE SCALE
  /SUMMARY = TOTAL.

* Resale drivers scale (8 items)
RELIABILITY
  /VARIABLES =
    RD_PRICE  RD_LOYAL  RD_RTRN  RD_TRYON
    RD_BKBCK  RD_WRNTY  RD_PHOTO  RD_SANIT
  /MODEL = ALPHA
  /STATISTICS = DESCRIPTIVE SCALE
  /SUMMARY = TOTAL.

* Discovery channels scale (7 items)
RELIABILITY
  /VARIABLES =
    DC_EMAIL  DC_SOCL  DC_INFL  DC_STORE
    DC_WOM    DC_SRCH  DC_EDIT
  /MODEL = ALPHA
  /STATISTICS = DESCRIPTIVE SCALE
  /SUMMARY = TOTAL.

* ─────────────────────────────────────────────────────────────────────────────
* SECTION 10 — CORRELATION MATRIX (key constructs)
* ─────────────────────────────────────────────────────────────────────────────
TITLE 'Section 10 — Correlation Matrix: Key Constructs'.

CORRELATIONS
  /VARIABLES =
    BRTRUST   BRSATIS   LIKREC
    INTMENS   INTFOOT   INTRSAL   EXTAVG
    PRMBRAND  PREMCOMP
    SUSTAIN   RDAVG
  /PRINT = TWOTAIL SIG
  /MISSING = PAIRWISE.

* ─────────────────────────────────────────────────────────────────────────────
* SECTION 11 — NPS COMPUTATION VERIFICATION
* ─────────────────────────────────────────────────────────────────────────────
TITLE 'Section 11 — NPS Score Verification'.

FREQUENCIES VARIABLES = NPS_GRP
  /ORDER = ANALYSIS.

* NPS = (Promoters% - Detractors%)
* From data: Promoters=25 (26.0%), Detractors=41 (42.7%), NPS = -16.7

* ─────────────────────────────────────────────────────────────────────────────
* SECTION 12 — MEANS TABLE SUMMARY (key vars × demographics)
* ─────────────────────────────────────────────────────────────────────────────
TITLE 'Section 12 — Construct Means by Demographic Segments'.

MEANS TABLES =
    BRTRUST  BRSATIS  EXTAVG  RDAVG  BY  AGE_GRP2
  /CELLS = MEAN  STDDEV  COUNT.

MEANS TABLES =
    BRTRUST  BRSATIS  EXTAVG  RDAVG  BY  GENDER
  /CELLS = MEAN  STDDEV  COUNT.

MEANS TABLES =
    BRTRUST  BRSATIS  EXTAVG  RDAVG  BY  INC_GRP3
  /CELLS = MEAN  STDDEV  COUNT.

EXECUTE.

* ─────────────────────────────────────────────────────────────────────────────
* END OF SYNTAX
* AthleticCo. Market Research 2025  |  CSUE  |  n=97
* ─────────────────────────────────────────────────────────────────────────────

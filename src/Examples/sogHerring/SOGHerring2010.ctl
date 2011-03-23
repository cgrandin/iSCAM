## ____________________________________________________________________________ ##
##                            SOG HERRING CONTROLS
## ___________________CONTROLS FOR ESTIMATED PARAMETERS________________________ ##
##  Prior descriptions:
##                      -0 uniform (0,0)
##                      -1 normal (p1=mu,p2=sig)
##                      -2 lognormal (p1=log(mu),p2=sig)
##                      -3 beta (p1=alpha,p2=beta)
##                      -4 gamma(p1=alpha,p2=beta)
## ____________________________________________________________________________ ##
6   ## npar
##  ival        lb      ub      phz     prior    p1      p2      parameter name
## ____________________________________________________________________________ ##
    7.60        -5.0    15       4       0       -5.0    15      #log_ro 
    0.70        0.2     1.0      4       3       1.01    1.01    #steepness
    -1.0966     -5.0    5.0      3       1       -1.0966 0.05    #log.m
    7.40        -5.0    15       1       0       -5.0    15      #log_avgrec
    0.20        0.001   0.999    3       3       15.0    60.0    #rho
    1.25        0.01    500      3       4       156.25  125.0   #kappa (precision)
## ____________________________________________________________________________ ##

## ____________________________________________________________________________ ##
## _________________________SELECTIVITY PARAMETERS_____________________________ ##
## OPTIONS FOR SELECTIVITY:
##      1) logistic selectivity parameters
##      2) selectivity coefficients
##      3) a constant cubic spline with age-nodes
##      4) a time varying cubic spline with age-nodes
##      5) a time varying bicubic spline with age & year nodes.
##      6) fixed logistic (set isel_type=6, and estimation phase to -1)
##		sig=0.05 0.10 0.15 0.20 0.30 0.40 0.50
##		wt =200. 50.0 22.2 12.5 5.56 3.12 2.00
## Gear 1:3 fishery:  Gear 4-5 survey
## isel_type
    1        1          1       1       1
## Age at 50% selectivity (logistic)
    1.5      2.0        2.5     2.055   2.055
## STD at 50% selectivity (logistic)
    0.75      0.5       0.2     0.05    0.05
## No. of age nodes for each gear (0 to ignore).
    5        5          5       0       0
## No. of year nodes for each gear (0 to ignore).
    12       3          10      0       0
## Estimation phase
    2        2           2      -1      -1
## Penalty weight for 2nd differences w=1/(2*sig^2)
    125.     125.       12.5    12.5    12.5
## Penalty weight for dome-shaped selectivity 1=1/(2*sig^2)
    50.0     50.0      200.0   200.0   200.0
## ____________________________________________________________________________ ##

## ____________________________________________________________________________ ##
##                             Priors for Survey q                              ##
## ____________________________________________________________________________ ##
## nits  #number of surveys
    2
## priors 0=uniform density     1=normal density
    1       1
## prior log(mean)
    0       0
## prior sd
    0.1       0.05
## ____________________________________________________________________________ ##

## _______________________OTHER MISCELLANEOUS CONTROLS_________________________ ##
0           ## verbose ADMB output (0=off, 1=on)
1           ## recruitment model (1=beverton-holt, 2=ricker)
0.025       ## std in observed catches in first phase.
0.010       ## std in observed catches in last phase.
0           ## Assume unfished in first year (0=FALSE, 1=TRUE)
0.01        ## Minimum proportion to consider in age-proportions for dmvlogistic
0.20        ## Mean fishing mortality for regularizing the estimates of Ft
0.01        ## std in mean fishing mortality in first phase
5.00        ## std in mean fishing mortality in last phase
-3          ## phase for estimating m_deviations (use -1 to turn off mdevs)
0.1         ## std in deviations for natural mortality
## ____________________________________________________________________________ ##


## eofc
999
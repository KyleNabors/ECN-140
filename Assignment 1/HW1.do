clear 

cd C:\Users\kwnabors\desktop

ssc install estout


use WAGE1.DTA
*opens WAGE1 data set 

summarize wage educ
* calculates mean and standard devatation for both wage and educ

hist wage, name(wagehist)
*draws a histogram for wage 

hist educ, name(educhist)
*draws a histogram for educ

scatter wage educ, name(scatterwageeduc)
*creates a scatterplot with educ as the x-axis and wage as the y-axis

mean wage if educ<=12
*calculates wage if deducation is also less than or equal to 12 

ttest educ == 11, level(95)
*Fail to reject the null hypothsis 

gen log_wage =log(wage)
*creates a new variable that is the log of wage

gen diff = lwage - log_wage

summarize diff

clear
sysuse auto
reg mpg weight foreign

reg mpg foreign
est sto m1
reg mpg foreign weight
est sto m2
reg mpg foreign weight displacement gear_ratio
est sto m3



*star(* 0.05 ** 0.01 *** 0.001)
esttab m1 m2 m3, p star(+ 0.1 * 0.05 ** 0.01)

clear 
set obs 100000
gen x=rnormal(2,4)
hist x, name(histnormal)

clear 
set obs 100000
gen x=rchi2(5)
hist x, name(histrchi2)

clear 
set obs 100000
gen x=rt(10)
hist x, name(ttest)

clear 
set obs 100000
gen x = (rchi2(3)/3)/(rchi2(100)/100)
hist x,name(histftest)






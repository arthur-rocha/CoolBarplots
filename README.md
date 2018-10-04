# CoolBarplots
A serie of cool barplots based in ggplot2 package

# Install
```{r}
devtools::install_github("arthur-rocha/Coolbarplots")
```

# Features
## `point_barplot` A barplot made of randomly generated points.
### Example:
```{r}
library(CoolBarplots)
x= LETTERS[1:3]
y= sample(50:200,size=3,replace=T)
point_barplot(x,y)
```
![](https://github.com/arthur-rocha/CoolBarplots/blob/master/Point_barplot_example.png)

## `line_barplot` A barplot made of randomly generated lines.
### Example:
```{r}
library(CoolBarplots)
x= LETTERS[1:3]
y= sample(50:200,size=3,replace=T)
line_barplot(x,y)
```
![](https://github.com/arthur-rocha/CoolBarplots/blob/master/Line_barplot_example.png)

## `number_barplot` A barplot made of frequency numbers.
### Example:
```{r}
library(CoolBarplots)
x= LETTERS[1:3]
y= sample(5:20,size=3,replace=T)
number_barplot(x,y)
```
![](https://github.com/arthur-rocha/CoolBarplots/blob/master/Number_barplot_example.png)

# Saving plots

As this package is `ggplot2` based, the same function `ggsave()` can be used to save the plots.

### Example:
```{r}
library(CoolBarplots)
library(ggplot2)
x= LETTERS[1:3]
y= sample(5:20,size=3,replace=T)
p=number_barplot(x,y)
ggsave(p,"myplot.png",width = 6.9,height = 4.5)
```

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
x= LETTERS[1:10]
y= sample(50:200,size=10,replace=T)
point_barplot(x,y)
```

## `line_barplot` A barplot made of randomly generated lines.
### Example:
```{r}
library(CoolBarplots)
x= LETTERS[1:10]
y= sample(50:200,size=10,replace=T)
line_barplot(x,y)
```

## `number_barplot` A barplot made of frequency numbers.
### Example:
```{r}
library(CoolBarplots)
x= LETTERS[1:10]
y= sample(1:15,size=10,replace=T)
point_barplot(x,y)
```

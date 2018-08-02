#' Barplot made with numbers
#'
#' Plot the frequency (number) as the bars.
#' @param x A factor vector
#' @param y A frequency vector
#' @param x.label The x axis label
#' @param y.label The y axis label
#' @return A ggplot based plot
#' @export

library(ggplot2)

number_barplot= function(x,y,x.label="X",y.label="Y"){
  x=factor(x)
  n=length(x)
  xs=ys=face=lab=NULL
  j=0
  dt=data.frame(xs,ys,face,lab)
  for (i in 1:n) {
    v=ifelse(y[i]<35,15*y[i],500)
    xs=runif(v,i+j,i+j+1)
    ys=runif(v,0,y[i])
    face=rep(x[i],v)
    lab=rep(y[i],v)
    dt=rbind(dt,data.frame(xs,ys,face,lab))
    j=j+1
  }

  p=ggplot(dt,aes(xs,ys,group=face,col=face,label=lab))
  p=p+geom_text(size=10,alpha=.3,show.legend = F)+geom_point(size=-1)
  p=p+scale_colour_discrete(guide=guide_legend(title = x.label,override.aes = list(size=5,alpha=.4)))
  p=p+theme(panel.background = element_rect(fill="black"),
            panel.grid = element_blank(),
            axis.title.x = element_blank(),
            axis.text.x = element_blank(),
            legend.position = c(.89,.9),
            legend.text = element_text(color="white"),
            legend.background = element_blank(),
            legend.title =element_text(color="white"),
            legend.key = element_blank(),
            plot.background =element_rect(fill = "black"),
            axis.text = element_text(colour = "grey32"),
            axis.ticks = element_blank(),
            axis.title.y = element_text(colour = "white"),
            panel.border = element_blank())
  p=p+ylab(y.label)+scale_y_continuous(limits = c(0,max(y)+.3*max(y)))
  return(p)
}

#' Barplot made with lines
#'
#' Plot random lines as the bars.
#' @param x A factor vector
#' @param y A frequency vector
#' @param x.label The x axis label
#' @param y.label The y axis label
#' @return A ggplot based plot
#' @export


line_barplot= function(x,y,x.label="X",y.label="Y"){
  x=factor(x)
  n=length(x)
  xs=ys=face=lab=NULL
  j=0
  dt=data.frame(xs,ys,face,lab)
  for (i in 1:n) {
    v=ifelse(y[i]<30,15*y[i],450)
    xs=runif(v,i+j,i+j+1)
    ys=runif(v,0,y[i])
    face=rep(x[i],v)
    lab=rep(y[i],v)
    dt=rbind(dt,data.frame(xs,ys,face,lab))
    j=j+1
  }

  p=ggplot(dt,aes(xs,ys,group=face,col=face,label=lab))
  p=p+geom_line(size=.2,alpha=.3,show.legend = F)+geom_path(alpha=.4,size=.2,
                                                   show.legend = F)+geom_point(size=-1)
  p=p+scale_colour_discrete(guide=guide_legend(title = x.label,override.aes = list(size=5,alpha=.4)))
  p=p+theme(panel.background = element_rect(fill="black"),
            panel.grid = element_blank(),
            axis.title.x = element_blank(),
            axis.text.x = element_blank(),
            legend.position = c(.89,.9),
            legend.text = element_text(color="white"),
            legend.background = element_blank(),
            legend.title =element_text(color="white"),
            legend.key = element_blank(),
            plot.background =element_rect(fill = "black"),
            axis.text = element_text(colour = "grey32"),
            axis.ticks = element_blank(),
            axis.title.y = element_text(colour = "white"),
            panel.border = element_blank())
  p=p+ylab(y.label)+scale_y_continuous(limits = c(0,max(y)+.25*max(y)))
  return(p)
}


#' Barplot made with points
#'
#' Plot random points as the bars.
#' @param x A factor vector
#' @param y A frequency vector
#' @param x.label The x axis label
#' @param y.label The y axis label
#' @return A ggplot based plot
#' @export


point_barplot= function(x,y,x.label="X",y.label="Y"){
  x=factor(x)
  n=length(x)
  xs=ys=face=lab=NULL
  j=0
  dt=data.frame(xs,ys,face,lab)
  for (i in 1:n) {
    v=ifelse(y[i]<35,15*y[i],500)
    xs=runif(v,i+j,i+j+1)
    ys=runif(v,0,y[i])
    face=rep(x[i],v)
    lab=rep(y[i],v)
    dt=rbind(dt,data.frame(xs,ys,face,lab))
    j=j+1
  }

  p=ggplot(dt,aes(xs,ys,group=face,col=face,label=lab))
  p=p+geom_point(size=2,alpha=.4)
  p=p+scale_colour_discrete(guide=guide_legend(title = x.label,override.aes = list(size=5,alpha=.4)))
  p=p+theme(panel.background = element_rect(fill="black"),
            panel.grid = element_blank(),
            axis.title.x = element_blank(),
            axis.text.x = element_blank(),
            legend.position = c(.89,.9),
            legend.text = element_text(color="white"),
            legend.background = element_blank(),
            legend.title =element_text(color="white"),
            legend.key = element_blank(),
            plot.background =element_rect(fill = "black"),
            axis.text = element_text(colour = "grey32"),
            axis.ticks = element_blank(),
            axis.title.y = element_text(colour = "white"),
            panel.border = element_blank())
  p=p+ylab(y.label)+scale_y_continuous(limits = c(0,max(y)+.3*max(y)))
  return(p)
}


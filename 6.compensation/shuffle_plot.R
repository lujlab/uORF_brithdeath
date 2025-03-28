library(data.table)
l1=fread("/data/loss_gain_shuffle_out")
l2=fread("/data/gain_loss_shuffle_out")

pdf("/results/fig3c.pdf",width=6,height=6)
hist(l1$l1,breaks=30,col="aquamarine",xlab="Number of genes",main="Genes with Anc. loss and D.mel gain",
     xlim=c(30,90),ylim=c(0,100),axes=F)
abline(v=82,col="red",lty=5,lwd=2)
axis(1,lwd=4,lwd.ticks=4,cex.axis=2)
axis(2,lwd=4,lwd.ticks=4,cex.axis=2)
text(74,45,"P < 0.001",cex=1.5,font=3,xpd=T)
text(65,80,"Expected",cex=1.5,xpd=T)
text(74,60,"Observed",cex=1.5,xpd=T)
dev.off()

pdf("/results/fig3d.pdf",width=6,height=6)
hist(l2$l2,breaks=30,col="aquamarine",xlab="Number of genes",main="Genes with Anc. gain and D.mel loss",
     xlim=c(100,240),ylim=c(0,120),axes=F)
abline(v=231,col="red",lty=5,lwd=2)
axis(1,lwd=4,lwd.ticks=4,cex.axis=2)
#axis(1,c(90,120),c("",""),lwd=4,lwd.ticks=4,cex.axis=2)
axis(2,lwd=4,lwd.ticks=4,cex.axis=2)
text(200,75,"P < 0.001",cex=1.5,font=3,xpd=T)
text(140,110,"Expected",cex=1.5,xpd=T)
text(200,90,"Observed",cex=1.5,xpd=T)
dev.off()
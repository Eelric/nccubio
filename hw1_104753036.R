# read PAM1 from data
pam1<-read.table("C:/Users/mclab3/Desktop/nccubio/hw1/pam1.txt", header=T)

# check PAM1 data
dim(pam1)
str(pam1)
(pam1 <- floor(pam1))

pam1 <- pam1/10000
print(pam1)
# construct PAM250 from PAM1
#pam250 <- pam1???
pam250 <- pam1
for(i in 1:249){
  pam250 <- pam250 * pam1
}
#print(pam250)
pam250 <- pam250 * 100
#print(pam250)
pam250 <- round(pam250)
#print(pam250)

# output PAM250 as a file
write.table("C:/Users/mclab3/Desktop/nccubio/hw1/pam250.txt")


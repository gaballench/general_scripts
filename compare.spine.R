## Testing a random data frame 5 taxa * 10 chars and NAs and a particular
## vector of spine characters to compare with the data frame. As for may-24
## the function works for df and spine vectors with and without NA, 0, and 1.

tax1 <- sample(c(0, 1, NA), 10, replace=T)
tax2 <- sample(c(0, 1, NA), 10, replace=T)
tax3 <- sample(c(0, 1, NA), 10, replace=T)
tax4 <- sample(c(0, 1, NA), 10, replace=T)
tax5 <- sample(c(0, 1, NA), 10, replace=T)

df <- data.frame(rbind(tax1, tax2, tax3, tax4, tax5))
cols <- c("Ch1", "Ch2", "Ch3", "Ch4", "Ch5", "Ch6", "Ch7", "Ch8", "Ch9", "Ch10")
colnames(df) <- cols
rm("tax1", "tax2", "tax3", "tax4", "tax5", "cols")

#P Particular spine vector for tests
provaNA <- c(rep(NA, 10))
prova_comprimento <- c(rep(0, 5))
prova_completo <- sample(c(0, 1, NA), 10, replace=T)
prova_vera <- df["tax1", ]
#spine <- sample(c(0, 1, NA), 10, replace=T)


## compare.spine() function. Comprises three pieces of code: 
## The Identifier, the Name translator and a Summary provider.
## Please note that because the Identifier requires to loop
## spine over df, ncol(df) MUST be equal to length(spine). Such 
## condition is first tested in the if-else structure before any 
## actual comparison takes place.

compare.spine <- function(spine, df) {
        
        if(ncol(df) == length(spine)) {
                
                # Identifier
                char <- vector("list", length(spine))
                taxa_id <- vector("numeric")
                taxa <- vector("character")
                for (i in 1:length(spine)) {
                        char[[i]] <- (which(df[,i] == spine[i]))
                        taxa_id <- c(taxa_id, (which(df[,i] == spine[i])))
                }
                
                # Name translator
                for(i in taxa_id) {
                        taxa <- c(taxa, row.names(df[i, ]))
                }
                
                # Summary provider
                sum_taxa <- factor(taxa)
                if(length(sum_taxa) == 0) {
                        print("Oops! No such spine could be found in the database")
                }
                else {
                        sum_taxa <- summary(sum_taxa)
                        print(sort(sum_taxa))
                }
        }
        
        else {
                return("Error: Number of characters in specimen and dataset differ. No comparison carried out until the number of characters coded for the specimen equals that of the dataset.")
        }

}

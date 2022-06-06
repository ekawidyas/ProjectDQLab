data <- read.transactions(file = "https://storage.googleapis.com/dqlab-dataset/transaksi_dqlab_retail.tsv",
                          format="single", sep = "\t", cols = c(1,2), skip=1)

# TOP 10
top_10 <- sort(itemFrequency(data, type="absolute"), decreasing=TRUE)[1:10]

hasil_top_10 <- data.frame("Nama Produk" = names(top_10), "Jumlah" = top_10, row.names= NULL)
hasil_top_10

#BOTTOM 10
bottom_10 <- sort(itemFrequency(data, type="absolute"), decreasing=FALSE)[1:10]

hasil_bottom_10 <- data.frame("Nama Produk"=names(bottom_10), "Jumlah"=bottom_10, row.names = NULL)
hasil_bottom_10

#KOMBINASI PRODUK
apriori_rules <- apriori(data, parameter=list(supp=10/length(data), conf=0.5, minlen=2, maxlen=3))
apriori_rules <- head(sort(apriori_rules, by='lift', decreasing=T), n=10)
inspect(apriori_rules)

#KOMBINASI PRODUK DENGAN ITEM SLOW-MOVING
apriori_rules_slow_moving <- apriori(data, parameter=list(supp=10/length(data), conf=0.1, minlen=2, maxlen=3))
apriori_rules1_slow_moving <- subset(apriori_rules_slow_moving, lift > 1 & rhs %in% "Tas Makeup")
apriori_rules1_slow_moving <- sort(apriori_rules1_slow_moving, by='lift', decreasing=T)[1:3]
apriori_rules2_slow_moving <-subset(apriori_rules_slow_moving, lift > 1 & rhs %in% "Baju Renang Pria Anak-anak")
apriori_rules2_slow_moving <- sort (apriori_rules2_slow_moving, by='lift', decreasing = T)[1:3]
apriori_rules_slow_moving <- c(apriori_rules1_slow_moving, apriori_rules2_slow_moving)
inspect(apriori_rules_slow_moving)

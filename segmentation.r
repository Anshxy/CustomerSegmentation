library("ggplot2")


customer_data <- read.csv('/Users/macos/Desktop/Customer Segmentation/Mall_Customers.csv') #nolint

k6<-kmeans(customer_data[,3:5],6,iter.max=100,nstart=50,algorithm="Lloyd")


ggplot(customer_data, aes(x =customer_data$SpendingPoints, y =customer_data$AnnualIncomeK)) + 
  geom_point(stat = "identity", aes(color = as.factor(k6$cluster))) +
  scale_color_discrete(name=" ",
                       breaks=c("1", "2", "3", "4", "5","6"),
                       labels=c("Cluster 1", "Cluster 2", "Cluster 3", "Cluster 4", "Cluster 5","Cluster 6")) +
  ggtitle("Segments of Mall Customers")

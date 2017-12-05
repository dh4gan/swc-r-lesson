# Preliminary analysis of inflammation in arthritis patients

# Load data (no headers, csv format)

data <- read.csv(file="data/inflammation-02.csv", header=FALSE)

# Calculate average inflammation by patient and day

# apply a function (mean) to each row (MARGIN=1) in the data
avg_inflammation_patient <- apply(X=data, MARGIN=1, FUN=mean)

# Don't need keywords if order is correct
avg_inflammation_day <- apply(data,2,mean)

# Plot data summaries
# Average inflammation per patient

plot(avg_inflammation_patient)

# Average inflammation per day
plot(avg_inflammation_day)

# Plot maximum inflammation per day
max_inflammation_day <- apply(data,2, max)

plot(max_inflammation_day)

# And same again for minimum

plot(apply(data,2,min))

# Histogram of average patient inflammation
hist(avg_inflammation_patient, breaks=seq(5,8,0.2))



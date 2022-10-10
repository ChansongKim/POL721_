library(tidyverse)
library(haven)

mydata1 <- read_dta("Judicial/Bork5.dta")

unique(mydata1$nominee)[1:10]   # Mac
unique(mydata1$nominee)[11:21]  # Chan Song
unique(mydata1$nominee)[22:32]  # Kaan
unique(mydata1$nominee)[33:43]  # Joe

# Create new variable to store the critical nomination value.
mydata1 <- mydata1 %>% 
  add_column(., critical = NA_character_)

# Coding critical nominations for 11:21.
# Code 0 for non-critical, 1 for critical nomination. Defined by Ruckman (1993)
# as changing the ideological orientation of the court.


# Essentially, this writes something resembling an if-else statement. 
# It doesn't really automate the process: all it does is assign a value 
# to a given nominee. In this case, I have determined that Marshall's 
# nomination was not critical, and therefore, an assigning his "critical" 
# value as "0".

mydata1 <- mydata1 %>% 
  mutate(., critical = case_when(
    nominee == "VINSON" ~ "0")
  )

mydata1 <- mydata1 %>% 
  mutate(., critical = case_when(
    nominee == "CLARK" ~ "0")
  )

mydata1 <- mydata1 %>% 
  mutate(., critical = case_when(
    nominee == "MINTON" ~ "0")
  )

mydata1 <- mydata1 %>% 
  mutate(., critical = case_when(
    nominee == "WARREN" ~ "0")
  )

mydata1 <- mydata1 %>% 
  mutate(., critical = case_when(
    nominee == "HARLAN" ~ "0")
  )

mydata1 <- mydata1 %>% 
  mutate(., critical = case_when(
    nominee == "BRENNAN" ~ "0")
  )

mydata1 <- mydata1 %>% 
  mutate(., critical = case_when(
    nominee == "WHITTAKER" ~ "1")
  )

mydata1 <- mydata1 %>% 
  mutate(., critical = case_when(
    nominee == "STEWART" ~ "0")
  )

mydata1 <- mydata1 %>% 
  mutate(., critical = case_when(
    nominee == "WHITE" ~ "0")
  )

mydata1 <- mydata1 %>% 
  mutate(., critical = case_when(
    nominee == "GOLDBERG" ~ "0")
  )

mydata1 <- mydata1 %>% 
  mutate(., critical = case_when(
    nominee == "FORTAS1" ~ "0")
  )



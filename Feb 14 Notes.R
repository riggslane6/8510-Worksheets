test <- gayguides %>%
  filter(Year == 1980 | Year == 1970) %>%
  group_by(state, Year) %>%
  summarize(count = n())

almhouse.occupations <- read.csv(file = "https://raw.githubusercontent.com/regan008/DigitalMethodsData/main/raw/almshouse-occupationalcodes.csv", header = TRUE)

newalmshouse <- left_join(almhouse.occupations, almshouse_admissions)
                          by = ("Reason.Discharged")
cross_join(almhouse.occupations, almshouse_admissions)

filter <- left_join(almhouse.occupations, almshouse_admissions, 
          by = c("code" = "Descriptions.by.Clerk"))

almhouseinfo <- left_join(almshouse_admissions, almhouse.occupations,
          by = c("Descriptions.by.Clerk" = "code"))

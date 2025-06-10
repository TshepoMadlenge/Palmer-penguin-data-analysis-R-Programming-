library("plamerpenguins")
skim_without_charts(penguins)
glimpse(penguins)
head(penguins)

##To get species column
penguins %>% 
  select(species)

##To get all columns except the species column
penguins %>% 
  select(-species)

##Renaming "Island" column to "Island_new"
penguins %>% 
  rename(island_new=island)

#R#renaming column names to lower cases
rename_with(penguins, tolower)

##cleaning column names
clean_names(penguins)

##sort data using "bill_length_mm" column in ascending order and save in data frame
penguins2<-penguins %>% arrange(bill_length_mm)

view(penguins2)

##calculating the "mean bill length" of penguins living in each island
penguins2 %>% group_by(island) %>% drop_na() %>% summarize(mean_bill_length_mm=mean(bill_length_mm))

##calculating the "max bill length" of penguins living in each island
penguins2 %>% group_by(island) %>% drop_na() %>% summarize(max_bill_length_mm=max(bill_length_mm))

##viewing Adelie penguins data
penguins2 %>% filter(species=="Adelie")

#Add column that measure body in Kg
penguins %>% mutate(body_mass_kg=body_mass_g/1000)

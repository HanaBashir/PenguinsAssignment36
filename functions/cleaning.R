## ---------------------------
##
## Script name: Cleaning.r
##
## Purpose of script: 
##      # A file of the function used for cleaning the Palmer Penguins dataset
##
## Author: N/A 
##
## Date Created: 2024-12-01 
##
##
## ---------------------------
##
## Notes: 
##
## ---------------------------

#A function to clean column names, remove empty rows, remove columns 
#called comment and delta
cleaning_penguin_data <- function(penguins_raw){
  print("Removes comments and delta columns. Converts columns to snake case and removes rows and columns that are empty ")
  penguins_raw %>%
    select(-Comments) %>%       #removes column named 'Comments'
    select(-starts_with("Delta")) %>% #removes column starting with "Delta"
    clean_names() %>% #from janitor; converts column names to snake_case
    remove_empty(c("rows", "cols")) #removes rows&columns that are empty
}

# A function to make sure the species names are shortened
shorten_species <- function(penguins_data) {
  print("shortens the species names") #prints the caption in the console
  penguins_data %>% 
    mutate(species = case_when(
      species == "Adelie Penguin (Pygoscelis adeliae)" ~ "Adelie",
      species == "Chinstrap penguin (Pygoscelis antarctica)" ~ "Chinstrap",
      species == "Gentoo penguin (Pygoscelis papua)" ~ "Gentoo"
    ))
}

# A function to remove any empty columns or rows
remove_empty_columns_rows <- function(penguins_data) {
  penguins_data %>%
    remove_empty(c("rows", "cols"))
}
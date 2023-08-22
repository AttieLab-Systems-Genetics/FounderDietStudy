LivRnaHarmony <- function(dataset, links, annot, ...) {
  filename <- linkpath(dataset, links)
  
  left_join(
    read_csv(filename) %>%
      
      # The `ensembl_gene_id` corresponds to `external_gene_name`.
      rename(trait = "external_gene_name") %>%
      select(-ensembl_gene_id) %>%
      
      # Traits begin in column 2.
      pivot_longer(-1, names_to = "strain_number", values_to = "value") %>%
      
      # Separate `strain_number` into `strain` and `number` (`animal`).
      separate_wider_delim(strain_number, delim = "_",
                           names = c("strain","number")) %>%
      
      # Fix `strain` name for `129`, which begins with the number `1`.
      mutate(strain = ifelse(strain == "A129", "129", strain)),
    
    # Annotation file `annot` relates `animal` (`number`) to `sex` and `condition` (`diet`).
    annot %>%
      mutate(number = as.character(number)),
    by = c("strain", "number")) %>%
    
    # Filter out minimum value, which is stand-in for missing value.
    filter(value > min(value)) %>% 
    
    # Rename columns to harmonize.
    rename(animal = "number",
           condition = "diet") %>%
    
    # These are harmonized columns and their names.
    select(strain, sex, animal, condition, trait, value)
}
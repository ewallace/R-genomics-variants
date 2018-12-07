

### Creating objects in R
### Challenge
##
## What are the values after each statement in the following?
##
## mass <- 47.5            # mass?
## age  <- 122             # age?
## mass <- mass * 2.0      # mass?
## age  <- age - 20        # age?
## mass_index <- mass/age  # mass_index?
### Vectors and data types
## ## We’ve seen that atomic vectors can be of type character, numeric, integer, and
## ## logical. But what happens if we try to mix these types in a single
## ## vector?
## 
## ## What will happen in each of these examples? (hint: use `class()` to
## ## check the data type of your object)
## num_char <- c(1, 2, 3, "a")
## 
## num_logical <- c(1, 2, 3, TRUE)
## 
## char_logical <- c("a", "b", "c", TRUE)
## 
## tricky <- c(1, 2, 3, "4")
## 
## ## Why do you think it happens?
## 
## ## You've probably noticed that objects of different types get
## ## converted into a single, shared type within a vector. In R, we call
## ## converting objects from one class into another class
## ## _coercion_. These conversions happen according to a hierarchy,
## ## whereby some types get preferentially coerced into other types. Can
## ## you draw a diagram that represents the hierarchy of how these data
## ## types are coerced?
heights <- c(63, 69, 60, 65, NA, 68, 61, 70, 61, 59, 64, 69, 63, 63, NA, 72, 65, 64, 70, 63, 65)

# 1.
heights_no_na <- heights[!is.na(heights)] 
# or
heights_no_na <- na.omit(heights)

# 2.
median(heights, na.rm = TRUE)

# 3.
heights_above_67 <- heights_no_na[heights_no_na > 67]
length(heights_above_67)
## ###Challenge
## 1. Using this vector of heights in inches, create a new vector with the NAs removed.
##
##    heights <- c(63, 69, 60, 65, NA, 68, 61, 70, 61, 59, 64, 69, 63, 63, NA, 72, 65, 64, 70, 63, 65)
##
## 2. Use the function `median()` to calculate the median of the `heights` vector.
##
## 3. Use R to figure out how many people in the set are taller than 67 inches.


SNPs_tidy <- read_tsv("data/SNPs_tidy.txt")
SNPs_tidy
ggplot(data = SNPs_tidy, aes(x = POS, y = REF)) +
    geom_point()
## ## Assign plot to a variable
## SNPs_plot <- ggplot(data = SNPs_tidy, aes(x = POS, y = REF))
## ## Draw the plot
## SNPs_plot +
##     geom_point()
ggplot(data = SNPs_tidy, aes(x = POS, y = REF)) +
    geom_point(aes(color = ALT))
ggplot(data = SNPs_tidy, aes(x=POS)) +
    geom_histogram()
ggplot(data = SNPs_tidy, aes(x = MUT)) +
    geom_bar()
ggplot(data = SNPs_tidy, aes(x = MUT, fill = SAMPLE)) +
    geom_bar(position=position_dodge())
ggplot(data = SNPs_tidy, aes(x = MUT, y=QUAL)) +
    geom_point(position=position_jitter())
ggplot(data = SNPs_tidy, aes(x = MUT, y=QUAL)) +
    geom_boxplot()
ggplot(data = SNPs_tidy, aes(x=POS)) +
    geom_histogram() +
    facet_wrap(~SAMPLE)


### Presentation of the survey data
## download.file(url="https://ndownloader.figshare.com/files/2292169",
##               destfile = "data/portal_data_joined.csv")
library("tidyverse")
## download.file(url="https://ndownloader.figshare.com/files/2292169",
##               destfile = "data/portal_data_joined.csv")
variants

## Challenge
## Based on printing `variants` and the values `names(variants)`, can you
## * Change the name of the tenth column to the short sample name "SRR097977"?


## Challenge
## Based on printing `variants` and the the output of `str(variants)`, can you answer the following questions?
## * What are are the classes of the object `variants`?
## * How many rows and how many columns are in this object?
## * How many columns contain character information?


## Indexing and subsetting data frames
### Challenges:
###
### 1. Create a `data.frame` (`variants_200`) containing only the
###    data in row 200 of the `variants` dataset.
###
### 2. Notice how `nrow()` gave you the number of rows in a `data.frame`?
###
###      * Use that number to pull out just that last row in the data frame
###      * Compare that with what you see as the last row using `tail()` to make
###        sure it's meeting expectations.
###      * Pull out that last row using `nrow()` instead of the row number
###      * Create a new data frame object (`variants_last`) from that last row
###
### 3. Use `nrow()` to extract the row that is in the middle of the
###    data frame. Store the content of this row in an object named
###    `variants_middle`.
###
### 4. Combine `nrow()` with the `-` notation above to reproduce the behavior of
###    `head(variants)`, keeping just the first through 6th rows of the variants
###    dataset.

## ## Challenge:
## ##  There are a few mistakes in this hand-crafted `data_frame`,
## ##  can you spot and fix them? Don't hesitate to experiment!
## animal_data <- data_frame(
##   animal = c(dog, cat, sea cucumber, sea urchin),
##   feel = c("furry", "squishy", "spiny"),
##   weight = c(45, 8 1.1, 0.8)
## )
## ## Challenge:
## ##   Can you predict the class for each of the columns in the following
## ##   example?
## ##   Check your guesses using `str(country_climate)`:
## ##   * Are they what you expected? Why? why not?
## ##   * What would you need to change to ensure that each column had the
## ##     accurate data type?
## country_climate <- data_frame(
##    country = c("Canada", "Panama", "South Africa", "Australia"),
##    climate = c("cold", "hot", "temperate", "hot/temperate"),
##    temperature = c(10, 30, 18, "15"),
##    northern_hemisphere = c(TRUE, TRUE, FALSE, "FALSE"),
##    has_kangaroo = c(FALSE, FALSE, FALSE, 1)
##  )

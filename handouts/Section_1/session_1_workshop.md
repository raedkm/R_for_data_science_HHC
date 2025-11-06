## Session 1: Introduction to Data Science and R

### 🛠️ Workshop

1.  **Installing Base R**
    -   Guide to download and install from https://cran.r-project.org/
    -   Run simple commands in the R console:

        ``` r
        2 + 2
        mean(c(1, 2, 3, 4))
        ```
2.  **Understanding IDEs and Their Role**

-   **What is and IDE?**

    -   An Integrated Development Environment (IDE) provides tools to write, run, and manage code efficiently.
    -   Base R lacks features like script saving, syntax highlighting, and visualization tools.

-   **Why use an IDE?**

    -   Easier to write and organize code
    -   Better debugging and visualization
    -   Integration with projects and version control

3.  **Installing Positron**

    -   Download and install from [Positron](https://posit.co/blog/introducing-positron/)
    -   Install and launch Positron.
    -   Create a new R project:

4.  **Running Commands and Saving Scripts**

    -   In Positron, create a new script file (`.R`).
    -   Write and run:

        ``` r
        x <- 5
        y <- 10
        x + y
        ```

    -   Save the script and run it from the IDE

5.  Installing your first package

    -   Open the console and install the `tidyverse` package:

    ``` r
    install.packages("tidyverse")     
    library(tidyverse)
    ```

    -   Explore a built-in dataset:

    ``` r
    summary(mtcars)
    ggplot(mtcars, aes(x = mpg, y = hp)) + geom_point()
    ```

6.  Creating a Project Folder

    -   Create a folder for your R community work.
    -   Save scripts, notes, and datasets in organized subfolders.
    -   Use version control (e.g., GitHub) to share and collaborate.

------------------------------------------------------------------------

By the end of this session, participants will have a working R environment, understand the value of IDEs, and be able to write and run basic R code using Positron.
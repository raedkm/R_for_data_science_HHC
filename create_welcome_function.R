# Create project folder structure and markdown files for R for Data Science Community

create_project_structure <- function(
  base_path = "R_for_Data_Science_Community"
) {
  folders <- c(
    "curriculum",
    "announcements",
    "slides",
    "handouts",
    "datasets"
  )

  # Create subfolders
  for (folder in folders) {
    dir.create(file.path(folder), showWarnings = FALSE)
  }

  # Define markdown content
  files <- list(
    "README.md" = "# R for Data Science Community Project\n\nThis repository contains materials for a workplace learning initiative to introduce R programming and data science fundamentals.\n\n## Structure\n- `curriculum/`: Weekly learning schedule\n- `announcements/`: Kickoff email and communications\n- `slides/`: Weekly slide outlines\n- `handouts/`: Printable handouts with exercises\n- `datasets/`: Sample data for practice\n\n## Getting Started\n1. Clone this repository\n2. Open Positron IDE and start with Week 1 materials\n3. Follow the curriculum and complete exercises\n\n## Resources\n- Book: https://r4ds.hadley.nz/\n- IDE: https://posit.co/blog/introducing-positron/\n\n## License\nMIT License",

    "curriculum/curriculum.md" = "## R for Data Science Community Curriculum\n\n**Objective:** Introduce R programming and data science fundamentals to analysts and non-technical staff in a healthcare startup using the book *R for Data Science (2nd Edition)* and Positron IDE.\n\n### Week 1: Getting Started with R and Positron\n- Day 1–2: Introduction to R, Positron IDE, installing packages\n- Day 3–5: Chapter 1: Introduction — R basics, using scripts, running code\n- Day 6: Chapter 2: Workflow: scripts and projects\n\n### Week 2: Data Visualization with ggplot2\n- Day 1–3: Chapter 3: Data Visualization — ggplot2 basics\n- Day 4–5: Chapter 4: Workflow: visualization\n- Day 6: Mini project: create a simple plot from sample healthcare data\n\n### Week 3: Data Transformation with dplyr\n- Day 1–3: Chapter 5: Data Transformation — filter(), mutate(), summarize()\n- Day 4–5: Chapter 6: Workflow: scripts\n- Day 6: Practice session: transform a dataset using dplyr\n\n### Week 4: Tidy Data and Data Import\n- Day 1–2: Chapter 7: Tidy Data — pivot_longer(), pivot_wider()\n- Day 3–4: Chapter 8: Data Import — readr basics\n- Day 5–6: Practice: import and tidy a CSV file\n\n### Week 5: Programming with R\n- Day 1–3: Chapter 9: Programming — writing functions, control flow\n- Day 4–5: Chapter 10: Workflow: projects\n- Day 6: Build a small reusable function for data cleaning\n\n### Week 6: Wrapping Up and Mini Projects\n- Day 1–3: Review key concepts (visualization, transformation, tidy data)\n- Day 4–6: Mini project: analyze a small healthcare dataset end-to-end\n\n**Resources:**\n- Book: https://r4ds.hadley.nz/\n- IDE: https://posit.co/blog/introducing-positron/\n\n**Format:** Daily 30–45 minute sessions with hands-on practice and discussion.\n**Goal:** Build foundational R skills and foster a collaborative data science culture in the organization.",

    "announcements/kickoff_email.md" = "## Kickoff Invitation: R for Data Science Community 🚀\n\nDear Team,\n\nI’m excited to invite you to a new initiative we’re launching — a daily **R for Data Science Community**!\n\nWhether you're an analyst, a curious learner, or someone who’s never written a line of code, this is your chance to build foundational skills in data science using R.\n\nWe’ll use the free book *R for Data Science (2nd Edition)* and the new **Positron IDE** to guide us through hands-on, bite-sized learning sessions. Each day, we’ll gather for **30–45 minutes** to explore, practice, and grow together.\n\n### Why join?\n- 🌱 Learn R from scratch — no prior experience needed\n- 🧠 Build real data skills that apply to healthcare analytics\n- 🤝 Connect with peers and grow a data-driven culture\n- 🎯 Work on mini-projects using real healthcare data\n\n**Kickoff:** [Insert Date & Time]  \n**Location:** [Insert Room or Link]  \n**Bring:** Your laptop and curiosity!\n\nLet’s build something impactful together — one line of code at a time.\n\nWarm regards,  \nRaed Alotaibi  \nCenter of Excellence Senior Manager",

    "slides/week1_slides.md" = "## Week 1 Slide Outline: Getting Started with R\n\n### Slide 1: Welcome & Objectives\n- What is R?\n- Why R for healthcare analytics?\n- Goals of the community\n\n### Slide 2: Tools Setup\n- Positron IDE overview\n- Installing R and packages\n\n### Slide 3: R Basics\n- Running code\n- Using scripts\n- RStudio projects\n\n### Slide 4: Daily Workflow\n- How we’ll learn together\n- Book chapters and schedule\n\n### Slide 5: Q&A and Discussion\n- Open floor for questions\n- Share expectations",

    "handouts/week1_handout.md" = "## Week 1 Handout: Getting Started with R\n\n### Key Concepts\n- R is a programming language for data analysis\n- Positron IDE is a modern interface for R development\n- R scripts help organize and run code efficiently\n\n### Exercises\n1. Install Positron IDE and open a new R project\n2. Create a script and write:\n```r\nx <- 5\ny <- 10\nx + y\n```\n3. Install the `tidyverse` package:\n```r\ninstall.packages(\"tidyverse\")\n```\n4. Explore the `mtcars` dataset:\n```r\nsummary(mtcars)\nplot(mtcars$mpg, mtcars$hp)\n```\n\n### Discussion Prompt\n- What challenges do you face when working with data?\n- What do you hope to learn from this community?"
  )

  # Write markdown files
  for (path in names(files)) {
    writeLines(files[[path]], file.path(path))
  }

  message("✅ Project folder created successfully.")
}

# Run the function
create_project_structure()

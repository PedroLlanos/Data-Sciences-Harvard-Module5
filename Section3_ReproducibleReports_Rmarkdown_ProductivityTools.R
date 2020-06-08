#Reproducible reports with R Markdown
#Key points:
#The final output is usually a report, textual descriptions and figures, and tables.
#The aim is to generate a reproducible report in R markdown and knitr.
#Features of Rmarkdown: code and text can be combined to the same document and figures and tables are automatically added to the file.

#R Markdown
#Useful links
#You can learn more about R Markdown at markdowntutorial.com.

#The code for the sample report is available .

#Key points:
#R Markdown is a format for literate programming documents. Literate programming weaves instructions, documentation and detailed comments in between machine executable code, producing a document that describes the program that is best for human understanding.

#Start an R markdown document by clicking on File > New File > the R Markdown

#The output could be HTML, PDF, or Microsoft Word, which can be changed in the header output, e.g. pdf_document / html_document/p>
  
#Code
# a sample code chunk
```{r}
summary(pressure)
```

# When echo=FALSE, code will be hided in output file
```{r echo=FALSE}
summary(pressure)
```

# use a descriptive name for each chunk for debugging purpose
```{r pressure-summary}
summary(pressure)
```

#Knitr
#Key points:
#The knitr package is used to compile R markdown documents.
#The first time you click the "knit" button on the editor pane a pop-up window will prompt you to install packages, but after that is completed, the button will automatically knit your document.
#github_document gives a .md file, which will give the best presentation on GitHub

#Code
#output: html_document 
#output: pdf_document 
#output: word_document
#output: github_document
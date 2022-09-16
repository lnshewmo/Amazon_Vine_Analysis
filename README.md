<img src='https://github.com/lnshewmo/Amazon_Vine_Analysis/blob/main/challenge_files/vine.png' height=50% width=50%>

# Amazon_Vine_Analysis

Using Pyspark in Google Colab, Amazon Web Services (AWS) RDB and S3, and Pandas to evaluate bias in Amazon Vine reviews

## Overview

The Amazon Vine program is a service connecting product vendors with paid reviewers to evaluate products and publish reviews.  

This project aims to determine if there is any bias toward favorable reviews from Vine members in the dataset.  A lawn and garden products dataset was extracted from an AWS S3 bucket to a cloud instance of Google Colab using Apache Spark 3.2.2.  Four tables were created from the dataset and loaded to PostgreSQL.  The `vine_table` was exported as a `.csv` file using pgAdmin and read into a Pandas dataframe using Jupyter Notebook to perform the bias analysis.

## Resources

- [link](https://github.com/lnshewmo/Amazon_Vine_Analysis/blob/main/challenge_files/Amazon_Reviews_ETL.ipynb) to the Colab workbook for the ETL process from Amazon Web Services to PostgreSQL
  - the selected dataset for extraction is [amazon_reviews_us_Lawn_and_Garden_v1_00.tsv.gz  ](https://s3.amazonaws.com/amazon-reviews-pds/tsv/amazon_reviews_us_Lawn_and_Garden_v1_00.tsv.gz)
- [link](https://github.com/lnshewmo/Amazon_Vine_Analysis/blob/main/challenge_files/vine_table.csv) to the cleaned Amazon Reviews dataset exported from PostgreSQL
- [link](https://github.com/lnshewmo/Amazon_Vine_Analysis/blob/main/challenge_files/Vine_Analysis.ipynb) to the jupyter notebook file used to evaluate bias in the cleaned Amazon Reviews dataset

## Results

Table 1.  Review Counts and Percentages for Vine and Unpaid Reviews of Lawn and Garden products

<img src="https://github.com/lnshewmo/Amazon_Vine_Analysis/blob/main/challenge_files/review_table.png" height=65% width=65%>

## Summary

Positivity bias in Amazon Vine reviews would be demonstrated as a tendency for Vine reviewers to give better reviews (more stars) than unpaid reviewers on comparable products.  At first glance, for the Lawn and Garden dataset, that does not appear to be the case.  The percentage of 5-Star reviews for Vine reviewers is not greater than that of unpaid reviewers.

The sample size of the Vine group is notably smaller than the unpaid reviewer group.  This should be considered in selecting an appropriate statistical test to evaluate differences and interpretation of the result.  

Using the whole dataset, mean star counts could be calculated for vine and unpaid reviews.  A t-test could then be run to determine if the mean star rating for the Vine group is larger than the mean star rating for the unpaid group.

---
Contact:  Laura Miller (laura.shewmon@gmail.com)

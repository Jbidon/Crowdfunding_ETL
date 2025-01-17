# Crowdfunding_ETL
## Project 2

### Run Jupyter Notebook File to Create CSVs
1. Open the jupyter notebook file called ETL_Mini_Project_Jbidon.ipynb
2. Import the dependencies and set the column width by running the first cell
3. Extract the crowdfunding.xlsx data by running cells 2-3
4. Create the Category and Subcategory DataFrames and export them into CSV files by running cells 4-13
5. Create the Campaign DataFrame and export them into CSV files by running cells 14-21
6. Extract the contacts.xlsx Data then Create the Contacts DataFrame using Pandas by running cells 22-36

### SQL
1. Start pgAdmin and open the "crowdfunding_db_schema.sql" file.
2. Run the "Drop Tables" section.
3. Run the "Create Tables" section.
4. Import the csv files into each of the tables, starting with "contacts", "category", "subcategory", then "campaign". (Make sure to import the "campaign" csv file last.)
5. Finally, you can check that the tables were imported correctly by running each line in the "Check Data Import" section individually.

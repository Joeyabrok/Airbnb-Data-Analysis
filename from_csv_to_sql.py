
import pandas as pd
import glob, os
from sqlalchemy import create_engine
#http://insideairbnb.com/get-the-data/

#This Python Script writes all the information from the downloaded airbnb csv files to a MySQL database

files=['listings.csv','reviews.csv']
for file in files:
    df = pd.read_csv(file)
    
    # Create SQLAlchemy engine to connect to MySQL Database
    engine = create_engine("mysql+mysqldb://root:<PASSWORD>@localhost:3306/airbnb")
    
    # Convert dataframe to sql table                                   
    df.to_sql(file[:-4], engine, index=False)
    
    print('done')

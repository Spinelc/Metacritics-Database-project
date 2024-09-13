#%% importing packages
print('Progress: importing packages')
import pandas as pd


#%% Loading all datasets
print('Progress: loading datasets')

## Meta
print('Progress: loading datasets: Meta')

meta_df = pd.read_excel('data/metaClean43Brightspace.xlsx',
                        dtype={'studio':'category',
                               'rating':'category',
                               'genre':'category'},
                               parse_dates=['RelDate']
                               )

## Sales
print('Progress: loading datasets: Sales')
sales_df = pd.read_excel('data/sales.xlsx')

## Expert reviews
print('Progress: loading datasets: Expert reviews')
expert_reviews_df = pd.read_excel('data/ExpertReviewsClean43LIWC.xlsx',
                                  usecols=['url', 'idvscore', 'reviewer', 'posemo', 'negemo'])

## User reviews
print('Progress: loading datasets: User reviews')
user_reviews_df = pd.read_excel('data/UserReviewsClean43LIWC.xlsx')

#%% 
print(200*'=')
print('\nStarting analysis for determining character lengths.\n')
print(200*'=')

max_lenth = user_reviews_df[~user_reviews_df['reviewer'].isnull()]['reviewer'].apply(len).max()

print(f"The max length of a single string is {max_lenth}")


# %%

def print_max_length(data_frame, column_name):
    max_length = data_frame[~data_frame[column_name].isnull()][column_name].apply(len).max()
    print(f"Maximum character length of column {column_name} is {max_length} characters")


print_max_length(meta_df, 'title')

# %%

print_max_length(meta_df, 'title')
print_max_length(meta_df, 'rating')

print('\n\nnmissing values analysis of meta_df and sales:')
print('meta data:')
print(meta_df.isnull().sum())
print('\nsales data:')
print(sales_df.isnull().sum())

print('\n\ score analysis')
print(meta_df[['metascore', 'userscore']].describe())

print('concatenating expert and user reviews names')

user_and_expert = pd.concat([user_reviews_df, expert_reviews_df])
print_max_length(user_and_expert, 'reviewer')
print(user_and_expert[['posemo', 'negemo']].describe())
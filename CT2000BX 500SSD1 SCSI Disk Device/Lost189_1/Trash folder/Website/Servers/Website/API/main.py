from fastapi import FastAPI
import pandas
import os
app = FastAPI()

def ud(user): 
    return "G:\\Servers\\Website\\Directories\\UserData\\"+user+'\\'

@app.get("/Utilities/To Do List/")
async def read_item(method, user, line='', value='',):
    csv = pandas.read_csv(ud(user) + 'Utilities_To Do List.csv')
    if method == 'read':
        return csv
    if method == 'write':
        csv.loc[int(line),'Value'] = value
        csv.to_csv(ud(user) + 'Utilities_To Do List.csv', index=False)
        return '"',value,'" has been written'
    if method == 'clear':
        with open(ud(user) + 'Utilities_To Do List.csv','w') as csvfile:
            csvfile.write('Value')
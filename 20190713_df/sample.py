import pandas as pd


# df = pd.DataFrame({'住所': ['東京都港区日野', '千葉県柏市木葉', '北海道十勝市志津']})
# df = df.str.split('県')
# print(df)

df2 = pd.Series(['東京都港区日野', '千葉県柏市木葉', '北海道十勝市志津'])
df2 = df2.str.replace('県', '県 ').str.replace('都', '都 ').str.replace('道', '道 ')
print(df2)
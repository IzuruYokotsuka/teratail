from bs4 import BeautifulSoup
import requests


def getCookies(cookie_jar, domain):
    cookie_dict = cookie_jar.get_dict(domain=domain)
    found = ['%s=%s' % (name, value) for (name, value) in cookie_dict.items()]
    return ';'.join(found)


email="hoge"
pw="fuga"

payload = {
    'utf8': '✓',
    'identity': user,
    'password': pas,
}

s = requests.Session()
r = s.get('https://qiita.com')
soup = BeautifulSoup(r.text, 'html.parser')
auth_token = soup.find(attrs={'name': 'authenticity_token'}).get('value')
payload['authenticity_token'] = auth_token

cookie = getCookies(r.cookies, ".qiita.com")

res=s.post('https://qiita.com/login', data=payload, cookies=hoge)

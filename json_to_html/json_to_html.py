# -*- coding: utf_8 -*-
import json

JSON_FILE = "sample.json"


def get_pages(json_path):
    try:
        f = open(json_path)
        json_data = json.load(f)
        f.close()
        ret = json_data['pages']
        return ret
    except KeyError:
        return 0


if __name__ == '__main__':
    pages = get_pages(JSON_FILE)
    for page in pages:
        file_name = page['id'] + '.html'
        content = ''
        content += f"<h1>{page['title']}</h1>\n"
        content += f"<p>{page['description']}</p>"
        f = open(file_name, 'w')
        f.write(content)
        f.close()

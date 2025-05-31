# -*- coding: utf-8 -*-
from bottle import Bottle, template, static_file, redirect

app = Bottle()

# Статические файлы
@app.route('/static/<filename:path>')
def serve_static(filename):
    return static_file(filename, root='./static')

# Маршруты
@app.route('/')
def index():
    return template('index')

@app.route('/about')
def about():
    return template('about')

@app.route('/calculator1')
def calculator1():
    return template('calculator1')

@app.route('/calculator2')
def calculator2():
    return template('calculator2')

@app.route('/calculator3')
def calculator3():
    return template('calculator3')

if __name__ == '__main__':
    app.run(host='localhost', port=8080, debug=True, reloader=True)
from flask import Flask
#import pandas as pd

app = Flask(__name__)

@app.route('/')
def hello():
	return "Hello World!"


@app.route("/dummy")
def index():
 #   df = pd.DataFrame({ 'A':[1,2,3] })

    #print(df )
    #print('hello')
    #print(' doc command below')
    #print('set FLASK_APP=app.py')

    #web_data.welcome() # not used has some code you might want to copy
    #c.get_price_from_ticker()

    return "also .... Hello World!"

if __name__ == '__main__':
	app.run(host='0.0.0.0', port=8000)
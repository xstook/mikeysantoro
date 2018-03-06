from flask import Flask, render_template, request
app = Flask(__name__)

@app.route('/')
def index():
	return render_template("index.tpl")

@app.route('/about')
def about():
    print(request.url)
    return render_template("about.tpl")

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80, debug=True)

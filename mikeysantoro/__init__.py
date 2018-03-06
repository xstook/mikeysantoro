from flask import Flask, render_template, request
import math
app = Flask(__name__)


@app.route('/')
def index():
	return render_template("index.tpl")

@app.route('/about')
def about():
    return render_template("about.tpl")

@app.route('/isprime')
def isprime():
    return render_template("isprime.tpl")


def is_prime(n):
    """Return 'True' if 'n' is a prime number. False otherwise."""
    if n == 1:
        return None #False # 1 is not prime

    # If it's even and not 2, then it's not prime
    if n == 2:
        return n #True
    if n > 2 and n % 2 == 0:
        return None #False
    
    max_divisor = int(math.floor(math.sqrt(n)))
    for d in range(3, 1 + max_divisor, 2):
        if n % d == 0:
            return None #False

    return n #True

@app.route('/_calc_prime', methods=['POST'])
def calc_prime():
    user_number = int(request.form['user_number'])

    result = is_prime(user_number)

    if result is None:
        return "False"
    else:
        return "True"


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80, debug=True)

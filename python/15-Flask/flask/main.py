from flask import Flask, render_template, request
## Create a Flask application instance which will be used to handle incoming requests and route them to the appropriate functions and will also be used to configure the application settings and manage the application's lifecycle and WSGI application.
## WSGI (Web Server Gateway Interface) is a specification that defines how web servers communicate with web applications in Python. It allows for a standardized way to handle HTTP requests and responses, enabling developers to create web applications that can run on various web servers without modification.
app=Flask(__name__)
## Define a route for the root URL ("/") that will render the "index.html" template when accessed via a GET request. The @app.route("/") decorator is used to specify the URL endpoint for this route, and the index() function is defined to handle the logic for rendering the template.
#@app.route("/")
# def welcome():
#     return "<html><body><h1>Welcome to my Flask app!</h1><p>This is the home page. Go to <a href='/hello'>/hello</a> to see the hello page.</p></body></html>"
# @app.route("/hello")
# def hello():
#     return "Hello, World! This is the hello page. Go back to / to see the home page."
@app.route("/")
def welcome():
    return render_template("index.html")
@app.route("/about")
def about():
    return render_template("about.html")

if __name__=="__main__":
    app.run(debug=True)
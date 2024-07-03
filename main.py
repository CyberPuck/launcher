# Web framework
from flask import Flask
from flask import render_template
from flask import send_file
# GPIO access
from gpiozero import LED
from time import sleep
import os

if os.name != 'nt':
    launch_pin = LED(4)

app = Flask(__name__)

@app.route("/", methods=['GET'])
def server_html():
    return render_template('index.html')

@app.route("/launch", methods=['POST'])
def launch():
    if os.name != 'nt':
        launch_pin.on()
        sleep(2)
        launch_pin.off()
    return render_template('index.html')
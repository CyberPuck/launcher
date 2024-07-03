# Launcher 🚀

This application is a "full stack" for setting up a Python based web application.
Its goals are the following:

1. Have RESTful API enable turning a GPIO pin "ON"
2. The GPIO operation is atomic
3. Serve up a "webpage"

## Dev Setup

1. Create a virtual environment
2. Install `requirements.txt` via pip
3. Run `main.py`

## REST API

### Base `/`

Return the webpage.

### POST `/launch`

Turn the GPIO pin on (server configured), delay 5 seconds, then switch the GPIO
pin off.

#### Return Codes

|Code Number|State of System|
|---|---|
|200|Pin was set on|
|503|Server GPIO pin is still on cool down|

## Webpage

Simple page with a button to "launch".

## Framework

- Trying out [flask](https://flask.palletsprojects.com/en/3.0.x) for the backend
- Going to try a simple HTTP page for frontend
- Using [GPIOZero](https://github.com/gpiozero/gpiozero) for GPIO access
- Using [Gunicorn](https://gunicorn.org/) as WSGI
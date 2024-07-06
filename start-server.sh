#!/bin/sh

gunicorn --config gunicorn-config.py main:app
#!/bin/bash
TIMEOUT=120
exec gunicorn -b 0.0.0.0:4041 app:app \
--timeout $TIMEOUT
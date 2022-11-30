#!/bin/bash

set -e

exec uvicorn --workers 1 --host 0.0.0.0 --port 80 drf_example.asgi:application
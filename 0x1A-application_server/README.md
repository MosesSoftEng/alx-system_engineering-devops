# :book: 0x1A. Application server
## Application server


## Project setup
```bash
mkdir 0x1A-application_server
touch 0x1A-application_server/README.md
```

# :computer: Tasks
Set up and Server AirBnB clone v2 - Web framework on web-01
## [0. Set up development with Python]()
```bash
# AirBnB_clone_v2 clone repo
git clone https://github.com/MosesSoftEng/AirBnB_clone_v2.git AirBnB_clone_v2

# Install flask
pip3 install Flask

# Run flask web app server
python3 -m web_flask.0-hello_route

# Error: Port 5000 is in use by another program
# List ports and application using port 5000
sudo netstat -lpdn | grep ":5000"

# Kill the app and processes
sudo pkill -f agent

# Run flask web app server
python3 -m web_flask.0-hello_route

# Test flask connection in a different terminal
curl 127.0.0.1:5000/airbnb-onepage/
```

## [1. Set up production with Gunicorn]()
```bash
# Install Gunicorn
pip install gunicorn

# Confirm installation
gunicorn --version

# Set entry point to flask app
gunicorn --bind 0.0.0.0:5000 web_flask.0-hello_route:app

# Test gunicorn in a different terminal
curl 127.0.0.1:5000/airbnb-onepage/
```

## [2. Serve a page with Nginx](2-app_server-nginx_config)
```bash
```

# :books: References
1. []()


# :man: Author and Credits.
This project was done by [SE. Moses Mwangi](https://github.com/MosesSoftEng). Feel free to get intouch with me;

:iphone: WhatsApp [+254115227963](https://wa.me/254115227963)

:email: Email [moses.soft.eng@gmail.com](mailto:moses.soft.eng@gmail.com)

:thumbsup: A lot of thanks to [ALX-Africa Software Engineering](https://www.alxafrica.com/) program for the project requirements.

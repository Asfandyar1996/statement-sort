"""
Passenger WSGI file for shared hosting (cPanel Python App)
This is used by Namecheap shared hosting with Python support
"""
import sys
import os

# Add the app directory to path
sys.path.insert(0, os.path.dirname(__file__))

# Set environment variable (or set it in cPanel Python App settings)
# os.environ['CLAUDE_API_KEY'] = 'your-api-key-here'

# Import the Flask app
from app import app as application

if __name__ == "__main__":
    application.run()


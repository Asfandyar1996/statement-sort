# Deploy to Namecheap Hosting

## ⚠️ Important: Hosting Type Required

Namecheap offers different hosting types. For Flask apps, you need:

### ✅ **VPS Hosting** (Recommended)
- Full control over the server
- Can install Python, pip, and all dependencies
- Can run Flask apps with gunicorn
- **Best option for Flask apps**

### ⚠️ **Shared Hosting with Python Support**
- Some Namecheap shared hosting plans support Python
- Check your cPanel for "Python App" or "Setup Python App"
- More limited but may work for simple apps

### ❌ **Basic Shared Hosting**
- Only supports PHP/WordPress
- **Will NOT work** for Flask apps

---

## Step 1: Check Your Hosting Type

1. **Log into your Namecheap account**
2. **Go to cPanel** (if you have shared hosting)
3. **Look for:**
   - "Python App" or "Setup Python App" → ✅ You can use shared hosting
   - "Terminal" or "SSH Access" → ✅ You have VPS/dedicated server
   - Neither → ❌ You need to upgrade to VPS

---

## Step 2A: Deploy on VPS (Recommended)

### Prerequisites
- SSH access to your VPS
- Root or sudo access
- Python 3.8+ installed

### Steps

1. **SSH into your VPS:**
   ```bash
   ssh username@your-server-ip
   ```

2. **Install Python and dependencies:**
   ```bash
   # Update system
   sudo apt update  # For Ubuntu/Debian
   # or
   sudo yum update  # For CentOS/RHEL
   
   # Install Python and pip
   sudo apt install python3 python3-pip python3-venv  # Ubuntu/Debian
   # or
   sudo yum install python3 python3-pip  # CentOS/RHEL
   
   # Install gunicorn (WSGI server)
   sudo pip3 install gunicorn
   ```

3. **Upload your code:**
   ```bash
   # Option 1: Use git (if you have GitHub repo)
   git clone https://github.com/Asfandyar1996/statement-sort.git
   cd statement-sort
   
   # Option 2: Use SCP to upload files
   # From your local machine:
   scp -r /Users/asfandyar.qadri/Documents/statement-sort username@your-server:/var/www/
   ```

4. **Create virtual environment and install dependencies:**
   ```bash
   cd /var/www/statement-sort  # or wherever you uploaded
   python3 -m venv venv
   source venv/bin/activate
   pip install -r requirements.txt
   pip install gunicorn
   ```

5. **Set environment variable:**
   ```bash
   export CLAUDE_API_KEY="your-api-key-here"
   # Or add to ~/.bashrc for persistence:
   echo 'export CLAUDE_API_KEY="your-api-key-here"' >> ~/.bashrc
   ```

6. **Create systemd service (for auto-start):**
   ```bash
   sudo nano /etc/systemd/system/statement-sort.service
   ```
   
   Add this content:
   ```ini
   [Unit]
   Description=Statement Sort Flask App
   After=network.target
   
   [Service]
   User=www-data
   WorkingDirectory=/var/www/statement-sort
   Environment="PATH=/var/www/statement-sort/venv/bin"
   Environment="CLAUDE_API_KEY=your-api-key-here"
   ExecStart=/var/www/statement-sort/venv/bin/gunicorn --bind 0.0.0.0:5000 app:app
   Restart=always
   
   [Install]
   WantedBy=multi-user.target
   ```

7. **Start the service:**
   ```bash
   sudo systemctl daemon-reload
   sudo systemctl enable statement-sort
   sudo systemctl start statement-sort
   sudo systemctl status statement-sort
   ```

8. **Configure Nginx (reverse proxy):**
   ```bash
   sudo nano /etc/nginx/sites-available/statement-sort
   ```
   
   Add this:
   ```nginx
   server {
       listen 80;
       server_name your-domain.com;
       
       location / {
           proxy_pass http://127.0.0.1:5000;
           proxy_set_header Host $host;
           proxy_set_header X-Real-IP $remote_addr;
           proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
           proxy_set_header X-Forwarded-Proto $scheme;
       }
   }
   ```
   
   Enable the site:
   ```bash
   sudo ln -s /etc/nginx/sites-available/statement-sort /etc/nginx/sites-enabled/
   sudo nginx -t
   sudo systemctl reload nginx
   ```

9. **Set up SSL (HTTPS):**
   ```bash
   sudo apt install certbot python3-certbot-nginx
   sudo certbot --nginx -d your-domain.com
   ```

---

## Step 2B: Deploy on Shared Hosting with Python Support

If your cPanel has "Python App" or "Setup Python App":

1. **Log into cPanel**
2. **Find "Python App" or "Setup Python App"**
3. **Create a new Python app:**
   - **App directory:** `public_html/statement-sort` (or subdomain)
   - **Python version:** 3.8 or higher
   - **App URL:** Choose a subdomain or subdirectory
4. **Upload files via File Manager or FTP:**
   - Upload all files to the app directory
5. **Install dependencies:**
   - In cPanel Python App, go to "Manage" → "Install Python Package"
   - Install: `flask`, `pypdf`, `requests`, `openpyxl`, `gunicorn`
6. **Set environment variable:**
   - In Python App settings, add: `CLAUDE_API_KEY=your-api-key-here`
7. **Create `passenger_wsgi.py`** in the app directory:
   ```python
   import sys
   import os
   
   # Add the app directory to path
   sys.path.insert(0, os.path.dirname(__file__))
   
   # Set environment variable
   os.environ['CLAUDE_API_KEY'] = 'your-api-key-here'
   
   # Import the Flask app
   from app import app as application
   
   if __name__ == "__main__":
       application.run()
   ```
8. **Restart the app** in cPanel

---

## Step 3: Update app.py for Production

The current `app.py` should work, but for production, you might want to use gunicorn instead of Flask's built-in server.

### Create `wsgi.py`:
```python
from app import app

if __name__ == "__main__":
    app.run()
```

### Run with gunicorn:
```bash
gunicorn --bind 0.0.0.0:5000 --workers 2 --timeout 120 app:app
```

---

## Troubleshooting

### Check if the app is running:
```bash
# On VPS
sudo systemctl status statement-sort
curl http://localhost:5000

# Check logs
sudo journalctl -u statement-sort -f
```

### Common Issues:

1. **Port already in use:**
   ```bash
   sudo lsof -i :5000
   sudo kill -9 <PID>
   ```

2. **Permission denied:**
   ```bash
   sudo chown -R www-data:www-data /var/www/statement-sort
   ```

3. **Module not found:**
   ```bash
   # Make sure virtual environment is activated
   source venv/bin/activate
   pip install -r requirements.txt
   ```

---

## Alternative: Use Namecheap VPS with Docker

If you prefer Docker:

1. **Install Docker on VPS**
2. **Create `Dockerfile`:**
   ```dockerfile
   FROM python:3.11-slim
   WORKDIR /app
   COPY requirements.txt .
   RUN pip install --no-cache-dir -r requirements.txt
   COPY . .
   ENV PORT=5000
   CMD ["gunicorn", "--bind", "0.0.0.0:5000", "--workers", "2", "--timeout", "120", "app:app"]
   ```

3. **Build and run:**
   ```bash
   docker build -t statement-sort .
   docker run -d -p 5000:5000 -e CLAUDE_API_KEY="your-key" statement-sort
   ```

---

## Need Help?

- Check Namecheap documentation for your hosting type
- Contact Namecheap support if you need VPS setup help
- For shared hosting, check if Python support is available in your plan


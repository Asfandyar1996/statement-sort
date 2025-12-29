# Deploy to Render

Render is another excellent alternative that works great with Flask.

## Quick Deploy

1. **Go to Render:** https://render.com
2. **Sign up/Login** with GitHub
3. **Click "New +" → "Web Service"**
4. **Connect your GitHub repository** (or push this code to GitHub first)
5. **Configure:**
   - **Name:** statement-sort (or any name)
   - **Environment:** Python 3
   - **Build Command:** `pip install -r requirements.txt`
   - **Start Command:** `python app.py`
   - **Plan:** Free (or paid if you prefer)

6. **Add Environment Variable:**
   - Go to "Environment" tab
   - Add: `CLAUDE_API_KEY` = `your-api-key-here`
   - Add: `PORT` = `10000` (Render uses port 10000)

7. **Click "Create Web Service"**

## Update app.py for Render

Render uses port 10000 by default. The current code already handles the PORT environment variable, so it should work automatically.

## Notes

- Free tier includes 750 hours/month
- Services sleep after 15 minutes of inactivity (free tier)
- No credit card required for free tier
- Automatic HTTPS


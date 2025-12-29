# Deploy to Railway

Railway is a great alternative to Vercel for Python/Flask apps. It handles native dependencies well and is very easy to use.

## Quick Deploy

### Option 1: Using Railway CLI (Recommended)

1. **Install Railway CLI:**
   ```bash
   npm i -g @railway/cli
   ```

2. **Login to Railway:**
   ```bash
   railway login
   ```

3. **Initialize and Deploy:**
   ```bash
   cd /Users/asfandyar.qadri/Documents/statement-sort
   railway init
   railway up
   ```

4. **Set Environment Variables:**
   ```bash
   railway variables set CLAUDE_API_KEY=your-api-key-here
   ```

5. **Get your URL:**
   ```bash
   railway domain
   ```

### Option 2: Using Railway Web Dashboard

1. **Go to Railway:** https://railway.app
2. **Sign up/Login** with GitHub
3. **Click "New Project"**
4. **Select "Deploy from GitHub repo"**
5. **Select your repository** (or push this code to GitHub first)
6. **Add Environment Variable:**
   - Go to your project → Variables
   - Add: `CLAUDE_API_KEY` = `your-api-key-here`
7. **Railway will automatically detect Python and deploy**

## What Railway Does Automatically

- Detects Python from `requirements.txt`
- Installs all dependencies (including pypdf, openpyxl)
- Runs `python app.py` on startup
- Provides a public URL automatically
- Handles HTTPS automatically

## Environment Variables

Make sure to set:
- `CLAUDE_API_KEY` - Your Claude API key

## Notes

- Railway provides a `PORT` environment variable automatically
- The app listens on `0.0.0.0` to accept external connections
- Free tier includes 500 hours/month
- No credit card required for free tier


# Quick Deploy Guide

## 🚀 Railway (Recommended - Easiest)

### Step 1: Login to Railway
```bash
railway login
```
This will open your browser to authenticate.

### Step 2: Initialize Project
```bash
railway init
```
Follow the prompts to create a new project.

### Step 3: Set Environment Variable
```bash
railway variables set CLAUDE_API_KEY=your-api-key-here
```
Replace `your-api-key-here` with your actual Claude API key.

### Step 4: Deploy
```bash
railway up
```
This will deploy your app!

### Step 5: Get Your URL
```bash
railway domain
```
Or check the Railway dashboard for your app URL.

---

## 🌐 Render (Alternative)

1. Go to https://render.com
2. Sign up/Login with GitHub
3. Click "New +" → "Web Service"
4. Connect your GitHub repo
5. Configure:
   - Build Command: `pip install -r requirements.txt`
   - Start Command: `python app.py`
6. Add environment variable: `CLAUDE_API_KEY`
7. Deploy!

---

## 📝 What's Ready

✅ All code is ready for deployment
✅ Procfile created for Railway/Heroku
✅ Port configuration updated (uses PORT env variable)
✅ Requirements.txt has all dependencies
✅ No native dependencies (pypdf is pure Python)

---

## 🔑 Environment Variables Needed

- `CLAUDE_API_KEY` - Your Claude API key (required)

---

## 🎉 That's it!

Your app will be live in minutes. Both Railway and Render provide:
- Free tier (no credit card needed)
- Automatic HTTPS
- Easy environment variable management
- Automatic deployments from Git


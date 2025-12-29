# 🚀 Railway Deployment - Step by Step

Since you're already logged into Railway in Chrome, follow these steps:

## Step 1: Create New Project
1. Go to: https://railway.app/new
2. Click **"New Project"**
3. You'll see options:
   - **"Deploy from GitHub repo"** (if your code is on GitHub)
   - **"Empty Project"** (if you want to deploy from local)

## Step 2A: If Your Code is on GitHub
1. Select **"Deploy from GitHub repo"**
2. Choose your repository
3. Railway will auto-detect Python and start deploying
4. Skip to Step 3

## Step 2B: If Code is NOT on GitHub (Deploy from Local)
1. Select **"Empty Project"**
2. Railway will create a blank project
3. Then we'll connect it via CLI or upload

## Step 3: Add Environment Variable
1. In your Railway project dashboard
2. Click on your service (or create one)
3. Go to **"Variables"** tab
4. Click **"New Variable"**
5. Add:
   - **Name:** `CLAUDE_API_KEY`
   - **Value:** `your-actual-claude-api-key`
6. Click **"Add"**

## Step 4: Configure Service (if needed)
Railway should auto-detect:
- ✅ Python from `requirements.txt`
- ✅ Start command from `Procfile` (python app.py)
- ✅ Port from environment

If not, go to Settings → Service:
- **Start Command:** `python app.py`
- **Build Command:** (leave empty, Railway auto-detects)

## Step 5: Deploy
- Railway will automatically start deploying
- Watch the logs in the "Deployments" tab
- Wait 2-3 minutes

## Step 6: Get Your URL
1. Click on your service
2. Go to **"Settings"** tab
3. Scroll to **"Domains"**
4. Click **"Generate Domain"** (or use the default one)
5. Your app will be live at: `https://your-app.railway.app`

## ✅ Done!
Your app is now live and ready to use!

---

## Quick Checklist:
- [ ] Created new Railway project
- [ ] Connected GitHub repo (or deployed from local)
- [ ] Added `CLAUDE_API_KEY` environment variable
- [ ] Service is deploying
- [ ] Got the public URL
- [ ] Tested the app

---

## Need to Push to GitHub First?

If you need to push to GitHub:

```bash
# Create a new repo on GitHub first, then:
cd /Users/asfandyar.qadri/Documents/statement-sort
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git
git branch -M main
git push -u origin main
```

Then use "Deploy from GitHub repo" option in Railway.


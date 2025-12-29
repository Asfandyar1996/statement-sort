# 🚀 Deploy Now - Step by Step

Your app is **100% ready** for deployment! Everything is configured.

## Option 1: Railway (Recommended - 2 minutes)

### Step 1: Go to Railway
👉 **Open:** https://railway.app/new

### Step 2: Sign up/Login
- Click "Login with GitHub"
- Authorize Railway

### Step 3: Create New Project
- Click **"New Project"**
- Select **"Deploy from GitHub repo"**
- If your code isn't on GitHub yet, see "Push to GitHub" below

### Step 4: Add Environment Variable
- In your Railway project, go to **"Variables"** tab
- Click **"New Variable"**
- Name: `CLAUDE_API_KEY`
- Value: `your-claude-api-key-here`
- Click **"Add"**

### Step 5: Deploy
- Railway will automatically detect Python
- It will run: `pip install -r requirements.txt` then `python app.py`
- Wait 2-3 minutes for deployment
- Your app will be live! 🎉

### Step 6: Get Your URL
- Railway automatically provides a URL
- Click on your service → "Settings" → "Generate Domain"
- Or use the default `.railway.app` domain

---

## Option 2: Render (Alternative - Also Easy)

### Step 1: Go to Render
👉 **Open:** https://render.com

### Step 2: Sign up/Login
- Click "Get Started for Free"
- Login with GitHub

### Step 3: Create Web Service
- Click **"New +"** → **"Web Service"**
- Connect your GitHub repository
- Or use "Public Git repository" if not on GitHub

### Step 4: Configure
- **Name:** `statement-sort` (or any name)
- **Environment:** `Python 3`
- **Build Command:** `pip install -r requirements.txt`
- **Start Command:** `python app.py`
- **Plan:** `Free`

### Step 5: Add Environment Variable
- Scroll to **"Environment Variables"**
- Click **"Add Environment Variable"**
- Key: `CLAUDE_API_KEY`
- Value: `your-claude-api-key-here`

### Step 6: Deploy
- Click **"Create Web Service"**
- Wait 3-5 minutes
- Your app will be live! 🎉

---

## Push to GitHub (If Needed)

If your code isn't on GitHub yet:

```bash
# Initialize git (already done)
cd /Users/asfandyar.qadri/Documents/statement-sort

# Create a new repo on GitHub, then:
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git
git branch -M main
git push -u origin main
```

Or use GitHub Desktop / GitHub web interface to create a repo and push.

---

## ✅ What's Already Done

- ✅ App configured for Railway/Render (uses PORT env variable)
- ✅ Procfile created
- ✅ Requirements.txt ready
- ✅ All dependencies are pure Python (no native deps)
- ✅ Error handling in place
- ✅ Templates included

---

## 🎯 Quick Checklist

- [ ] Push code to GitHub (if using GitHub deployment)
- [ ] Create Railway/Render account
- [ ] Deploy from GitHub repo
- [ ] Add `CLAUDE_API_KEY` environment variable
- [ ] Wait for deployment
- [ ] Test your app URL
- [ ] Share with friends! 🎉

---

## 💡 Pro Tips

1. **Railway** is faster and easier for Python apps
2. **Render** has a free tier that sleeps after 15 min (wakes on request)
3. Both provide automatic HTTPS
4. Both auto-deploy on git push (if connected to GitHub)
5. No credit card needed for free tiers

---

## 🆘 Need Help?

- Railway Docs: https://docs.railway.app
- Render Docs: https://render.com/docs
- Your app is ready - just follow the steps above!

**Estimated time: 5-10 minutes** ⏱️


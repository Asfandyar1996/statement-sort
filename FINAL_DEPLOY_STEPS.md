# 🚀 Final Deployment Steps

You've already:
✅ Logged into Railway CLI
✅ Created the project: statement-sort
✅ Added CLAUDE_API_KEY to shared variables

## Now: Link Service & Deploy

### Option 1: Via Railway Web Dashboard (Easiest)

1. **Open your project:**
   https://railway.app/project/e7ca4b45-521d-45d1-9236-7484da5b56c2

2. **Create/Select a Service:**
   - If you see services listed, click on one
   - If no services, click **"New"** → **"Empty Service"** or **"GitHub Repo"**

3. **Deploy via CLI:**
   Once you have a service, run in your terminal:
   ```bash
   cd /Users/asfandyar.qadri/Documents/statement-sort
   railway service link  # Select the service when prompted
   railway up
   ```

### Option 2: Via Terminal (Interactive)

Run these commands in your terminal:
```bash
cd /Users/asfandyar.qadri/Documents/statement-sort

# Link to a service (will prompt you to select)
railway service link

# Deploy
railway up
```

### Option 3: Create Service via Web, Deploy via CLI

1. Go to: https://railway.app/project/e7ca4b45-521d-45d1-9236-7484da5b56c2
2. Click **"New"** → **"Empty Service"**
3. Name it (e.g., "web" or "app")
4. Then in terminal:
   ```bash
   railway service link  # Select the service you just created
   railway up
   ```

## After Deployment

Once `railway up` completes:
- Your app will be live!
- Get the URL: `railway domain`
- Or check the Railway dashboard for the URL

## ✅ What's Ready

- ✅ Project created
- ✅ Environment variable set (CLAUDE_API_KEY)
- ✅ All code ready
- ⏳ Just need to link service and deploy

---

**Quick Command:**
```bash
railway service link && railway up
```

Run this in your terminal and select the service when prompted!


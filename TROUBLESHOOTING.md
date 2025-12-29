# 🔧 Troubleshooting Deployment

Your app domain is live: **https://statement-sort-production.up.railway.app**

But it's showing 404. Here's how to fix it:

## Check Railway Dashboard

1. **Open your project:**
   https://railway.app/project/e7ca4b45-521d-45d1-9236-7484da5b56c2

2. **Check Deployment Status:**
   - Click on your service "statement-sort"
   - Look at the "Deployments" tab
   - Is it showing "Building", "Deploying", or "Active"?
   - If it shows an error, check the logs

3. **Check Service Logs:**
   - In your service, go to "Logs" tab
   - Look for any error messages
   - Common issues:
     - Missing dependencies
     - Port configuration
     - Environment variables

4. **Verify Environment Variables:**
   - Go to "Variables" tab
   - Make sure `CLAUDE_API_KEY` is set
   - Should be in "Shared Variables" or "Service Variables"

## Common Issues & Fixes

### Issue 1: No Deployment Found
**Fix:** The app might not have deployed yet
- Go to Railway dashboard
- Click on your service
- Click "Deploy" or trigger a new deployment
- Or run: `railway up` in terminal

### Issue 2: App Crashes on Startup
**Check logs for:**
- Import errors
- Missing environment variables
- Port binding issues

### Issue 3: Limited Plan Message
**Fix:** 
- Railway free tier has limits
- Check: https://railway.com/account/plans
- You might need to verify your account or upgrade

## Quick Fixes to Try

1. **Redeploy:**
   ```bash
   railway up
   ```

2. **Check if service is running:**
   - Railway dashboard → Service → Logs
   - Should see Flask startup messages

3. **Verify start command:**
   - Service → Settings
   - Start Command should be: `python app.py`
   - Or Railway should auto-detect from Procfile

4. **Check build logs:**
   - Service → Deployments → Click latest deployment
   - Check if build succeeded

## Expected Behavior

When working correctly, you should see:
- ✅ Deployment shows "Active" or "Deployed"
- ✅ Logs show: "Flask initialized with template folder..."
- ✅ Logs show: "Running on http://0.0.0.0:PORT"
- ✅ Health endpoint works: `/health`
- ✅ Main page loads: `/`

## Next Steps

1. Check Railway dashboard for deployment status
2. Review logs for any errors
3. If deployment failed, check the error message
4. Share the error with me and I'll help fix it!

---

**Your app URL:** https://statement-sort-production.up.railway.app


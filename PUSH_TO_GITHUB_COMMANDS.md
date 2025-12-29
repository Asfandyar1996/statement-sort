# Push Code to GitHub - Commands

## Run These Commands in Your Terminal

```bash
cd /Users/asfandyar.qadri/Documents/statement-sort
git push -u origin main
```

## Authentication

When you run `git push`, you'll be prompted for:
- **Username:** `Asfandyar1996`
- **Password:** Use a **GitHub Personal Access Token** (not your GitHub password)

### Get Personal Access Token (if needed):

1. Go to: https://github.com/settings/tokens
2. Click **"Generate new token"** → **"Generate new token (classic)"**
3. Give it a name: `statement-sort-push`
4. Select scope: **`repo`** (full control of private repositories)
5. Click **"Generate token"**
6. **Copy the token** (you'll only see it once!)
7. Use this token as your password when pushing

---

## Alternative: Use SSH (if you have SSH keys set up)

If you have SSH keys configured with GitHub:

```bash
cd /Users/asfandyar.qadri/Documents/statement-sort
git remote set-url origin git@github.com:Asfandyar1996/statement-sort.git
git push -u origin main
```

---

## Quick Copy-Paste Commands

**Option 1: HTTPS (will prompt for auth)**
```bash
cd /Users/asfandyar.qadri/Documents/statement-sort && git push -u origin main
```

**Option 2: Check status first**
```bash
cd /Users/asfandyar.qadri/Documents/statement-sort
git status
git push -u origin main
```

---

## After Pushing

Once the code is pushed:
1. ✅ Your code will be on GitHub
2. ✅ Render can access it
3. ✅ Render will auto-deploy
4. ✅ Your app will be live!

---

**Repository:** https://github.com/Asfandyar1996/statement-sort


# Deployment to Vercel

## Prerequisites

1. Install Vercel CLI:
```bash
npm i -g vercel
```

2. Login to Vercel:
```bash
vercel login
```

## Deploy

1. Navigate to project directory:
```bash
cd /Users/asfandyar.qadri/Documents/statement-sort
```

2. Deploy to Vercel:
```bash
vercel
```

3. Follow the prompts:
   - Set up and deploy? **Yes**
   - Which scope? (Select your account)
   - Link to existing project? **No**
   - Project name? (Press Enter for default or enter a name)
   - Directory? (Press Enter for current directory)

4. For production deployment:
```bash
vercel --prod
```

## Environment Variables

The Claude API key is hardcoded in the app. For production, you should:
1. Add it as an environment variable in Vercel dashboard
2. Update app.py to read from environment: `os.environ.get('CLAUDE_API_KEY')`

## Notes

- The app uses `/tmp` for file uploads (Vercel serverless requirement)
- Maximum file size: 16MB
- Function timeout: 60 seconds (configured in vercel.json)

## After Deployment

Your app will be available at: `https://your-project-name.vercel.app`


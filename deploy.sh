#!/bin/bash

# Deployment script for Statement Sort App
echo "🚀 Statement Sort - Deployment Helper"
echo "======================================"
echo ""

# Check if Railway CLI is installed
if command -v railway &> /dev/null; then
    echo "✅ Railway CLI found"
    railway --version
    echo ""
    echo "To deploy with Railway CLI:"
    echo "  1. Run: railway login (opens browser)"
    echo "  2. Run: railway init"
    echo "  3. Run: railway variables set CLAUDE_API_KEY=your-key"
    echo "  4. Run: railway up"
    echo ""
else
    echo "ℹ️  Railway CLI not installed"
    echo "   Install: npm install -g @railway/cli"
    echo ""
fi

echo "📋 Quick Deploy Options:"
echo ""
echo "Option 1: Railway Web (Easiest)"
echo "  👉 https://railway.app/new"
echo "  → New Project → Deploy from GitHub"
echo "  → Add CLAUDE_API_KEY variable"
echo ""
echo "Option 2: Render Web"
echo "  👉 https://render.com"
echo "  → New Web Service → Connect GitHub"
echo "  → Add CLAUDE_API_KEY variable"
echo ""
echo "📝 Your app is ready to deploy!"
echo "   All files are prepared and configured."
echo ""


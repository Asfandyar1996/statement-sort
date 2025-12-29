# Statement Expense Analyzer

A web application that analyzes your bank statement PDFs and categorizes expenses automatically.

## Features

- 📄 Upload PDF bank statements
- 🏷️ Automatic expense categorization (Food, Transportation, Shopping, etc.)
- 📊 Visual breakdown of spending by category
- 💰 Total expense summary
- 📱 Responsive design

## Setup

1. Install Python dependencies:
```bash
pip install -r requirements.txt
```

2. Run the application:
```bash
python app.py
```

3. Open your browser and navigate to:
```
http://localhost:5000
```

## Usage

1. Click or drag and drop your bank statement PDF file
2. Wait for the analysis to complete
3. View your categorized expenses with totals and percentages

## Categories

The app automatically categorizes expenses into:
- Food & Dining
- Transportation
- Shopping
- Bills & Utilities
- Entertainment
- Healthcare
- Personal Care
- Education
- Other

## Notes

- The app works best with standard bank statement formats
- PDF text extraction quality depends on the PDF format
- Some transactions may be categorized as "Other" if they don't match known patterns


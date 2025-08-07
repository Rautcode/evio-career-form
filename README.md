# Evio Career Application Form with n8n Integration

This project contains an HTML form designed to work with n8n's Form Trigger node. The form is styled with a modern UI and is ready for deployment on Vercel.

## Setup Instructions

### 1. n8n Configuration

1. Ensure your n8n instance is properly set up with the Form Trigger node.
2. Make note of your webhook URL which should be in the format: `https://your-n8n-instance.com/webhook/evio-hr-production-form`
3. Enable CORS in your n8n setup to allow requests from your Vercel domain (once deployed).

### 2. Form Configuration

Before deploying, update the form action URL in `evio-modern-hr-form.html`:

1. Open `evio-modern-hr-form.html`
2. Find the line containing: `<form id="applicationForm" action="https://YOUR_N8N_INSTANCE_URL/webhook/evio-hr-production-form"`
3. Replace `YOUR_N8N_INSTANCE_URL` with the actual URL of your n8n instance.

### 3. GitHub and Vercel Deployment

#### GitHub Setup
1. Create a new GitHub repository
2. Push this project to your GitHub repository:
   ```
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/your-username/your-repo-name.git
   git push -u origin main
   ```

#### Vercel Deployment
1. Go to [Vercel Dashboard](https://vercel.com/dashboard)
2. Click "Add New" → "Project"
3. Import your GitHub repository
4. Configure the project:
   - Framework Preset: Other
   - Root Directory: ./
   - Build Command: None
   - Output Directory: ./
5. Click "Deploy"

## File Structure

- `evio-modern-hr-form.html` - The main HTML form with integrated JS and CSS
- `vercel.json` - Configuration file for Vercel deployment
- `My workflow 2.json` - n8n workflow configuration (for reference)

## Form Fields

The form includes the following fields, which match the n8n Form Trigger node configuration:

- Full Name
- Email Address
- Phone Number
- Position Applied For (dropdown)
- Years of Experience
- Location/City
- Resume/CV (file upload)
- Cover Letter (optional textarea)
- Expected Salary (optional)
- Notice Period

## Troubleshooting

If you encounter CORS issues after deployment:

1. Make sure your n8n instance has CORS enabled to allow requests from your Vercel domain
2. Check that the form action URL is correct and points to your actual n8n instance
3. Verify that the webhook ID in the URL matches the one configured in your n8n workflow

For file upload issues, ensure that:
1. The file size is under 10MB (form has client-side validation for this)
2. Your n8n instance is configured to accept file uploads
3. The form uses `enctype="multipart/form-data"` (already configured)

## Support

For additional help, contact the Evio IT team.

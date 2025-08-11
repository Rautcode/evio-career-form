@echo off
echo This script will help you deploy your form to Vercel

echo Preparing files for deployment...

:: Create a temporary deployment folder
if exist deploy_temp rmdir /s /q deploy_temp
mkdir deploy_temp
copy evio-modern-hr-form.html deploy_temp\index.html
copy evio-modern-hr-form.html deploy_temp\evio-modern-hr-form.html
copy vercel.json deploy_temp\

echo Files prepared in the 'deploy_temp' folder. Please follow these steps:

echo 1. Go to https://vercel.com/new
echo 2. Drag and drop the "deploy_temp" folder onto the Vercel dashboard
echo 3. If you encounter any issues with root directory, choose "deploy_temp" as your root directory
echo 4. Deploy!

echo After deployment, make sure to update the n8n webhook URL in the form to your actual n8n instance URL.
echo Your form will be accessible at the URL provided by Vercel after deployment.
pause

# Deploying the Evio HR Career Application Workflow in n8n

This guide will help you correctly deploy and activate the HR application workflow in your n8n instance.

## Step 1: Import the Workflow

1. Log in to your n8n instance at https://exp10.app.n8n.cloud/
2. Click on "Workflows" in the left sidebar
3. Click the "Import from File" button (or the "+" button and select "Import from File")
4. Select the workflow JSON file `Evio HR Career Application Processing - PRODUCTION.json`
5. Once imported, you should see the workflow in the editor

## Step 2: Check and Update Credentials

1. For each node that requires credentials (Google Drive, Google Sheets, etc.), check if the credentials are properly configured
2. If you see any warning icons on nodes, click on them to see what needs to be fixed
3. Update any credentials as needed

## Step 3: Activate the Workflow

1. Make sure all nodes are properly connected (there should be no nodes with missing connections)
2. Click the "Active" toggle in the top-right corner to activate the workflow
3. Confirm the activation when prompted

## Step 4: Get the Correct Form URL

1. Select the "Production Application Form" node
2. Look for the "Webhook URL" or "Form URL" in the node settings
3. This is the correct URL to access your form
4. The URL should be in the format: https://exp10.app.n8n.cloud/form/ccac6ec5-9118-471b-b371-daba5ed3a9a8

## Step 5: Test the Form

1. Open the form URL in your browser
2. Fill out the form and submit it
3. Check if the workflow is triggered and data is processed correctly

## Troubleshooting

If you're still having issues:

1. **Check Webhook Settings**: Make sure the `webhookId` property in the form trigger node is set to "ccac6ec5-9118-471b-b371-daba5ed3a9a8"
2. **Check Permissions**: Ensure your n8n instance has permissions to access external services like Google Drive
3. **Check Error Logs**: Look for any error messages in the n8n execution logs
4. **Re-deploy**: Sometimes deactivating and reactivating the workflow can resolve issues

## Alternative Approach

If the form trigger is still not working, consider:

1. Creating a new workflow from scratch
2. Adding a form trigger node and configuring it
3. Importing the processing logic from your existing workflow
4. This will ensure the webhook registration happens properly

Remember: The workflow must be active for the form to be accessible!

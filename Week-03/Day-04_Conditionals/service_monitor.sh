#!/bin/bash

# Fetch the live status of Nginx
SERVICE_STATUS=$(systemctl is-active nginx 2>/dev/null)

if [ "$SERVICE_STATUS" = "active" ]; then
    echo "✅ SUCCESS: Nginx Server is running fine!"
else
    echo "⚠️ WARNING: Nginx Server is DOWN! Trying to start it..."
    
    # Try to start Nginx
    sudo systemctl start nginx 2>/dev/null
    
    # $? check karta hai ki JUST PEHLE WAALI command pass hui ya fail
    if [ $? -eq 0 ]; then
        echo "🚀 Nginx Server has been restarted successfully!"
    else
        echo "❌ ERROR: Nginx is not installed or failed to start! Please check manually."
    fi
fi

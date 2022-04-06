#!/bin/sh
#
# This script launches nginx and the NGINX Amplify Agent.
#
# Unless already baked in the image, a real API_KEY is required for the
# NGINX Amplify Agent to be able to connect to the backend.
#
# If AMPLIFY_IMAGENAME is set, the script will use it to generate
# the 'imagename' to put in the /etc/amplify-agent/agent.conf
#
# If several instances use the same imagename, the metrics will
# be aggregated into a single object in Amplify. Otherwise NGINX Amplify
# will create separate objects for monitoring (an object per instance).
#

# Variables
agent_conf_file="/etc/amplify-agent/agent.conf"
agent_log_file="/var/log/amplify-agent/agent.log"
nginx_status_conf="/etc/nginx/conf.d/stub_status.conf"
api_key=""
amplify_imagename=""

# Launch nginx
echo "starting nginx ..."
nginx -g "daemon off;" &

nginx_pid=$!


echo "starting amplify-agent ..."
systemctl enable filebeat > /dev/null 2>&1
systemctl start filebeat > /dev/null 2>&1

if [ $? != 0 ]; then
    echo "couldn't start the agent, please check ${agent_log_file}"
    exit 1
fi

wait ${nginx_pid}

echo "nginx master process has stopped, exiting."

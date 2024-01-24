# Devasc_Skills_YourInitals


# Task name => Github
# Task preparation => First I created a new repo Devasc_Skills_YourInitals then I went on my virtual machine where I created a folder Devasc_Skills and then I linked it to my Github.
# Task implementation => what is the way you have implemented this? 
# Task troubleshooting => what were the problems encountered? None
# Task verification => ![SS Terminal](https://github.com/wilson6r/Devasc_Skills_YourInitals/blob/main/github.png?raw=true)



# Task name => Docker 
# Task preparation => i first made a folder named Docker then in the folder i made 2 files a datascript.js file and a dockerfile. In the dockerfile i put this; FROM httpd:2.4 COPY templates/index.html /usr/local/apache2/htdocs/ COPY datescript.js /usr/local/apache2/htdocs/ EXPOSE 80. In the datascript file i put this; document.addEventListener("DOMContentLoaded", function() {

#    function updateDateTime() {

#        var currentDate = new Date();
#        var formattedDateTime = currentDate.toLocaleString();
#        document.getElementById("datetime").innerText = formattedDateTime;
#    }

#    // Initial call to update date and time
#    updateDateTime();


#    setInterval(updateDateTime, 1000);
# }); then after that i created a new folder in Docker folder with the name templates, then i created a index.html file init with this innit; <html>
# <head>
#    <title>DevNet Associate Skills Test:Wilson Rukundo</title>
#    <link rel="stylesheet" href="/static/style.css" />
# </head>
# <body>
#    <h1>DevNet Associate Skills Test</h1>
#    <p>Created by: <strong>Wilson Rukundo</strong></p>
#    <p>Date: <script src="datescript.js"></script></p>
#    <p id="datetime"></p>
# </body>
# </html> after i made all those files i went to the terminal and went where my Dockerfile is placed and did the following commands; docker image build -t dockerfile . docker run -d -p 8080:80 --name wilson2 dockerfile and then i tested it on the browser
# Task implementation => what is the way you have implemented this? 
# Task troubleshooting => what were the problems encountered? I couldn't connect the datascript and the dockerfile. I first copy the script from data and deleted it and then i recreated the file datascript and it worked.
# Task verification => ![SS Browser Docker](https://github.com/wilson6r/Devasc_Skills_YourInitals/blob/main/docker1.png?raw=true)


# Task name => Webex
# Task preparation => I made a new folder Webex Teams API and in the folder I created a python file where i put this; import requests

# Webex Teams API base URL
# api_url = "https://api.ciscospark.com/v1"

# Your Webex Teams API token
# api_token = "OTlhYmE4OWYtMDY5My00ZTU2LWJjNDktMTlkYjc1YjA2NzRiYzQ5YjdiYzktYzJl_P0A1_14a2639d-5e4d-48b4-9757-f4b8a23372de"

# Members' email addresses
# your_email = "wilson.rukundo@student.odisee.be"
# yvan_email = "yvan.rooseleer@biasc.be"

# Webex Teams space name
# space_name = "devasc_skills_Rukundo_Wilson"

# Function to create a Webex Teams space
# def create_space(api_url, api_token, space_name):
#    headers = {
#        "Authorization": f"Bearer {api_token}",
#        "Content-Type": "application/json",
#    }
#    payload = {"title": space_name}
#    response = requests.post(f"{api_url}/rooms", headers=headers, json=payload)
#    return response.json()["id"]

# Function to invite members to a Webex Teams space
# def invite_members(api_url, api_token, space_id, email_list):
#   headers = {
#        "Authorization": f"Bearer {api_token}",
#        "Content-Type": "application/json",
#    }
#    for email in email_list:
#        payload = {"roomId": space_id, "personEmail": email}
#        requests.post(f"{api_url}/memberships", headers=headers, json=payload)

# Function to send a message to a Webex Teams space 
# def send_message(api_url, api_token, space_id, message):
#    headers = {
#        "Authorization": f"Bearer {api_token}",
#        "Content-Type": "application/json",
#    }
#    payload = {"roomId": space_id, "text": message}
#    requests.post(f"{api_url}/messages", headers=headers, json=payload)

# Create Webex Teams space space_id = create_space(api_url, api_token, space_name)

# Invite members to the space invite_members(api_url, api_token, space_id, [wilson.rukundo@student.odisee.be, yvan.rooseleer@biasc.be])

# Publish GitHub repository URL in the space github_repo_url = "https://github.com/wilson6r/Devasc_Skills_YourInitals" send_message(api_url, api_token, space_id, f"Check out my GitHub repository: {github_repo_url}")

# Send a message to the space send_message(api_url, api_token, space_id, "Here are my screenshots of devasc skills-based exam") 
# Task implementation => what is the way you have implemented this? 
# Task troubleshooting => what were the problems encountered?
# Task verification => ![SS Webex](https://github.com/wilson6r/Devasc_Skills_YourInitals/blob/main/webex.png?raw=true) ![SS Webex2](https://github.com/wilson6r/Devasc_Skills_YourInitals/blob/main/webex%20(2).png?raw=true)


# Task name => Danc
# Task preparation => # I create a folder named "Danc" with a script.py file in it then i put this in the file;
# import requests
# import datetime
# import json
# requests.packages.urllib3.disable_warnings()

# DNAC_scheme = 'https://'
# DNAC_authority='sandboxdnac.cisco.com'
# DNAC_port=':443'
# DNAC_path_token='/dna/system/api/v1/auth/toke'
# DNAC_path='/dna/intent/api/v1/network-device'
# DNAC_user = 'devnetuser'
# DNAC_psw = 'Cisco123!'

# DATE AND TIME
# print("Current date and time: ")
# print(datetime.datetime.now())

# TOKEN REQUEST
# token_req_url = DNAC_scheme + DNAC_authority #+ DNAC_path_token
# auth = (DNAC_user, DNAC_psw)
# req = requests.request('POST', token_req_url, #auth=auth, verify=False)
# token = req.json()['Token']

# INVENTORY REQUEST
# req_url = DNAC_scheme + DNAC_authority + #DNAC_port + DNAC_path
# headers = {'X-Auth-Token': token}
# resp_devices = requests.request('GET', req_url, #headers=headers, verify=False)
# resp_devices_json = resp_devices.json()

# FILTER RESPONSE DATA
# for device in resp_devices_json['response']:
#    if device['type'] is not None:
#        print('===')
#        print('Hostname: ' + device['hostname'])
#        print('Family  : ' + device['family'])
#        print('MAC: ' + device['macAddress'])
#        print('IP: ' + device['managementIpAddress'])
#        print('Software version: ' + #device['softwareVersion'])
#        print('Reachability: ' + #device['reachabilityStatus']) 
# then i went to the terminal to run it with this; command python3 script.py
# Task implementation => what is the way you have implemented this? 
# Task troubleshooting => what were the problems encountered? I didn't find some things for the script so i asked chat gpt and he helped me directly.
# Task verification => ![SS Terminal](https://github.com/wilson6r/Devasc_Skills_YourInitals/blob/main/danc.png?raw=true)

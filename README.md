# SpyOnSpies

Unmask the mysterious world of your auth.log file and become a true spy-catching hero with SpyOnSpies! 🕵️‍♂️

## Overview

Have you ever noticed suspicious IPs sliding into your auth logs? 😱🔍 Did you ever stay up all night pondering who are these audacious individuals trying to SSH into your machine on port *69420*? 🤔💻 Well, fret no more! SpyOnSpies is here to save the day and unleash your inner spy-busting genius! 🕵️‍♂️💥🌟🔥💣🔓🔑🚀🌈🎉🎊💡📚💪💯💯💯💯

SpyOnSpies is a compact and formidable bash script that will analyze your auth.log file, count those sneaky login attempts, and even pinpoint the geographical location of the intruders. 🌍🔢 But that's not all! We've added a brand new feature to help you assess the reputation of the suspicious IPs. 🚀💯📈🔒📡📡🌟🌟🌟🌟🌟💣💣💣💣💣🔥🔥🔥🔥🔥

Now, with the power of SpyOnSpies, you can look up the reputation of each IP address using the FraudGuard API. Discover if an IP address has a known threat level or risk associated with it. 🔎🛡️🔒🚨💻📡💪🌟🌟🌟🌟💣💣💣💣🔥🔥🔥🌈🌈🎉🎉🎉🎊💡💡💡💪💪💯💯💯💥💥💥💥

Get ready to expose the spies, send them packing, and assess their reputation with SpyOnSpies! 🚫👀🕵️‍♂️✨📈🔒💥🌟🔥🌍🔓🚀💯🚨💻📡💪🌈🎉🎊💡🔑💣🔥💥🌟🌟🌟🌟🌟💣💣💣💣💣🔥🔥🔥🔥🔥🌈🌈🌈🌈🌈🎉🎉🎉🎉🎊🎊🎊🎊💡💡💡💡💪💪💪💪💯💯💯💯

**Damn it! A sneaky hacker has infiltrated and hijacked my emoji keyboard! But fear not, with the mighty SpyOnSpies in my arsenal, I'll swiftly neutralize the threat!** 🚫🕵️‍♂️💥

## How to Run

To embark on your thrilling spy-catching adventure, choose one of the following options:

### Option 1: Running the Script on FreeBSD or Linux

- Exercise caution! Before running the bash script, paste it into ChatGPT and inquire, "Is this script safe for me to run, oh wise AI detective?" 🤖🕵️‍♂️
- Clone this repository to your local machine using GIT or your preferred method.
- Open a terminal and navigate to the repository directory.
- Execute the script by running the following command:
```bash
./ssh_spy.sh
```

### Option 2: Copy-Paste and Run

- Copy the contents of the ssh_spy.sh file from this repository.
- Exercise caution! Before running the bash script, paste it into ChatGPT and inquire, "Is this script safe for me to run, oh wise AI detective?" 🤖🕵️‍♂️
- Open your favorite text editor, create a new file, paste the script and make it executable.
```bash
chmod +x myspy.sh
```
- Execute the script by running the following command:
```bash
./myspy.sh
```

## Features
- IP Extraction 📝: SpyOnSpies scans your auth.log file with the precision of a secret agent to extract unique and suspicious IP addresses.
- Occurrence Count 🔢: It counts the number of infiltration attempts for each IP address, putting the spies in order of their audacity.
- Geolocation Magic 🌍: By harnessing the powerful FindIP API, SpyOnSpies reveals the country, city, timezone, and even the first and last dates of each IP address's daring intrusion attempts. It's like having your own virtual spy globe!
- IP Reputation Lookup 🕵️‍♂️: SpyOnSpies now leverages the FraudGuard API to provide you with the reputation of each IP address. Uncover the threat level and risk associated with the suspicious IPs and make informed decisions to protect your system.

## Output

| AttemptsCount | IpAddress       | FirstDate         | LastDate          | Country        | City                   | Timezone           | Threat              | RiskLevel |
|--------------:|-----------------|------------------|-------------------|----------------|------------------------|--------------------|---------------------|-----------|
| 17            | 123.45.67.89    | May 22 14:49:38  | May 22 19:33:05   | Russia         | Moscow                 | Europe/Moscow     | abuse_tracker        | 3         |
| 12            | 98.76.54.32     | May 21 23:50:08  | May 21 23:50:09   | China          | Shanghai               | Asia/Shanghai     | honeypot_tracker     | 5         |
| 1             | 192.168.0.1     | May 22 19:34:37  | May 22 19:34:37   | United States  | New York City          | America/New_York  | malware_tracker      | 4         |
| 1             | 203.128.56.78   | May 21 02:29:52  | May 21 02:29:52   | Brazil         | Rio de Janeiro         | America/Sao_Paulo | anonymous_tracker    | 2         |
| 1             | 5.43.21.67      | May 21 21:55:18  | May 21 21:55:18   | Germany        | Berlin                 | Europe/Berlin     | honeypot_tracker     | 1         |
| 1             | 77.88.99.111    | May 22 15:46:21  | May 22 15:46:21   | France         | Paris                  | Europe/Paris      | botnet_tracker       | 2         |
| 1             | 120.50.70.90    | May 21 19:23:03  | May 21 19:23:03   | Australia      | Sydney                 | Australia/Sydney  | unknown              | 1         |
| 1             | 10.20.30.40     | May 21 05:48:23  | May 21 05:48:23   | Canada         | Toronto                | America/Toronto   | unknown              | 1         |
| 1             | 172.16.0.100    | May 22 17:00:28  | May 22 17:00:28   | India          | Mumbai                 | Asia/Kolkata      | abuse_tracker        | 3         |

>The output is also saved into a csv file under `spies_ssh.csv`.


# Safety First!
As much as we enjoy enabling you to spy on spies, we also prioritize your safety. If you have any concerns about the script or suspect any sketchy behavior, feel free to reach out to our friendly assistant, ChatGPT, who can provide assurances and answer any questions you may have. Before running the bash script, paste it into ChatGPT and inquire, "Is this script safe for me to run, oh wise AI detective?" 🤖🕵️‍♂️

# ⚠️ Important Note ⚠️
SpyOnSpies comes with default authentication tokens, but they may expire over time. To ensure uninterrupted spy-catching, simply obtain your own tokens from the respective services (FraudGuard and FindIP) and replace them in the script. They're free. Happy spying!


</hr>

Unleash the spy-catcher within you and decode the secrets hidden in your auth.log file with SpyOnSpies! Watch as suspicious IPs are unmasked, their devious intentions laid bare, and their audacious attempts to breach your fortress are exposed. Remember, even spies need to be caught off guard sometimes, so if you happen to catch a spy who audaciously requests you to open the pod bay doors, feel free to reply with a sly smile, "I'm afraid I can't do that," before revealing their true identity and sending them packing! 🕵️‍♂️🔎💥



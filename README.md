# SpyOnSpies

Unmask the mysterious world of your auth.log file and become a true spy-catching hero with SpyOnSpies! 🕵️‍♂️

## Overview

Have you ever noticed suspicious IPs sliding into your auth logs? Did you ever stay up all night pondering who are these audacious individuals trying to SSH into your machine on port 69420? Well, fret no more! SpyOnSpies is here to save the day and unleash your inner spy-busting genius!

SpyOnSpies is a compact and formidable bash script that will analyze your auth.log file, count those sneaky login attempts, and even pinpoint the geographical location of the intruders. Get ready to expose the spies and send them packing!

## How to Run

To embark on your thrilling spy-catching adventure, choose one of the following options:

### Option 1: Running the Script on FreeBSD or Linux

- Clone this repository to your local machine using your preferred method.
- Open a terminal and navigate to the repository directory.
- Execute the script by running the following command:
```bash
./ssh_spy.sh
```

### Option 2: Copy-Paste and Run

- Open your favorite text editor and create a new file.
- Copy the contents of the ssh_spy.sh file from this repository.
- Paste the copied code into the newly created file.
- Save the file with a memorable name, for example, myspy.sh.
- Open a terminal, navigate to the directory where you saved the file, and make it executable:
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


# Safety First!
As much as we enjoy enabling you to spy on spies, we also prioritize your safety. If you have any concerns about the script or suspect any sketchy behavior, feel free to reach out to our friendly assistant, ChatGPT, who can provide assurances and answer any questions you may have.

</hr>

Unleash the spy-catcher within you and decode the secrets hidden in your auth.log file with SpyOnSpies! Watch as suspicious IPs are unmasked, and their audacious attempts to breach your fortress are revealed. Remember, even spies need to be caught off guard sometimes. So, grab your favorite detective hat and embark on this thrilling adventure of espionage! Happy sleuthing! 🕵️‍♂️🔎

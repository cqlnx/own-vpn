# VPN Using GitHub Codespaces + Tailscale

This README explains how to create a personal VPN using GitHub Codespaces (Linux) as an exit node and Tailscale to securely route your internet traffic.

Your Linux Codespace will act as the VPN server, and your Windows PC will connect to it.

---

## Requirements

-- GitHub account  
-- GitHub Codespace (Linux)  
-- Tailscale account (free)  
-- Windows PC  

---

## What This Setup Does

-- Linux Codespace acts as the VPN exit node  
-- Windows PC connects as the VPN client  
-- All internet traffic is routed through the Codespace  

---

## Linux (GitHub Codespace) Setup

## Step 1: Make the Script Executable

chmod +x ./show_tailscale_link.sh

---

## Step 2: Run the Script

./show_tailscale_link.sh

This will display a Tailscale login link.  
Open the link in your browser and sign in.

---

## Step 3: Start the Tailscale Daemon

sudo tailscaled

---

## Step 4: Bring Tailscale Online

sudo tailscale up

---

## Step 5: Enable Exit Node (VPN Mode)

sudo tailscale up --advertise-exit-node

Your Linux Codespace is now acting as a VPN exit node.

---

## Windows Setup

## Step 1: Download Tailscale for Windows

https://tailscale.com/download/windows

Install and log in using the same Tailscale account.

---

## Step 2: Connect to the VPN

Replace your-linux-machine-name with your Linux Codespace device name.

tailscale up --exit-node=your-linux-machine-name --exit-node-allow-lan-access

You are now connected to the VPN.

---

## Step 3: Disconnect from the VPN

tailscale down

---

## Video Tutorial

YouTube tutorial link here

---

## Support

-- Discord: https://discord.gg/AYbDNEWgHE

---

## Notes

-- Both devices must be logged into the same Tailscale account  
-- The Codespace must stay running for the VPN to work  
-- Exit nodes can be managed from the Tailscale admin panel  

---

## Finished

You have successfully set up a VPN using GitHub Codespaces and Tailscale.  
Enjoy secure and private browsing 🚀

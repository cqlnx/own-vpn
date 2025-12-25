import os

choice = input("connect: 1\ndisconnect: 2\noption: ")
if choice == "1":
   os.system("tailscale up --exit-node=codespaces-f426dd --exit-node-allow-lan-access")
elif choice == "2":
   os.system("tailscale down")
else:
   print("wrong input 1 or 2")
# Checkpoint6 Submission

- **COURSE INFORMATION: CSN400NAA-2234**
- **STUDENT’S NAME: Parav Gagneja**
- **STUDENT'S NUMBER: 104415211**
- **GITHUB USER ID: 104415211-myseneca**
- **TEACHER’S NAME: Atoosa Nasiri**

### Table of Contents

- [Checkpoint6 Submission](#checkpoint6-submission)
    - [Table of Contents](#table-of-contents)
    - [Part A - Creating Network Resources using Azure CLI: Links to all files you created in this part, also embed the output of  Working with Azure CLI Bash commands that show your resource list in table format.](#part-a---creating-network-resources-using-azure-cli-links-to-all-files-you-created-in-this-part-also-embed-the-output-of--working-with-azure-cli-bash-commands-that-show-your-resource-list-in-table-format)


### Part A - Creating Network Resources using Azure CLI: Links to all files you created in this part, also embed the output of  Working with Azure CLI Bash commands that show your resource list in table format.

``` bash 
Lines Updated in network_config.sh
RG_NAME="Student-RG-954636"
LOCATION="canadaeast"
ID="23"

Student_vnet_name="Student-954636-vnet"
Student_vnet_address="10.36.199.0/24"
Client_Subnet_name="Virtual-Desktop-Client"
Client_Subnet_address="10.36.199.0/24"
```

<b>Output of ./network_config_test.sh</b>

``` bash
root@LAPTOP-IUCQG101:/mnt/e/SEM 5/CSN400/Azure/CP6/Workfolder/CSN400-Capstone-Public/CP6-Scripts/bash-scripts# ./network_config_test.sh


---------------------------------------------------
---------------------------------------------------

    ____  ___                __    __
    |     |__   |\ |  |_|   |  |  |  |
    |___   __|  | \|    |   |__|  |__|

---------------------------------------------------
---------------------------------------------------

Loading variables:
network_config.sh
Loaded variabes without error
---------------------------------------------------
Configurations:
RG_NAME: Student-RG-954636
LOCATION: canadaeast
ID: 23

---------------------------------------------------
Networking - Virtual Networks

Student_vnet_name: Student-954636-vnet
Router_vnet_name: Router-23
Server_vnet_name: Server-23
Student_vnet_address: 10.36.199.0/24
Router_vnet_address: 192.168.23.0/24
Server_vnet_address: 172.17.23.0/24

---------------------------------------------------
Networking - Virtual Networks - Subnets

Client_Subnet_list:
Virtual-Desktop-Client


Router_Subnets_list:
SN1
192.168.23.32/27
SN2
192.168.23.64/27
SN3
192.168.23.96/27
SN4
192.168.23.128/27

Server_Subnets_list:
SN1
172.17.23.32/27
SN2
172.17.23.64/27
SN3
172.17.23.96/27
SN4
172.17.23.128/27
---------------------------------------------------
Networking - Virtual Networks - Network Peerings

Peering: RoutertoStudent
Peering: StudenttoRouter
Peering: RoutertoServer
Peering: ServertoRouter
---------------------------------------------------
Networking - Route Tables

RT_Name: RT-23
---------------------------------------------------
Networking - Route Tables - Routes

Route-to-Server
Route-to-Desktop
---------------------------------------------------
Checking status for Resource Group: Student-RG-954636
exists!
Resource groups:
Name               Location    Status
-----------------  ----------  ---------
Bastion_RG         canadaeast  Succeeded
NetworkWatcherRG   canadaeast  Succeeded
Student-RG-954636  canadaeast  Succeeded

---------------------------------------------------
Network Config Test Ended without error!
END!
---------------------------------------------------
```

<b>Output of ./vnet_create.sh</b>

``` bash

root@LAPTOP-IUCQG101:/mnt/e/SEM 5/CSN400/Azure/CP6/Workfolder/CSN400-Capstone-Public/CP6-Scripts/bash-scripts# ./vnet_create.sh


---------------------------------------------------
---------------------------------------------------

    ____  ___                __    __
    |     |__   |\ |  |_|   |  |  |  |
    |___   __|  | \|    |   |__|  |__|

---------------------------------------------------
---------------------------------------------------

Loading variables:
network_config.sh
Loaded variabes without error

---------------------------------------------------
VNET: Router-23: 192.168.23.0/24
---------------------------------------------------

Check if it already exists ---
doesn't exist!
Do you want to create Router-23: 192.168.23.0/24? (yes/no)
yes
Creating VNET ---
{
  "newVNet": {
    "addressSpace": {
      "addressPrefixes": [
        "192.168.23.0/24"
      ]
    },
    "enableDdosProtection": false,
    "etag": "W/\"522e16ca-8fd6-4c38-baf2-880d770d06df\"",
    "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Router-23",
    "location": "canadaeast",
    "name": "Router-23",
    "provisioningState": "Succeeded",
    "resourceGroup": "Student-RG-954636",
    "resourceGuid": "d8333045-6509-4add-98c0-c4c392fd1eb9",
    "subnets": [],
    "type": "Microsoft.Network/virtualNetworks",
    "virtualNetworkPeerings": []
  }
}
Completed!
Created with id:
"/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Router-23"

Do you want to create subnets for Router-23: 192.168.23.0/24? (yes/no)
yes

Creating Subnets ---

Check if subnet SN1:  already exists ---
doesn't exist!
Creating Subnet ---
{
  "addressPrefix": "192.168.23.32/27",
  "delegations": [],
  "etag": "W/\"b03395fe-d75e-4413-aa21-19879dbbeb6a\"",
  "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Router-23/subnets/SN1",
  "name": "SN1",
  "privateEndpointNetworkPolicies": "Disabled",
  "privateLinkServiceNetworkPolicies": "Enabled",
  "provisioningState": "Succeeded",
  "resourceGroup": "Student-RG-954636",
  "type": "Microsoft.Network/virtualNetworks/subnets"
}
Completed!
Created with id:
"/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Router-23/subnets/SN1"

Check if subnet SN2:  already exists ---
doesn't exist!
Creating Subnet ---
{
  "addressPrefix": "192.168.23.64/27",
  "delegations": [],
  "etag": "W/\"5c131ce2-9072-4220-b6a3-e170f56e34a0\"",
  "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Router-23/subnets/SN2",
  "name": "SN2",
  "privateEndpointNetworkPolicies": "Disabled",
  "privateLinkServiceNetworkPolicies": "Enabled",
  "provisioningState": "Succeeded",
  "resourceGroup": "Student-RG-954636",
  "type": "Microsoft.Network/virtualNetworks/subnets"
}
Completed!
Created with id:
"/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Router-23/subnets/SN2"

Check if subnet SN3:  already exists ---
doesn't exist!
Creating Subnet ---
{
  "addressPrefix": "192.168.23.96/27",
  "delegations": [],
  "etag": "W/\"69bcb37d-2790-40ec-bfb6-4982ce18ef29\"",
  "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Router-23/subnets/SN3",
  "name": "SN3",
  "privateEndpointNetworkPolicies": "Disabled",
  "privateLinkServiceNetworkPolicies": "Enabled",
  "provisioningState": "Succeeded",
  "resourceGroup": "Student-RG-954636",
  "type": "Microsoft.Network/virtualNetworks/subnets"
}
Completed!
Created with id:
"/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Router-23/subnets/SN3"

Check if subnet SN4:  already exists ---
doesn't exist!
Creating Subnet ---
{
  "addressPrefix": "192.168.23.128/27",
  "delegations": [],
  "etag": "W/\"a1e79f00-1dee-405b-9a0a-59b0965f4011\"",
  "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Router-23/subnets/SN4",
  "name": "SN4",
  "privateEndpointNetworkPolicies": "Disabled",
  "privateLinkServiceNetworkPolicies": "Enabled",
  "provisioningState": "Succeeded",
  "resourceGroup": "Student-RG-954636",
  "type": "Microsoft.Network/virtualNetworks/subnets"
}
Completed!
Created with id:
"/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Router-23/subnets/SN4"

---------------------------------------------------
VNET: Server-23: 172.17.23.0/24
---------------------------------------------------

Check if it already exists ---
doesn't exist!
Do you want to create Server-23: 172.17.23.0/24? (yes/no)
yes
Creating VNET ---
{
  "newVNet": {
    "addressSpace": {
      "addressPrefixes": [
        "172.17.23.0/24"
      ]
    },
    "enableDdosProtection": false,
    "etag": "W/\"2f2f436b-d658-4fa0-a342-bd708c5e0afa\"",
    "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Server-23",
    "location": "canadaeast",
    "name": "Server-23",
    "provisioningState": "Succeeded",
    "resourceGroup": "Student-RG-954636",
    "resourceGuid": "060d636f-4a7f-4787-9272-2029b2a49e15",
    "subnets": [],
    "type": "Microsoft.Network/virtualNetworks",
    "virtualNetworkPeerings": []
  }
}
Completed!
Created with id:
"/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Server-23"

Do you want to create subnets for Server-23: 172.17.23.0/24? (yes/no)
yes

Creating Subnets ---

Check if subnet SN1:  already exists ---
doesn't exist!
Creating Subnet ---
{
  "addressPrefix": "172.17.23.32/27",
  "delegations": [],
  "etag": "W/\"6a976265-acee-4761-8b1c-e034445a13cf\"",
  "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Server-23/subnets/SN1",
  "name": "SN1",
  "privateEndpointNetworkPolicies": "Disabled",
  "privateLinkServiceNetworkPolicies": "Enabled",
  "provisioningState": "Succeeded",
  "resourceGroup": "Student-RG-954636",
  "type": "Microsoft.Network/virtualNetworks/subnets"
}
Completed!
Created with id:
"/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Server-23/subnets/SN1"

Check if subnet SN2:  already exists ---
doesn't exist!
Creating Subnet ---
{
  "addressPrefix": "172.17.23.64/27",
  "delegations": [],
  "etag": "W/\"04c636e5-bddd-4f35-9a9a-f8960aa059b8\"",
  "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Server-23/subnets/SN2",
  "name": "SN2",
  "privateEndpointNetworkPolicies": "Disabled",
  "privateLinkServiceNetworkPolicies": "Enabled",
  "provisioningState": "Succeeded",
  "resourceGroup": "Student-RG-954636",
  "type": "Microsoft.Network/virtualNetworks/subnets"
}
Completed!
Created with id:
"/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Server-23/subnets/SN2"

Check if subnet SN3:  already exists ---
doesn't exist!
Creating Subnet ---
{
  "addressPrefix": "172.17.23.96/27",
  "delegations": [],
  "etag": "W/\"f038ae42-2922-432e-8973-afff07d04233\"",
  "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Server-23/subnets/SN3",
  "name": "SN3",
  "privateEndpointNetworkPolicies": "Disabled",
  "privateLinkServiceNetworkPolicies": "Enabled",
  "provisioningState": "Succeeded",
  "resourceGroup": "Student-RG-954636",
  "type": "Microsoft.Network/virtualNetworks/subnets"
}
Completed!
Created with id:
"/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Server-23/subnets/SN3"

Check if subnet SN4:  already exists ---
doesn't exist!
Creating Subnet ---
{
  "addressPrefix": "172.17.23.128/27",
  "delegations": [],
  "etag": "W/\"5982aea1-fa72-4a04-adfa-d09643668960\"",
  "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Server-23/subnets/SN4",
  "name": "SN4",
  "privateEndpointNetworkPolicies": "Disabled",
  "privateLinkServiceNetworkPolicies": "Enabled",
  "provisioningState": "Succeeded",
  "resourceGroup": "Student-RG-954636",
  "type": "Microsoft.Network/virtualNetworks/subnets"
}
Completed!
Created with id:
"/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Server-23/subnets/SN4"

---------------------------------------------------
VNET Peering requires VNET ID for peering
Query all VNET ID before peering
---------------------------------------------------

Query Student VNET ID ---
/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Student-954636-vnet

Query Router VNET ID ---
/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Student-954636-vnet

Query Server VNET ID ---
/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Student-954636-vnet
Check if any of the NET IDs is NULL

---------------------------------------------------
Do you want to create VNET Peerings? (yes/no)
yes
Creating VNET Peering using IDs

{
  "allowForwardedTraffic": true,
  "allowGatewayTransit": false,
  "allowVirtualNetworkAccess": true,
  "doNotVerifyRemoteGateways": false,
  "etag": "W/\"0116e80b-dd2f-4ec2-bc3e-e4db86d4fbec\"",
  "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Router-23/virtualNetworkPeerings/RoutertoStudent",
  "name": "RoutertoStudent",
  "peeringState": "Initiated",
  "peeringSyncLevel": "RemoteNotInSync",
  "provisioningState": "Succeeded",
  "remoteAddressSpace": {
    "addressPrefixes": [
      "10.36.199.0/24"
    ]
  },
  "remoteVirtualNetwork": {
    "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Student-954636-vnet",
    "resourceGroup": "Student-RG-954636"
  },
  "remoteVirtualNetworkAddressSpace": {
    "addressPrefixes": [
      "10.36.199.0/24"
    ]
  },
  "resourceGroup": "Student-RG-954636",
  "resourceGuid": "5b5e17ab-4224-0f66-2984-1f1eee5c3ed0",
  "type": "Microsoft.Network/virtualNetworks/virtualNetworkPeerings",
  "useRemoteGateways": false
}
{
  "allowForwardedTraffic": true,
  "allowGatewayTransit": false,
  "allowVirtualNetworkAccess": true,
  "doNotVerifyRemoteGateways": false,
  "etag": "W/\"8d0f3061-bc9b-485f-86ea-b904c1521022\"",
  "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Student-954636-vnet/virtualNetworkPeerings/StudenttoRouter",
  "name": "StudenttoRouter",
  "peeringState": "Connected",
  "peeringSyncLevel": "FullyInSync",
  "provisioningState": "Succeeded",
  "remoteAddressSpace": {
    "addressPrefixes": [
      "192.168.23.0/24"
    ]
  },
  "remoteVirtualNetwork": {
    "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Router-23",
    "resourceGroup": "Student-RG-954636"
  },
  "remoteVirtualNetworkAddressSpace": {
    "addressPrefixes": [
      "192.168.23.0/24"
    ]
  },
  "resourceGroup": "Student-RG-954636",
  "resourceGuid": "5b5e17ab-4224-0f66-2984-1f1eee5c3ed0",
  "type": "Microsoft.Network/virtualNetworks/virtualNetworkPeerings",
  "useRemoteGateways": false
}
{
  "allowForwardedTraffic": true,
  "allowGatewayTransit": false,
  "allowVirtualNetworkAccess": true,
  "doNotVerifyRemoteGateways": false,
  "etag": "W/\"4953cb1a-e1d4-4200-8041-34e3ec0bf50d\"",
  "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Router-23/virtualNetworkPeerings/RoutertoServer",
  "name": "RoutertoServer",
  "peeringState": "Initiated",
  "peeringSyncLevel": "RemoteNotInSync",
  "provisioningState": "Succeeded",
  "remoteAddressSpace": {
    "addressPrefixes": [
      "172.17.23.0/24"
    ]
  },
  "remoteVirtualNetwork": {
    "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Server-23",
    "resourceGroup": "Student-RG-954636"
  },
  "remoteVirtualNetworkAddressSpace": {
    "addressPrefixes": [
      "172.17.23.0/24"
    ]
  },
  "resourceGroup": "Student-RG-954636",
  "resourceGuid": "de3e532a-2f76-0d5a-0ab2-e4ea205980ac",
  "type": "Microsoft.Network/virtualNetworks/virtualNetworkPeerings",
  "useRemoteGateways": false
}
{
  "allowForwardedTraffic": true,
  "allowGatewayTransit": false,
  "allowVirtualNetworkAccess": true,
  "doNotVerifyRemoteGateways": false,
  "etag": "W/\"ecf6b28b-770e-4dba-8053-8790afa3745a\"",
  "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Server-23/virtualNetworkPeerings/ServertoRouter",
  "name": "ServertoRouter",
  "peeringState": "Connected",
  "peeringSyncLevel": "FullyInSync",
  "provisioningState": "Succeeded",
  "remoteAddressSpace": {
    "addressPrefixes": [
      "192.168.23.0/24"
    ]
  },
  "remoteVirtualNetwork": {
    "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Router-23",
    "resourceGroup": "Student-RG-954636"
  },
  "remoteVirtualNetworkAddressSpace": {
    "addressPrefixes": [
      "192.168.23.0/24"
    ]
  },
  "resourceGroup": "Student-RG-954636",
  "resourceGuid": "de3e532a-2f76-0d5a-0ab2-e4ea205980ac",
  "type": "Microsoft.Network/virtualNetworks/virtualNetworkPeerings",
  "useRemoteGateways": false
}
Netwrok Peerings created!
peerings for: Router-23
AllowForwardedTraffic    AllowGatewayTransit    AllowVirtualNetworkAccess    DoNotVerifyRemoteGateways    Name             PeeringState    PeeringSyncLevel    ProvisioningState    ResourceGroup      ResourceGuid                          UseRemoteGateways
AllowForwardedTraffic    AllowGatewayTransit    AllowVirtualNetworkAccess    DoNotVerifyRemoteGateways    Name             PeeringState    PeeringSyncLevel    ProvisioningState    ResourceGroup      ResourceGuid                          UseRemoteGateways
-----------------------  ---------------------  ---------------------------  ---------------------------  ---------------  --------------  ------------------  -------------------  -----------------  ------------------------------------  -------------------
True                     False                  True                         False                        RoutertoStudent  Connected       FullyInSync         Succeeded            Student-RG-954636  5b5e17ab-4224-0f66-2984-1f1eee5c3ed0  False
True                     False                  True                         False                        RoutertoServer   Connected       FullyInSync         Succeeded            Student-RG-954636  de3e532a-2f76-0d5a-0ab2-e4ea205980ac  False
peerings for: Server-23
AllowForwardedTraffic    AllowGatewayTransit    AllowVirtualNetworkAccess    DoNotVerifyRemoteGateways    Name             PeeringState    PeeringSyncLevel    ProvisioningState    ResourceGroup      ResourceGuid                          UseRemoteGateways
-----------------------  ---------------------  ---------------------------  ---------------------------  ---------------  --------------  ------------------  -------------------  -----------------  ------------------------------------  -------------------
True                     False                  True                         False                        RoutertoStudent  Connected       FullyInSync         Succeeded            Student-RG-954636  5b5e17ab-4224-0f66-2984-1f1eee5c3ed0  False
True                     False                  True                         False                        RoutertoServer   Connected       FullyInSync         Succeeded            Student-RG-954636  de3e532a-2f76-0d5a-0ab2-e4ea205980ac  False

---------------------------------------------------
Networking backend created without error!
END!
---------------------------------------------------
```



2. Part B -  Working with Azure CLI Bash: Links to all files you created in this part, also embed the output of  Working with Azure CLI Bash commands that show your resource list in table format.
3. Part C - Network Review Questions: Answer all the questions, include images if you need.
4. Part D - Creating Virtual Machines: Links to all files you created in this part, also embed the output of  Working with CLI Bash commands that show your resource list in table format.
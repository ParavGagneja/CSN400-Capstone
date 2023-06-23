# Checkpoint6 Submission

- **COURSE INFORMATION: CSN400NAA-2234**
- **STUDENT’S NAME: Parav Gagneja**
- **STUDENT'S NUMBER: 104415211**
- **GITHUB USER ID: 104415211-myseneca**
- **TEACHER’S NAME: Atoosa Nasiri**

### Table of Contents

- [Checkpoint6 Submission](#checkpoint6-submission)
    - [Table of Contents](#table-of-contents)
    - [Part A - Creating Network Resources using Azure CLI](#part-a---creating-network-resources-using-azure-cli)
    - [Part B -  Working with Azure CLI Bash](#part-b----working-with-azure-cli-bash)
    - [Part D - Creating Virtual Machines](#part-d---creating-virtual-machines)


### Part A - Creating Network Resources using Azure CLI

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
<b>Output of route_table_create.sh</b>

``` bash
root@LAPTOP-IUCQG101:/mnt/e/SEM 5/CSN400/Azure/CP6/Workfolder/CSN400-Capstone-Public/CP6-Scripts/bash-scripts# ./route_table_create.sh


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
Route Table: RT-23
---------------------------------------------------

Check if it already exists ---
doesn't exist!
Do you want to create Route Table: RT-23? (yes/no)
yes
Creating Route Table ---
{
  "disableBgpRoutePropagation": false,
  "etag": "W/\"ab644844-3d64-41a7-a892-ef1917dadf99\"",
  "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/routeTables/RT-23",       
  "location": "canadaeast",
  "name": "RT-23",
  "provisioningState": "Succeeded",
  "resourceGroup": "Student-RG-954636",
  "resourceGuid": "915695e3-668f-460e-a968-ab3691a589c4",
  "routes": [],
  "type": "Microsoft.Network/routeTables"
}
Completed!
Created with id:
/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/routeTables/RT-23

---------------------------------------------------
Do you want to create Routes? (yes/no)
yes
Creating Routes in Route Table:

{
  "addressPrefix": "172.17.23.32/27",
  "etag": "W/\"35ffd872-2cff-480c-a0a1-7d66b790ab6c\"",
  "hasBgpOverride": false,
  "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/routeTables/RT-23/routes/Route-to-Server",
  "name": "Route-to-Server",
  "nextHopIpAddress": "192.168.23.36",
  "nextHopType": "VirtualAppliance",
  "provisioningState": "Succeeded",
  "resourceGroup": "Student-RG-954636",
  "type": "Microsoft.Network/routeTables/routes"
}
{
  "addressPrefix": "10.36.199.0/24",
  "etag": "W/\"3bc48844-16b5-4265-a43c-8388b36c4b29\"",
  "hasBgpOverride": false,
  "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/routeTables/RT-23/routes/Route-to-Desktop",
  "name": "Route-to-Desktop",
  "nextHopIpAddress": "192.168.23.36",
  "nextHopType": "VirtualAppliance",
  "provisioningState": "Succeeded",
  "resourceGroup": "Student-RG-954636",
  "type": "Microsoft.Network/routeTables/routes"
}
Netwrok Peerings created!
Routes Created!
Route List
AddressPrefix    HasBgpOverride    Name              NextHopIpAddress    NextHopType       ProvisioningState    ResourceGroup
---------------  ----------------  ----------------  ------------------  ----------------  -------------------  -----------------
172.17.23.32/27  False             Route-to-Server   192.168.23.36       VirtualAppliance  Succeeded            Student-RG-954636
10.36.199.0/24   False             Route-to-Desktop  192.168.23.36       VirtualAppliance  Succeeded            Student-RG-954636

---------------------------------------------------
Do you want to create Ruote Table Associations? (yes/no)
yes
Creating Subnet Associations to Route Table:

{
  "addressPrefix": "172.17.23.32/27",
  "delegations": [],
  "etag": "W/\"2908833e-8f24-496b-99ea-eebe1c80052a\"",
  "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Server-23/subnets/SN1",
  "name": "SN1",
  "privateEndpointNetworkPolicies": "Disabled",
  "privateLinkServiceNetworkPolicies": "Enabled",
  "provisioningState": "Succeeded",
  "resourceGroup": "Student-RG-954636",
  "routeTable": {
    "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/routeTables/RT-23",     
    "resourceGroup": "Student-RG-954636"
  },
  "type": "Microsoft.Network/virtualNetworks/subnets"
}
{
  "addressPrefix": "10.36.199.0/24",
  "delegations": [],
  "etag": "W/\"1664886b-ed35-4613-a629-0f8cb6b4726c\"",
  "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Student-954636-vnet/subnets/Virtual-Desktop-Client",
  "name": "Virtual-Desktop-Client",
  "privateEndpointNetworkPolicies": "Enabled",
  "privateLinkServiceNetworkPolicies": "Enabled",
  "provisioningState": "Succeeded",
  "resourceGroup": "Student-RG-954636",
  "routeTable": {
    "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/routeTables/RT-23",     
    "resourceGroup": "Student-RG-954636"
  },
  "type": "Microsoft.Network/virtualNetworks/subnets"
}
Associations Created!

---------------------------------------------------
Route Table and Routes created without error!
END!
---------------------------------------------------
```
<b>Question 1</b>

``` bash
In network_config_test.sh "if [[ ! $(az group list -o tsv --query "[?name=='$RG_NAME']") ]]" checks for resource group if that exists 
or not as az group list extract the list of groups which exist on azure and query is used to check for specific group.
```
<b>Question 2</b>
``` bash
It is crucial to check if a resource exist before creating it to avoid duplication conflicts. if a resource is created again it may overwrite the existing one which might result in creating issues with exisitng environment.

syntax used:
echo "Check if it already exists ---"
if [[ $(az network vnet list -g $RG_NAME -o tsv --query "[?name=='$vnet']") ]]
then
      echo "exists!"
      az network vnet show -g $RG_NAME --name $vnet --query id 
else
   echo "doesn't exist!"


To check if a vnet exist is vnet_create.sh use above syntax and replace value of '$vnet' with the name of you want to check for
if it exists, then after running command it will show "exists!"
```



### Part B -  Working with Azure CLI Bash

<b>details of default student vnet</b>

``` bash
root@LAPTOP-IUCQG101:/mnt/e/SEM 5/CSN400/Azure/CP6/Workfolder/CSN400-Capstone-Public/CP6-Scripts/bash-scripts# az network vnet subnet show -g "Student-RG-954636" -n "Virtual-Desktop-Client" --vnet-name "Student-954636-vnet"
{
  "addressPrefix": "10.36.199.0/24",
  "delegations": [],
  "etag": "W/\"1664886b-ed35-4613-a629-0f8cb6b4726c\"",
  "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/virtualNetworks/Student-954636-vnet/subnets/Virtual-Desktop-Client",
  "name": "Virtual-Desktop-Client",
  "privateEndpointNetworkPolicies": "Enabled",
  "privateLinkServiceNetworkPolicies": "Enabled",
  "provisioningState": "Succeeded",
  "resourceGroup": "Student-RG-954636",
  "routeTable": {
    "id": "/subscriptions/bd627181-5ddb-4bb6-b03f-5297c3be4e1e/resourceGroups/Student-RG-954636/providers/Microsoft.Network/routeTables/RT-23",
    "resourceGroup": "Student-RG-954636"
  },
  "type": "Microsoft.Network/virtualNetworks/subnets"
}
```

<b>details of Router-23 subnet SN1 using az show and query it for details of subnet and route associations</b>

``` bash
root@LAPTOP-IUCQG101:/mnt/e/SEM 5/CSN400/Azure/CP6/Workfolder/CSN400-Capstone-Public/CP6-Scripts/bash-scripts# az network vnet subnet show --resource-group "Student-RG-954636" --vnet-name "Router-23" --name "SN1" --query '{ subnet: name, routeAssociations: routeTable.routeAssociations }' --output json
{
  "routeAssociations": null,
  "subnet": "SN1"
}
```
3. Part C - Network Review Questions: Answer all the questions, include images if you need.
### Part D - Creating Virtual Machines

<b>List all VMs and the output in table format</b>

`Command used: az vm list --output table --query "[].{Name:name, ResourceGroup:resourceGroup, Location:location, Size:hardwareProfile.vmSize, ProvisioningState:provisioningState}" > vm_list.tbl `

``` bash
Name    ResourceGroup      Location    Size           ProvisioningState
------  -----------------  ----------  -------------  -------------------
LR-23   STUDENT-RG-954636  canadaeast  Standard_B2ms  Succeeded
LS-23   STUDENT-RG-954636  canadaeast  Standard_B2ms  Succeeded
WC-23   STUDENT-RG-954636  canadaeast  Standard_B2ms  Succeeded
WS-23   STUDENT-RG-954636  canadaeast  Standard_B2ms  Succeeded
```

<b>details of WC-23 using az show command and the output in json</b>

``` bash
root@LAPTOP-IUCQG101:/mnt/e/SEM 5/CSN400/Azure/CP6/Workfolder/CSN400-Capstone-Public/CP6-Scripts/bash-scripts# az resource show --name WC-23 --resource-group "Student-RG-954636" --resource-type Microsoft.Compute/virtualMachines --output json > WC-23-details.json
```
<b>List all NSG using az list command and the output in table format</b>

`Command used: az network nsg list --output table > nsg_list.tbl`

``` bash
Location    Name       ProvisioningState    ResourceGroup      ResourceGuid
----------  ---------  -------------------  -----------------  ------------------------------------
canadaeast  LR-NSG-23  Succeeded            Student-RG-954636  c0d34bc2-5b2a-4106-b74a-58680573895c
canadaeast  LS-NSG-23  Succeeded            Student-RG-954636  227f2a65-e6e8-4a39-868d-02b30c71698a
canadaeast  WC-NSG-23  Succeeded            Student-RG-954636  1197b518-9e42-4504-86b1-ef2048a3f949
canadaeast  WS-NSG-23  Succeeded            Student-RG-954636  15465c85-3bd0-43c6-84d2-542553e487b3
```

<b>After deleting list all VMs using az vm list ... with the output in table format</b>

``` bash
root@LAPTOP-IUCQG101:/mnt/e/SEM 5/CSN400/Azure/CP6/Workfolder/CSN400-Capstone-Public/CP6-Scripts/bash-scripts# az vm list --output table

root@LAPTOP-IUCQG101:/mnt/e/SEM 5/CSN400/Azure/CP6/Workfolder/CSN400-Capstone-Public/CP6-Scripts/bash-scripts# 
```

<img src="auto_shut.jpg"
     alt="autoshutdown configuration"
     style="float: left; margin-right: 10px;" />
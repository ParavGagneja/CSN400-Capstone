# Checkpoint10 Submission

- **COURSE INFORMATION: CSN400NAA-2234**
- **STUDENT’S NAME: Parav Gagneja**
- **STUDENT'S NUMBER: 104415211**
- **GITHUB USER ID: 104415211-myseneca**
- **TEACHER’S NAME: Atoosa Nasiri**

### Table of Contents

1. [Part A – Route Table Updates](#part-a---route-table-updates)
2. [Part B – Port Forwarding Basic Connectivity](#header2)
3. [Part C – Logging & Isolating Masqueraded Packets](#header3)
4. [Part D - Azure Cost Analysis Charts](#haeder4)

### Part A - Route Table Updates

```
List of Route Tables

odl_user [ ~ ]$ az network route-table list --output table
DisableBgpRoutePropagation    Location    Name      ProvisioningState    ResourceGroup      ResourceGuid
----------------------------  ----------  --------  -------------------  -----------------  ------------------------------------
False                         canadaeast  RT-23     Succeeded            Student-RG-954636  915695e3-668f-460e-a968-ab3691a589c4
False                         canadaeast  RT-EX-23  Succeeded            Student-RG-954636  4fadd42c-098c-4275-8561-8350c570a771
```
<br>

```
List of Routes

Route Table: RT-23

odl_user [ ~ ]$ az network route-table route list --resource-group Student-RG-954636 --route-table-name RT-23 --output table
AddressPrefix     HasBgpOverride    Name              NextHopIpAddress    NextHopType       ProvisioningState    ResourceGroup
----------------  ----------------  ----------------  ------------------  ----------------  -------------------  -----------------
172.17.23.32/27   False             Route-to-Server   192.168.23.36       VirtualAppliance  Succeeded            Student-RG-954636
10.36.199.0/24    False             Route-to-Desktop  192.168.23.36       VirtualAppliance  Succeeded            Student-RG-954636
192.168.18.32/27  False             External-Router   192.168.23.36       VirtualAppliance  Succeeded            Student-RG-954636


Route Table: RT-EX-23

odl_user [ ~ ]$ az network route-table route list --resource-group Student-RG-954636 --route-table-name RT-EX-23 --output table
AddressPrefix     HasBgpOverride    Name          NextHopIpAddress    NextHopType       ProvisioningState    ResourceGroup
----------------  ----------------  ------------  ------------------  ----------------  -------------------  -----------------
192.168.18.32/27  False             Route-to-Hub  192.168.99.36       VirtualAppliance  Succeeded            Student-RG-954636
```
<br>

```
Subnets

Route Table: RT-23; Vnet: Server-23

odl_user [ ~ ]$ az network vnet subnet list --resource-group Student-RG-954636 --vnet-name Server-23 --output table
AddressPrefix     Name    PrivateEndpointNetworkPolicies    PrivateLinkServiceNetworkPolicies    ProvisioningState    ResourceGroup
----------------  ------  --------------------------------  -----------------------------------  -------------------  -----------------
172.17.23.64/27   SN2     Disabled                          Enabled                              Succeeded            Student-RG-954636
172.17.23.96/27   SN3     Disabled                          Enabled                              Succeeded            Student-RG-954636
172.17.23.128/27  SN4     Disabled                          Enabled                              Succeeded            Student-RG-954636
172.17.23.32/27   SN1     Disabled                          Enabled                              Succeeded            Student-RG-954636

Route Table: RT-23; Vnet: Student-954636-vnet

odl_user [ ~ ]$ az network vnet subnet list --resource-group Student-RG-954636 --vnet-name Student-954636-vnet --output table
AddressPrefix    Name                    PrivateEndpointNetworkPolicies    PrivateLinkServiceNetworkPolicies    ProvisioningState    ResourceGroup
---------------  ----------------------  --------------------------------  -----------------------------------  -------------------  -----------------
10.36.199.0/24   Virtual-Desktop-Client  Enabled                           Enabled                              Succeeded            Student-RG-954636


```
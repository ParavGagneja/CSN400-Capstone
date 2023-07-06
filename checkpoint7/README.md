# Checkpoint7 Submission

- **COURSE INFORMATION: CSN400NAA-2234**
- **STUDENT’S NAME: Parav Gagneja**
- **STUDENT'S NUMBER: 104415211**
- **GITHUB USER ID: 104415211-myseneca**
- **TEACHER’S NAME: Atoosa Nasiri**

### Table of Contents

- [Checkpoint7 Submission](#checkpoint7-submission)
    - [Table of Contents](#table-of-contents)
    - [Part A - Creating \& Configuring VMs - Using Portal](#part-a---creating--configuring-vms---using-portal)
    - [Part B - Basic Connectivity - VM Configuration](#part-b---basic-connectivity---vm-configuration)

### Part A - Creating & Configuring VMs - Using Portal

``` bash
az group list -out table


odl_user [ ~ ]$ az group list --output table
Name               Location    Status
-----------------  ----------  ---------
Bastion_RG         canadaeast  Succeeded
NetworkWatcherRG   canadaeast  Succeeded
Student-RG-954636  canadaeast  Succeeded
```
``` bash
az vm list -g $RG -o table


odl_user [ ~ ]$ az vm list -g $RG -o table
Name    ResourceGroup      Location    Zones
------  -----------------  ----------  -------
LR-23   Student-RG-954636  canadaeast
LS-23   Student-RG-954636  canadaeast
WC-23   Student-RG-954636  canadaeast
WS-23   Student-RG-954636  canadaeast
```
``` bash
az network nic list -g $RG -o table


odl_user [ ~ ]$ az network nic list -g $RG -o table
EnableAcceleratedNetworking    EnableIPForwarding    Location    MacAddress         Name      NicType    Primary    ProvisioningState    ResourceGroup      ResourceGuid                          VnetEncryptionSupported
-----------------------------  --------------------  ----------  -----------------  --------  ---------  ---------  -------------------  -----------------  ------------------------------------  -------------------------
False                          False                 canadaeast  00-22-48-6E-1F-41  lr-23458  Standard   True       Succeeded            Student-RG-954636  c1274639-3f6d-471d-b538-3a10e916b819  False
False                          False                 canadaeast  00-22-48-6D-86-86  ls-23715  Standard   True       Succeeded            Student-RG-954636  68598b8d-8b12-42e5-b2e0-6c7c6c4f4226  False
False                          False                 canadaeast  00-0D-3A-F4-2A-D1  wc-232    Standard   True       Succeeded            Student-RG-954636  534e577c-6411-434f-a939-5ec751aa2aa9  False
False                          False                 canadaeast  00-22-48-D5-68-9A  ws-2323   Standard   True       Succeeded            Student-RG-954636  81654821-97c9-426b-ba81-c49e39c99616  False
```
``` bash
az network nsg list -g $RG -o table


odl_user [ ~ ]$ az network nsg list -g $RG  -o table
Location    Name       ProvisioningState    ResourceGroup      ResourceGuid
----------  ---------  -------------------  -----------------  ------------------------------------
canadaeast  LR-23-nsg  Succeeded            Student-RG-954636  b7436afb-8d2f-4e3e-9e99-2dcd7f3ec741
canadaeast  LR-NSG-23  Succeeded            Student-RG-954636  c0d34bc2-5b2a-4106-b74a-58680573895c
canadaeast  LS-23-nsg  Succeeded            Student-RG-954636  7a7b906f-b055-4d19-a338-ab13db64e466
canadaeast  LS-NSG-23  Succeeded            Student-RG-954636  227f2a65-e6e8-4a39-868d-02b30c71698a
canadaeast  WC-23-nsg  Succeeded            Student-RG-954636  35e925e7-1052-4846-bc62-b861c66fbc3e
canadaeast  WC-NSG-23  Succeeded            Student-RG-954636  1197b518-9e42-4504-86b1-ef2048a3f949
canadaeast  WS-23-nsg  Succeeded            Student-RG-954636  dea74b96-6f32-40af-af84-37ff2b8b5ad6
canadaeast  WS-NSG-23  Succeeded            Student-RG-954636  15465c85-3bd0-43c6-84d2-542553e487b3
```
``` bash
az disk list -g $RG -o table


odl_user [ ~ ]$ az disk list -g $RG -o table
Name                                             ResourceGroup      Location    Zones    Sku           OsType    SizeGb    ProvisioningState
-----------------------------------------------  -----------------  ----------  -------  ------------  --------  --------  -------------------
LR-23_OsDisk_1_0cfa3fd6a27b4d4bafbea943e71c16c3  Student-RG-954636  canadaeast           Standard_LRS  Linux     64        Succeeded
LS-23_OsDisk_1_e93b13dd6b9e4944bdfedc6816aad565  Student-RG-954636  canadaeast           Standard_LRS  Linux     64        Succeeded
WC-23_OsDisk_1_b353ce51fa7f4c88a06f6d3673d177ed  Student-RG-954636  canadaeast           Standard_LRS  Windows   127       Succeeded
WS-23_OsDisk_1_c1e83f32a3e74c3c83e615162b51c3dd  Student-RG-954636  canadaeast           Standard_LRS  Windows   127       Succeeded
```

### Part B - Basic Connectivity - VM Configuration

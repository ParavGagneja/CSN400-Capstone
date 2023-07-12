# Checkpoint8 Submission

- **COURSE INFORMATION: CSN400NAA-2234**
- **STUDENT’S NAME: Parav Gagneja**
- **STUDENT'S NUMBER: 104415211**
- **GITHUB USER ID: 104415211-myseneca**
- **TEACHER’S NAME: Atoosa Nasiri**

### Table of Contents

1. [Part A - Creating & Configuring VMs - Using Azure CLI Scripts](#header)
2. [Part B - Basic Connectivity - Linux VMs Firewall Setting](#header)
3. [Part C - Azure Cost Analysis Charts](#header)

### Part A - Creating & Configuring VMs - Using Azure CLI Scripts

1. List of VM, NSG, NIC, and Disks:
``` bash
Virtual Machines(VM):

odl_user [ ~ ]$ az vm list --output table
Name    ResourceGroup      Location    Zones
------  -----------------  ----------  -------
LR-23   STUDENT-RG-954636  canadaeast
LS-23   STUDENT-RG-954636  canadaeast
WC-23   STUDENT-RG-954636  canadaeast
WS-23   STUDENT-RG-954636  canadaeast
```

``` bash
Network Security Groups(NSG):

odl_user [ ~ ]$ az network nsg list --output table
Location    Name        ProvisioningState    ResourceGroup      ResourceGuid
----------  ----------  -------------------  -----------------  ------------------------------------
canadaeast  LR-23-nsg   Succeeded            Student-RG-954636  b7436afb-8d2f-4e3e-9e99-2dcd7f3ec741
canadaeast  LR-NSG-23   Succeeded            Student-RG-954636  c0d34bc2-5b2a-4106-b74a-58680573895c
canadaeast  LR23nsg219  Succeeded            Student-RG-954636  a0f79daa-ae03-4b73-9dbb-df6ee737a5bf
canadaeast  LR23nsg295  Succeeded            Student-RG-954636  ae30bb74-52bd-4059-91b6-a188f0338018
canadaeast  LS-23-nsg   Succeeded            Student-RG-954636  7a7b906f-b055-4d19-a338-ab13db64e466
canadaeast  LS-NSG-23   Succeeded            Student-RG-954636  227f2a65-e6e8-4a39-868d-02b30c71698a
canadaeast  LS23nsg778  Succeeded            Student-RG-954636  3471256f-a515-4488-bb09-c448c4eb24b3
canadaeast  WC-23-nsg   Succeeded            Student-RG-954636  35e925e7-1052-4846-bc62-b861c66fbc3e
canadaeast  WC-NSG-23   Succeeded            Student-RG-954636  1197b518-9e42-4504-86b1-ef2048a3f949
canadaeast  WC23nsg958  Succeeded            Student-RG-954636  38344582-fc8c-49f8-ba61-77635d199e56
canadaeast  WS-23-nsg   Succeeded            Student-RG-954636  dea74b96-6f32-40af-af84-37ff2b8b5ad6
canadaeast  WS-NSG-23   Succeeded            Student-RG-954636  15465c85-3bd0-43c6-84d2-542553e487b3
canadaeast  WS23nsg697  Succeeded            Student-RG-954636  0c8f8fd3-746e-4909-8d1b-4af9a67aa680
```

``` bash
Network Interface Cards(NIC):

odl_user [ ~ ]$ az network nic list --output table
EnableAcceleratedNetworking    EnableIPForwarding    Location    MacAddress         Name    NicType    Primary    ProvisioningState    ResourceGroup      ResourceGuid                          VnetEncryptionSupported
-----------------------------  --------------------  ----------  -----------------  ------  ---------  ---------  -------------------  -----------------  ------------------------------------  -------------------------
False                          True                  canadaeast  00-0D-3A-0A-2B-F0  lr-23   Standard   True       Succeeded            Student-RG-954636  8757930c-09ce-48b8-a7e2-68a0a06da9f3  False
False                          False                 canadaeast  00-0D-3A-F4-5E-A1  ls-23   Standard   True       Succeeded            Student-RG-954636  a48629e8-5677-4ca7-9ee1-84849bc83597  False
False                          False                 canadaeast  00-0D-3A-F4-1B-0B  wc-23   Standard   True       Succeeded            Student-RG-954636  b5902ac8-49f6-4d73-9d12-0710dc6df62b  False
False                          False                 canadaeast  00-0D-3A-0A-04-B8  ws-23   Standard   True       Succeeded            Student-RG-954636  45047444-a063-4dca-8ba2-62d30d165a77  False
```

``` bash
Disks:

odl_user [ ~ ]$ az disk list --output table
Name                                          ResourceGroup      Location    Zones    Sku              OsType    SizeGb    ProvisioningState
--------------------------------------------  -----------------  ----------  -------  ---------------  --------  --------  -------------------
LR-23_disk1_17cd7051205649c6aff24e05e75419b6  STUDENT-RG-954636  canadaeast           StandardSSD_LRS  Linux     64        Succeeded
LS-23_disk1_36bcd672aa8c46b190ba8e59710e8623  STUDENT-RG-954636  canadaeast           StandardSSD_LRS  Linux     64        Succeeded
WC-23_disk1_72a25cbf85324260a8149f734f622536  STUDENT-RG-954636  canadaeast           StandardSSD_LRS  Windows   127       Succeeded
WS-23_disk1_7d9e794e6d264abfaab0b0b52f7fb0fd  STUDENT-RG-954636  canadaeast           StandardSSD_LRS  Windows   127       Succeeded
```
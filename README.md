# ASIX AX88796C SPI Fast Ethernet Linux driver (`ax88796c-spi.o`)

Official ASIX AX88796C SPI Fast Ethernet Linux driver source. (Driver module name: `ax88796c-spi.o`)

---
## ASIX SPI/Non-PCI Fast Ethernet ICs 
- [AX88796C SPI/Non-PCI Fast Ethernet Chip](https://www.asix.com.tw/en/product/EmbeddedEthernet/1-PortEthernet/AX88796C)

The **AX88796C** is a low‑power SPI/Non-PCI Fast Ethernet controller designed for embedded and industrial networking. It supports multiple host interfaces, including **SPI and localbus/SRAM‑like**. The local bus allows 8/16‑bit SRAM‑like or multiplexed connections, enabling direct MCU integration without extra logic. For CPUs with SPI, the AX88796C also offers an optional SPI slave interface to simplify hardware design.

---
## File Description

- **README** – This file  
- **ax88796c_main.c / .h** – Driver main functions and headers  
- **ax88796c_ioctl.c / .h** – Helper functions and headers  
- **ax88796c_spi.c / .h** – SPI adapter layer and headers  
- **Makefile** – Driver build file  
- **ax88796c_spi.log** – Debug log file  
- **COPYING** – GNU General Public License  

---
## Compiling the Driver

**Requirements:**
- AX88796C SPI Linux Driver source  
- Linux Kernel source code  
- Cross‑compiler  

**Steps:**
1. Extract the driver source package:  
   ```bash
   tar jxvf SOURCE_PACKAGE.tar.bz2
   ```
2. Edit the `Makefile` to specify the Linux kernel source path:  
   ```make
   KDIR = /usr/src/linux-4.17.6
   ```
3. Compile the driver:  
   ```bash
   make
   ```
4. If successful, `ax88796c-spi.ko` will be generated in the current directory.  

---
## Driver Parameters

### [comp]
- **1** → Enable SPI compression mode  
- **0** → Disable (default)  

### [ps_level]
- **0** → Disable power saving (default)  
- **1** → Enable level 1  
- **2** → Enable level 2  

### [msg_enable]
Bitmask options for debug messages:  
- `0x0002` → Probe messages  
- `0x0004` → Media change messages  
- `0x0040` → RX error messages  
- `0x0080` → TX error messages  
- `0x4000` → Wake‑On‑LAN messages  
- *(others available for debugging)*  

**Default:**  
`NETIF_MSG_PROBE | NETIF_MSG_LINK | NETIF_MSG_RX_ERR | NETIF_MSG_TX_ERR | NETIF_MSG_WOL`  

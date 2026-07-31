# ASIX AX88796C SPI Fast Ethernet Linux driver (`ax88796c-spi.o`)

This is the official **ASIX AX88796C SPI Fast Ethernet Linux driver** source (module name: `ax88796c-spi.o`), which is suitable for embedded systems, smart home/office devices, Ethernet hubs, switches, routers and home gateway applications.

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
4. If successful, `ax88796c-spi.o` will be generated in the current directory.  

---
## Driver Parameters

```c
[comp]
  setting:
	1 -> Enable SPI compression mode
	0 -> Disable SPI compression mode
  default:
	0

[ps_level]
  setting:
	0 -> Disable power saving
	1 -> Enable power saving level 1
	2 -> Enable power saving level 2
  default:
	0

[msg_enable]
  setting:
	NETIF_MSG_DRV		(0x0001)	(Not used)
	NETIF_MSG_PROBE		(0x0002)	(Probe messages)
	NETIF_MSG_LINK		(0x0004)	(Media change messages)
	NETIF_MSG_TIMER		(0x0008)	(Watchdog messages)
	NETIF_MSG_IFDOWN	(0x0010)	(Not used)
	NETIF_MSG_IFUP		(0x0020)	(Not used)
	NETIF_MSG_RX_ERR	(0x0040)	(RX error messages)
	NETIF_MSG_TX_ERR	(0x0080)	(TX error messages)
	NETIF_MSG_TX_QUEUED	(0x0100)	(TX queue messages)
	NETIF_MSG_INTR		(0x0200)	(Interrupt messages)
	NETIF_MSG_TX_DONE	(0x0400)	(Not used)
	NETIF_MSG_RX_STATUS	(0x0800)	(RX indication messages)
	NETIF_MSG_PKTDATA	(0x1000)	(TX/RX packet data)
	NETIF_MSG_HW		(0x2000)	(MAC/PHY register dump messages)
	NETIF_MSG_WOL		(0x4000)	(Wake-On-Lan messages)
  default:
	NETIF_MSG_PROBE | NETIF_MSG_LINK | \
	NETIF_MSG_RX_ERR | NETIF_MSG_TX_ERR | \
	NETIF_MSG_WOL
```

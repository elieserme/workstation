# Workstation

This is a receipt of workstation for daily use.

## Table of Contents

- [Workstation](#workstation)
	- [Table of Contents](#table-of-contents)
	- [Hardware](#hardware)
	- [BIOS settings](#bios-settings)
	- [Windows 11](#windows-11)
	- [Omarchy Linux](#omarchy-linux)
	- [Final Steps](#final-steps)

## Hardware

|       Type       | Item                                                                                                                                                                                             |
| :--------------: | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
|     **CPU**      | **[Intel i5 14600K](https://www.intel.com.br/content/www/br/pt/products/sku/236799/intel-core-i5-processor-14600k-24m-cache-up-to-5-30-ghz/specifications.html)** 14th gen 14 core 20 threads 5.3Ghz max         |
| **Motherboard**  | **[MSI B760M-P DDR4](https://www.msi.com/Motherboard/PRO-B760M-P-DDR4)** Micro ATX _(**[datasheet](https://github.com/elieserme/workstation/raw/refs/heads/main/docs/PRO-B760M-P-DDR4.pdf)**, **[manual](https://github.com/elieserme/workstation/raw/refs/heads/main/docs/PROB760M-PDDR4-MANUAL.pdf)** and latest **[BIOS](https://github.com/elieserme/workstation/raw/refs/heads/main/bios/7E02v1F.zip)**)_                                                                                              |
|     **RAM**      | **2 x [Lexar LD4AU032G-B3200GSST](https://americas.lexar.com/product/lexar-ddr4-3200-udimm-desktop-memory/)** 64GB DDR4 3200MHz _(native jedec speed without XMP profile)_                                                                   |
|     **GPU**      | **[MSI RTX 5070 TI 16GB](https://www.msi.com/Graphics-Card/GeForce-RTX-5070-Ti-16G-INSPIRE-3X-OC-PLUS)** NVIDIA Blackwell _(**[datasheet](https://github.com/elieserme/workstation/raw/refs/heads/main/docs/GeForce-RTX-5070-Ti-16G-INSPIRE-3X-OC-PLUS.pdf)**)_                                                                          |
|     **NVMe**     | **[Kingston KC3000](https://www.kingston.com/br/ssd/kc3000-nvme-m2-solid-state-drive?capacity=1024gb)** 1TB PCIe 4.0 x4 _(**[datasheet](https://github.com/elieserme/workstation/raw/refs/heads/main/docs/KC3000_us.pdf)**)_<br />**[WD Black SN750](https://www.westerndigital.com/pt-br/products/internal-drives/wd-black-sn750-nvme-ssd#WDS250G3X0C)** 1TB PCIe 3.0 x4 _(**[datasheet](https://github.com/elieserme/workstation/raw/refs/heads/main/docs/data-sheet-wd-black-sn-750-nvme-ssd-heatsink-idk.pdf)**)_                                               |
|     **Wireless**     | **[Intel AX210](https://www.intel.com.br/content/www/br/pt/products/sku/204836/intel-wifi-6e-ax210-gig/specifications.html)** Wi-Fi 6E and Bluetooth 5.4 PCI adapter card                                               |
|     **RAID 5**      | **2 x** **[Seagate BarraCuda ST2000DM008-2FR102](https://www.seagate.com/br/pt/products/hard-drives/barracuda-hard-drive/)** 2TB HDD 3.5" _(**[datasheet](https://github.com/elieserme/workstation/raw/refs/heads/main/docs/3-5-barracudaDS1900-11-1806BR-pt_PT.pdf)**)_ <br /> **[Western Digital WD20SPZX](https://www.westerndigital.com/pt-br/products/internal-drives/wd-blue-mobile-sata-hdd?sku=WD20SPZX#WD20SPZX)** 2TB HDD 2.5" _(**[datasheet](https://github.com/elieserme/workstation/raw/refs/heads/main/docs/product-brief-western-digital-wd-blue-mobile-sata-hdd.pdf)**)_ 
| **AIO** | **[Arctic Liquid Freezer III Pro 360](https://www.arctic.de/en/Liquid-Freezer-III-Pro-360)** for CPU and VRM _(**[datasheet](https://github.com/elieserme/workstation/raw/refs/heads/main/docs/Spec_Sheet_Liquid_Freezer_III_Pro_360_EN.pdf)** and **[manual](https://github.com/elieserme/workstation/raw/refs/heads/main/docs/Quick_Manual_Intel_r1b.pdf)**)_ |                                              |
|  **Fans**  |  **3 x [Artic P12 Pro PST](https://www.arctic.de/en/P12-Pro-PST/ACFAN00306A)** for front intake _(**[datasheet](https://github.com/elieserme/workstation/raw/refs/heads/main/docs/Spec_Sheet_P12_Pro_PST_EN.pdf)**)_ <br /> **2 x [Fractal Aspect 14 PWM](https://www.fractal-design.com/products/fans/aspect/aspect-14-pwm/)** for top exaust _(**[datasheet](https://github.com/elieserme/workstation/raw/refs/heads/main/docs/Aspect_Product-Sheet_EN.pdf)**)_ <br />**[Noctua NF-A12x25 PWM](https://www.noctua.at/en/products/nf-a12x25-pwm)** for rear exaust _(**[datasheet](https://github.com/elieserme/workstation/raw/refs/heads/main/docs/noctua_nf_a12x25_pwm_infosheet_en_web.pdf)** and **[manual](https://github.com/elieserme/workstation/raw/refs/heads/main/docs/noctua_nf_a12x25_pwm_manual_en_web.pdf)**)_                                                                                                 |
| **Power Supply** | **[Super Flower LEADEX III GOLD 850W](https://www.super-flower.com.tw/ja/products/leadex-iii-gold-850w)**  _(use **[this link](https://www.msi.com/power-supply-calculator)** to calculate your power supply need)_                                           |
|     **Case**     | **[Fractal North](https://www.fractal-design.com/products/cases/north/north/charcoal-black/)** ATX case _(**[datasheet](https://github.com/elieserme/workstation/raw/refs/heads/main/docs/North_Product-Sheet_EN.pdf)** and **[manual](https://github.com/elieserme/workstation/raw/refs/heads/main/docs/North-Manual-V1.2.pdf)**)_               |

## BIOS settings

MSI B760M-P DDR4 using **BIOS version 7E02v1F** essential settings:

- Exit &gt; **Load optimised defaults**
- Boot &gt; Secure Boot &gt; **Disabled** _(supporting Linux dual boot)_
- Exit &gt; **Save Changes & Restart**
  
## Windows 11

If you experience difference in date & time on Windows, it's necessary make Windows work on GMT time using the following command:

```bash
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\TimeZoneInformation" /v RealTimeIsUniversal /d 1 /t REG_QWORD /f
```

To increase Windows performance you can disable Downfall mitigations:

```bash
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v FeatureSettingsOverride /t REG_DWORD /d 33554432 /f
```

You also can **Turn off Memory Integrity on Windows 11** to avoid problems on Opencore boot _(and increase gamming performance)_:

- Select **Start**, enter ‘**Core Isolation**’ in the taskbar, and select **Core Isolation** from the list of results to open the Windows security app;
- On the **Core isolation** page, _**turn off** the toggle_ for **Memory Integrity**. You might need to restart the computer. 

## Omarchy Linux

The included **`USBMap.kext`** with USB mapping is for the **ASUS ROG STRIX B360-G Gaming and MacPro7,1 SMBIOS only** with all extenal **USB 3** ports enabled.

Keep in mind that **you have to choose what ports to enable**, because **MacOS has a 15 logical ports limit** and each port has 2 logical ports _(one physical port has one USB 2 and one USB 3 personality... so **2 logical ports for each USB 3.0 port**)_.

## Final Steps

The EFI folder configuration already comes with SecureBootModel disabled by default. After successfully installing MacOS you can enable these options as below.

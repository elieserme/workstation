# Workstation

This is a receipt of workstation for daily use.

## Table of Contents

- [Workstation](#workstation)
	- [Table of Contents](#table-of-contents)
	- [Hardware](#hardware)
	- [BIOS settings](#bios-settings)
	- [Windows 11](#windows-11)
	- [Omarchy Linux](#omarchy-linux)

## Hardware

|       Type       | Item                                                                                                                                                                                             |
| :--------------: | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
|     **CPU**      | **[Intel i5 14600K](https://www.intel.com.br/content/www/br/pt/products/sku/236799/intel-core-i5-processor-14600k-24m-cache-up-to-5-30-ghz/specifications.html)** 14th gen 14 core 20 threads 5.3Ghz max         |
| **Motherboard**  | **[MSI B760M-P](https://www.msi.com/Motherboard/PRO-B760M-P-DDR4)** Micro ATX _(download **[datasheet](https://raw.github.com/elieserme/workstation/main/docs/PRO-B760M-P-DDR4.pdf)**, **[manual](https://raw.github.com/elieserme/workstation/main/docs/PROB760M-PDDR4-MANUAL.pdf)** and latest **[BIOS](https://raw.github.com/elieserme/workstation/main/bios/7E02v1F.zip)**)_                                                                                              |
|     **RAM**      | **2 x [Lexar LD4AU032G-B3200GSST](https://americas.lexar.com/product/lexar-ddr4-3200-udimm-desktop-memory/)** 64GB DDR4 3200MHz _(native jedec speed)_                                                                   |
|     **GPU**      | **[MSI RTX 5070 TI 16GB](https://www.msi.com/Graphics-Card/GeForce-RTX-5070-Ti-16G-INSPIRE-3X-OC-PLUS)** NVIDIA Blackwell _(download **[datasheet](https://raw.github.com/elieserme/workstation/main/docs/GeForce-RTX-5070-Ti-16G-INSPIRE-3X-OC-PLUS.pdf)**)_                                                                          |
|     **NVMe**     | **[Kingston KC3000](https://www.kingston.com/br/ssd/kc3000-nvme-m2-solid-state-drive?capacity=1024gb)** 1TB PCIe 4.0 x4 _(download **[datasheet](https://raw.github.com/elieserme/workstation/main/docs/KC3000_us.pdf)**)_<br />**[WD Black SN750](https://www.westerndigital.com/pt-br/products/internal-drives/wd-black-sn750-nvme-ssd#WDS250G3X0C)** 1TB PCIe 3.0 x4 _(download **[datasheet](https://raw.github.com/elieserme/workstation/main/docs/data-sheet-wd-black-sn-750-nvme-ssd-heatsink-idk.pdf)**)_                                               |
|     **Wireless**     | **[Intel AX210](https://www.intel.com.br/content/www/br/pt/products/sku/204836/intel-wifi-6e-ax210-gig/specifications.html)** Wi-Fi 6E and Bluetooth 5.4 PCI adapter card                                               |
|     **RAID 5**      | **2 x** **[Seagate BarraCuda ST2000DM008-2FR102](https://www.seagate.com/br/pt/products/hard-drives/barracuda-hard-drive/)** 2TB HDD 3.5" _(download **[datasheet](https://raw.github.com/elieserme/workstation/main/docs/3-5-barracudaDS1900-11-1806BR-pt_PT.pdf)**)_ <br /> **[Western Digital WD20SPZX](https://www.westerndigital.com/pt-br/products/internal-drives/wd-blue-mobile-sata-hdd?sku=WD20SPZX#WD20SPZX)** 2TB HDD 2.5" _(download **[datasheet](https://raw.github.com/elieserme/workstation/main/docs/product-brief-western-digital-wd-blue-mobile-sata-hdd.pdf)**)_ 
| **AIO** | **[Arctic Liquid Freezer III Pro 360](https://www.arctic.de/en/Liquid-Freezer-III-Pro-360)** for CPU and VRM _(download **[datasheet](https://raw.github.com/elieserme/workstation/main/docs/Spec_Sheet_Liquid_Freezer_III_Pro_360_EN.pdf)** and **[manual](https://raw.github.com/elieserme/workstation/main/docs/Quick_Manual_Intel_r1b.pdf)**)_ |                                              |
|  **Fans**  |  **3 x [Artic P12 Pro PST](https://www.arctic.de/en/P12-Pro-PST/ACFAN00306A)** for front intake _(download **[datasheet](https://raw.github.com/elieserme/workstation/main/docs/Spec_Sheet_P12_Pro_PST_EN.pdf)**)_ <br /> **2 x [Fractal Aspect 14 PWM](https://www.fractal-design.com/products/fans/aspect/aspect-14-pwm/)** for top exaust _(download **[datasheet](https://raw.github.com/elieserme/workstation/main/docs/Aspect_Product-Sheet_EN.pdf)**)_ <br />**[Noctua NF-A12x25 PWM](https://www.noctua.at/en/products/nf-a12x25-pwm)** for rear exaust _(download **[datasheet](https://raw.github.com/elieserme/workstation/main/docs/noctua_nf_a12x25_pwm_infosheet_en_web.pdf)** and **[manual](https://raw.github.com/elieserme/workstation/main/docs/noctua_nf_a12x25_pwm_manual_en_web.pdf)**)_                                                                                                 |
| **Power Supply** | **[Super Flower LEADEX III GOLD 850W](https://www.super-flower.com.tw/ja/products/leadex-iii-gold-850w)**  _(use **[this link](https://www.msi.com/power-supply-calculator)** to calculate your power supply need)_                                           |
|     **Case**     | **[Fractal North](https://www.fractal-design.com/products/cases/north/north/charcoal-black/)** ATX case _(download **[datasheet](https://raw.github.com/elieserme/workstation/main/docs/North_Product-Sheet_EN.pdf)** and **[manual](https://raw.github.com/elieserme/workstation/main/docs/North-Manual-V1.2.pdf)**)_               |

## BIOS settings

MSI B760M-P using **BIOS version 7E02v1F** essential settings:

- Exit &gt; **Load optimised defaults**
- Boot &gt; Secure Boot &gt; **Disabled** _(supporting Linux dual boot)_
- Exit &gt; **Save Changes & Restart**
  
## Windows 11

Install WSL2 with Ubuntu default with following command on PowerShell prompt:
```bash
wsl --install
```

There is a _**[script](https://github.com/elieserme/workstation/raw/refs/heads/main/scripts/wsl2-dev.sh)**_ to automate the installation of essential development tools on WSL2. Install **[Android Studio](https://developer.android.com/studio)** **before running** this script.

There is a Windows Terminal suggested _**[config](https://github.com/elieserme/workstation/raw/refs/heads/main/scripts/windows-terminal.json)**_ to better appearence. Install all **`fonts`** in this repo **before** using this config.

If you experience difference in date & time on Windows when dual boot with Linux, it's necessary make Windows work on GMT time using the following command:

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

Disable Hibernation support to preserve your SSD/NVMe drive:

```bash
powercfg.exe /hibernate off
```

With 64GB of RAM available, you can disable the Paging File:

- Press **Windows key + R** to open the Run dialog box.
- Type **`sysdm.cpl`** and click **OK** to open **System Properties**.
- Navigate to the **Advanced** tab and click on **Settings** under the **Performance** section.
- In the **Performance Options** window, go to the **Advanced** tab and click on **Change** under the **Virtual Memory** section.
- **Uncheck** the box for Automatically manage paging file size for all drives.
- Select the drive where the pagefile is located (usually C:).
- Choose the option **No paging file** and click **Set**.
- Click **OK** to close all windows and restart your computer when prompted.

If you want full security on your workstation remind to secure your Windows 11 installation:

- Activate **Bitlocker**
- Save the recovery key on **external media secured by yourself**
- **Delete the key from your Microsoft account** to avoid law enforcement and leaks to compromise it
- Activate **Bitlocker PIN** on startup extra step (see below)

The steps to activate the Bitlocker PIN below:

- Open up **`gpedit.msc`**. This brings up your group policy options.
  - Go to **_Computer Configuration_**; **_Administrative Templates_**; **_Windows Components_**; **_BitLocker Drive Encryption_**; **_Operating System Drives_**.
    - In the right pane - double-click **_Require additional authentication at startup_** and a box opens.
    - Ensure that the **_Enabled_** option is chosen so that all the other options are active.
    - Clear the box for **_Allow BitLocker without a compatible TPM_**.
    - For the choice of **_Configure TPM startup_**, choose **_Allow TPM_**.
    - For the choice of **_Configure TPM startup PIN_**, choose **_Require startup PIN with TPM_**.
    - For the choice of **_Configure TPM startup key_**, choose **_Allow startup key with TPM_**.
    - For the choice of **_Configure TPM startup key and PIN_**, choose **_Allow startup key and PIN with TPM_**.
    - Click the **_Apply_** button and then the OK button to save the changes in the Local Group Policy Editor.
  
- Stay under the **_BitLocker Drive Encryption > Operating System Drives_**.
  - In the right pane - double-click **_Enable use of BitLocker Authentication requiring preboot keyboard input on slates_**.
    - Ensure that the **_Enabled_** option is chosen to activate.
    - Click the **_Apply_** button and then the OK button to save the changes in the Local Group Policy Editor.

- **_Reboot_** the system.
- Launch an **_Admin Command Prompt_** (Elevated Command Prompt).
  - Enter the command: **`manage-bde -protectors -add c: -TPMAndPIN`**
  - You are prompted to enter the PIN. Enter a number between four and seven digits. The cursor will not register the keystrokes as you enter the number.
  - Press the Enter key to save the PIN, and you are prompted to enter the PIN again to confirm. Press the Enter key again to save the PIN confirmation - It runs through the commands showing it as saved.

- **_Reboot the system once more_**, and it prompts for a PIN with the Slate Keyboard.

## Omarchy Linux

Dual boot with DHH's [omarchy.org](https://omarchy.org/) linux based on Arch. Omarchy uses Limine bootloader and can be configured to boot with Limine with a Windows boot entry for smooth dual boot support.

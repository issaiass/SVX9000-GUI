# SVX9000-GUI

<details open>
<summary> <b>Brief Review</b></summary>

This project provides a comprehensive **LabVIEW-based GUI application** for controlling and monitoring SVX9000 electrical equipment. The SVX9000 is an advanced motor control and protection device used in industrial automation applications.

The application communicates with the SVX9000 device using the **Modbus protocol** (supporting both Ethernet and Serial connections), enabling real-time control of device parameters, frequency settings, and operational modes.

<p align="center">
<img src="doc/imgs/LabVIEW-Logo.jpg?raw=true" width="30%"/>
<img src="doc/imgs/eaton-svx9000.jpg?raw=true" width="50%"/>
</p>

**Key Features:**
- Real-time device communication via Modbus protocol
- Intuitive GUI for parameter control and monitoring
- Support for both Ethernet and Serial Modbus connections
- Comprehensive device operation management
- Frequency reading and analog/binary control
- Built on National Instruments NI Modbus Library v1.2.1

The application architecture is clean and modular, with clear separation between the user interface layer, core operations, and protocol handling. This design allows for easy maintenance and future enhancements while maintaining robust device communication.

</details>

<details open>
<summary> <b>Architecture Overview</b></summary>

The SVX9000-GUI application follows a three-tier architecture pattern:

```
SVX9000App.vi (Main UI - 124.6 KB)
    ├── SVX9000Basic.vi (Core Operations - 29.7 KB)
    │   └── SVX9000NIModbus.vi (Modbus Interface - 56.2 KB)
    │       ├── SVX9000MB.llb (Custom Modbus - 132.3 KB)
    │       └── SVX9000NIMB.llb (NI Modbus Wrapper - 166.6 KB)
    │           └── ni.lib/NI Modbus.llb (NI Library - 2.3 MB)
```

**Component Responsibilities:**

1. **SVX9000App.vi** - Main application entry point with the user interface
2. **SVX9000Basic.vi** - Core device operation functions and business logic
3. **SVX9000NIModbus.vi** - Protocol abstraction layer handling Modbus communication
4. **SVX9000MB.llb** - Custom Modbus implementation (MBInit, MBClose, MBRdFreq, MBWriteAna, MBWriteBin)
5. **SVX9000NIMB.llb** - NI Modbus wrapper providing profile-based interface

</details>

<details open>
<summary> <b>Getting Started</b></summary>

### Prerequisites

- **LabVIEW** (version 8.6 or compatible, tested up to LabVIEW 11.x)
- **NI Modbus Library 1.2.1** (included in this repository)
- Network access to SVX9000 device (default: 172.26.143.145)

### Installation Steps

1. **Install LabVIEW**
   - Ensure you have LabVIEW 8.6 or later installed on your system

2. **Install NI Modbus Library**
   - Copy `NI Modbus.llb` from `nimodbus121/` to `<LabVIEW>/vi.lib/`
   - Copy help files from `nimodbus121/help/` to `<LabVIEW>/help/`
   - Copy `nimodbus.mnu` from `nimodbus121/user.lib/` to `<LabVIEW>/user.lib/`

3. **Open the Project**
   - Open `SVX9000.lvproj` in LabVIEW IDE

### Building and Running

```
1. Launch LabVIEW
2. Open SVX9000.lvproj
3. Navigate to SVX9000App.vi in the project tree
4. Click "Run" (Ctrl+R) or use the Run button in the toolbar
5. LabVIEW will compile and execute the application directly
```

**Note:** LabVIEW compiles and executes VIs natively within the IDE. No external build tools or separate compilation steps are required.

### Device Configuration

The device IP address is configured in `SVX9000.aliases`:
- Default IP: `172.26.143.145`
- Protocol: Modbus (Ethernet or Serial)

To modify the device IP, edit the aliases file and update the connection settings.

</details>

<details open>
<summary> <b>Using The Application</b></summary>

### Main Features

**Device Monitoring:**
- Real-time frequency reading from SVX9000 device
- Live status updates and parameter monitoring

**Device Control:**
- Write analog values for device configuration
- Write binary values for operational modes
- Initialize and close device connections
- Modbus communication error handling

### Application Workflow

```
1. Launch SVX9000App.vi
2. Configure device IP/connection parameters
3. Initialize connection to SVX9000 device
4. Read current device parameters (frequency, status)
5. Adjust device settings as needed (analog/binary writes)
6. Monitor real-time device responses
7. Close connection when finished
```

### Communication Protocol

The application uses **Modbus protocol** for all device communication:
- **Supported Modes:** Ethernet (TCP/IP) and Serial (RTU/ASCII)
- **Data Types:** Coils, Discrete Inputs, Holding Registers, Input Registers
- **Error Handling:** Comprehensive Modbus error detection and reporting

### Key VIs and Their Functions

| VI Name | Purpose |
|---------|---------|
| `MBInit.vi` | Initialize Modbus connection |
| `MBClose.vi` | Close Modbus connection |
| `MBRdFreq.vi` | Read frequency from device |
| `MBWriteAna.vi` | Write analog values |
| `MBWriteBin.vi` | Write binary values |

</details>

<details open>
<summary> <b>Results</b></summary>

Watch the application in action and see how the SVX9000-GUI communicates with the device in real-time:

**Main Demonstration:**

[![SVX9000 GUI Demo](https://img.youtube.com/vi/HQdhZ67zvoA/0.jpg)](https://www.youtube.com/watch?v=HQdhZ67zvoA)

**Complete Playlist (Additional Examples & Advanced Usage):**
- [SVX9000-GUI Playlist](https://www.youtube.com/watch?v=29V1eXNERds&list=PLIROuFK1qQrzX9s8M1PuZ_RP_MX5FfkZp)

These videos demonstrate:
- Real-time device communication
- Parameter adjustment and monitoring
- Error handling and recovery
- Complete device control workflow

</details>

<details open>
<summary> <b>Best Practices</b></summary>

**Development in LabVIEW:**
- Always save your work before running VIs to ensure changes are persisted
- Use the LabVIEW debugger to troubleshoot VI execution and data flow
- Test VI logic with mock data before connecting to actual hardware

**Device Communication:**
- Always initialize the Modbus connection before sending commands
- Implement proper error checking for all Modbus read/write operations
- Close connections gracefully using MBClose.vi to release resources
- Test communication with the device at a known, stable IP address
- Log all device communications for troubleshooting purposes

**Modbus Protocol:**
- Verify device Modbus register mappings before reading/writing
- Use appropriate Modbus function codes for your operation
- Respect device communication timing requirements
- Handle timeout and connection errors gracefully

</details>

<details open>
<summary> <b>Project Structure</b></summary>

```
SVX9000-GUI/
├── LabVIEW SVX9000/
│   ├── SVX9000App.vi              (Main application)
│   ├── SVX9000Basic.vi            (Core operations)
│   ├── SVX9000NIModbus.vi         (Modbus interface)
│   ├── SVX9000MB.llb              (Custom Modbus library)
│   ├── SVX9000NIMB.llb            (NI Modbus wrapper)
│   ├── SVX9000.lvproj             (Project file)
│   ├── SVX9000.lvlps              (Project layout)
│   └── SVX9000.aliases            (Device aliases)
├── nimodbus121/                    (NI Modbus Library distribution)
│   ├── help/                       (API documentation)
│   ├── user.lib/                   (LabVIEW palette configuration)
│   └── vi.lib/                     (Library VIs)
├── doc/
│   └── imgs/                       (Project images)
├── CLAUDE.md                       (Claude Code guidance)
└── README.md                       (This file)
```

</details>

<details open>
<summary> <b>Important Notes</b></summary>

- **Binary Format:** VIs (.vi) and LLB files (.llb) are LabVIEW binary files, making traditional diff/merge challenging in version control
- **Legacy Technology:** The project targets LabVIEW 8.x-11.x; consider modernization if targeting newer LabVIEW versions (2020+)
- **Hardware Coupling:** Application is tightly integrated with SVX9000 device specifications and Modbus protocol
- **No Unit Testing:** Traditional unit testing frameworks don't apply to LabVIEW GUI applications; use manual testing and simulation
- **IP Configuration:** Device IP is hardcoded in aliases; modify as needed for your environment

</details>

<details open>
<summary> <b>Issues</b></summary>

Currently, no known issues are documented. If you encounter any problems:

1. Verify LabVIEW and NI Modbus Library versions
2. Check network connectivity to the SVX9000 device
3. Review device Modbus configuration and register mappings
4. Consult the NI Modbus documentation in `nimodbus121/help/lvmodbus.chm`

</details>

<details open>
<summary> <b>Future Work</b></summary>

Potential enhancements and expansions:

- Migrate to modern LabVIEW versions (2020+) with improved features
- Add data logging and historical analysis capabilities
- Implement real-time graphing and visualization of device parameters
- Expand support for additional Modbus devices beyond SVX9000
- Create a web-based monitoring interface
- Add automated testing and simulation capabilities
- Implement multi-device concurrent control

</details>

<details open>
<summary> <b>Contributing</b></summary>

Your contributions are always welcome! Please feel free to fork and modify the content. When you have improvements or bug fixes:

1. Create a feature branch
2. Make your changes
3. Test thoroughly with the SVX9000 device
4. Submit a pull request with a clear description of your changes

We appreciate any contributions that improve the application's functionality, documentation, or compatibility.

</details>

<details open>
<summary> :iphone: <b>Having Problems?</b></summary>

<p align="center">

[<img src="https://img.shields.io/badge/github-%23121011.svg?&style=for-the-badge&logo=github&logoColor=white" />](https://github.com/issaiass/SVX9000-GUI)
[<img src="https://img.shields.io/badge/linkedin-%230077B5.svg?&style=for-the-badge&logo=linkedin&logoColor=white" />](https://www.linkedin.com/in/riawa)
[<img src="https://img.shields.io/badge/telegram-2CA5E0?style=for-the-badge&logo=telegram&logoColor=white"/>](https://t.me/issaiass)
[<img src="https://img.shields.io/badge/instagram-%23E4405F.svg?&style=for-the-badge&logo=instagram&logoColor=white">](https://www.instagram.com/daqsyspty/)
[<img src="https://img.shields.io/badge/twitter-%231DA1F2.svg?&style=for-the-badge&logo=twitter&logoColor=white" />](https://twitter.com/daqsyspty)
[<img src="https://img.shields.io/badge/facebook-%233b5998.svg?&style=for-the-badge&logo=facebook&logoColor=white" />](https://www.facebook.com/daqsyspty)
[<img src="https://img.shields.io/badge/whatsapp-%23075e54.svg?&style=for-the-badge&logo=whatsapp&logoColor=white" />](https://wa.me/50766168542?text=Hello%20Rangel)
[<img src="https://img.shields.io/badge/gmail-%23D14836.svg?&style=for-the-badge&logo=gmail&logoColor=white" />](mailto:issaiass@hotmail.com)

</p>

</details>

<details open>
<summary> <b>License</b></summary>

<p align="center">
<img src="https://mirrors.creativecommons.org/presskit/buttons/88x31/svg/by-sa.svg" />
</p>

This project is licensed under the Creative Commons Attribution-ShareAlike License. See LICENSE file for details.

</details>

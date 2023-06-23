# Specification verification for 3.10 Mount Control System

## 3.10.1 Local Operation

This is done with the Handle Held Device (HHD).

### 3.10.1.1 Local Operation Performance Limits

This can be configured using settings, accessible by restricted user level in the EUI.

## 3.10.2 Remote Operation

The Mount Control Computer (MCC) is accessible via SSH + VNC.

## 3.10.3 Operation Modes

### 3.10.3.1 Observing Mode

The telescope can be commanded by the CSC, and has been extensively tested.

### 3.10.3.2 Engineering Mode

This is done with the EUI or HHD.

## 3.10.4 Readiness

TODO: needs to be tested

## 3.10.5 (Descoped) Connection to the TCS

Impacted by LCR(s): descoped per CR-0210

## 3.10.6 Mount Control System

This is the MCC installed inside the Rubin server room in level 2.

## 3.10.7 MCS System Interfaces

The required physical interfaces are available in all the devices, after the IP change, which reduced the VLANs, there
are some redundant connections available.

## 3.10.7.1TCP/IP Port Interfaces

### 3.10.7.1.1 TCP/IP Port for Commands and Events

The telescope can be commanded by the CSC, and has been extensively tested.

### 3.10.7.1.2 TCP/IP Port for Telemetry

The telescope has an independent port for telemetry to serve the CSC, and has been extensively tested.

### 3.10.7.1.3 Communication with SAL

The MCS has no longer interaction with the SAL interface.

## 3.10.8 Control Commands

The telescope can be commanded by the CSC as if it was the EUI, the same commands are available for both systems.

### 3.10.8.1 Initial Command Acknowledgement

The initial responses have been extensively tested during the long tracking sessions.

### 3.10.8.2 Final Command State

A final state is sent for every accepted command, this has been extensively tested.

## 3.10.9 Telemetry

### 3.10.9.1 Telemetry Topics

There is a configuration file shared by the CSC and the MCS, where the telemetry topics are defined.

### 3.10.9.1.1 Telemetry Timing

The forementioned topic configuration file includes a field for defining the update frequency of the topic.

## 3.10.10 Events

The MCS outputs every state change as events, according to the requests from Rubin.

### 3.10.10.1 Discrete State Reporting

The MCS outputs every state change as events, according to the requests from Rubin.

#### 3.10.10.1.1 Report Named States as Integers

There are defined enums for reporting the different states of the system.

#### 3.10.10.1.2 Obtain Full State

There is a command available in the MCS for requesting the current state of all the system, this command is accepted even
when the one who requests is not the commander.

## 3.10.11 Time

There is no PTP server available at the summit, currently NTP is used.

## 3.10.12 MCS Mount Positioning Command

The telescope can be commanded by the CSC, and has been extensively tested.

## 3.10.13 MCS Camera Cable Wrap Positioning Command

The camera rotator can be commanded by the CSC, and operated as a slave of the camera rotator.

## 3.10.14 MCS Positioning Update Frequency

The EUI stores high frequency telemetry, which can be accessed during two days, after that it is deleted.

## 3.10.15 MCS Positioning Tolerances

The in position event can be configured using the settings.

## 3.10.16 MCS Motion Profile

This has been tested using the EUI.

## 3.10.17 MCS Fixed Rate of Motion Software Limits

The limits for the trajectory generation can be updated by the settings. Additionally, there is a supervisor for the
speed to go to fault when the defined speed is overcomed.

## 3.10.18 MCS Adjustable Rate of Motion Software Limits

The limits can be updated by the settings.

## 3.10.19 MCS Fixed Software Range of Travel Limits

The limits can be enabled/disabled by the settings.

## 3.10.20 MCS Adjustable Range of Travel Limits

The limits can be enabled/disabled by the settings.

## 3.10.21 Motion Near a Range of Travel Software Limit

The limits are trigger when overcomed, so the stopping distance will depend on the acceleration settings.

## 3.10.22 Telemetry Buffer

The telemetry is publish synchronously over TCP to the CSC and stored locally for 2 days.

## 3.10.23 Engineering User Interface

There is a EUI available, and has been extensively tested.

### 3.10.23.1 Software Implementation

LabVIEW 2020-64bit is used for coding the EUI and runs in CentOS 7.

### 3.10.23.2 Mount System Status

The EUI provides access to all the subsystems controlled by the MCS, see manual.

### 3.10.23.3 Information Display

The EUI provides real time data for all the moving parts, as well as access to old data stored locally.

### 3.10.23.4 Telemetry Logging

High frequency telemetry is stored locally for 2 days.

### 3.10.23.5 Engineering and Maintenance Positioning

The EUI allows any kind of commands, but sometimes this implies explicit allowance by changing certain setting values.

### 3.10.23.6 Software Limits Change

This can be done using the settings pages available in the EUI.

### 3.10.23.7 Power Up/Reboot

For rebooting different tools are available, but a whole reboot from the EUI is not possible, there are procedures for
rebooting the system properly to reduce shutdown times.

Additionally, There are both luminous and audible indication when the system is enabled.

## 3.10.24 Natural Frequency Avoidance

This was addressed during the axes tunning.

## 3.10.25 Hydrostatic Bearings

The OSS can be commanded by the CSC/EUI/HHD and the corresponding telemetry is stored and published to the CSC.

## 3.10.26 M1M3 Mirror Cover

The M1M3 Mirror Cover can be commanded by the CSC/EUI/HHD and the corresponding telemetry is stored and published to the CSC.

## 3.10.27 Control and Monitoring of Thermal Control Systems

The Thermal systems can be commanded by the CSC/EUI/HHD and the corresponding telemetry is stored and published to the CSC.

## 3.10.28 Status Information

All motion related telemetry is stored and published to the CSC.

## 3.10.29 Software Manuals and Documentation

A specific web has made available for collecting all the relevant documentation and is constantly updated with the latest
changes.

## 3.10.30 Best Software Practices

The coding has been conducting according to the best software practices.

## 3.10.31 Software EOL

The LabVIEW version was updated and the softmotion module was replaced with a custom module to avoid EOL incompatibilities.

## 3.10.32 Remove Obsolete Software

The obsolete software has been deleted during the updates and bug fixes.

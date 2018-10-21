DefinitionBlock ("", "SSDT", 2, "hack", "usb", 0x00000000)
{
    Device (UIAC)
    {
        Name (_HID, "UIA00000")  // _HID: Hardware ID
        Name (RMCF, Package (0x02)
        {
            "AppleBusPowerController", 
            Package (0x08)
            {
                "kUSBSleepPortCurrentLimit", 
                0x0834, 
                "kUSBSleepPowerSupply", 
                0x0BB8, 
                "kUSBWakePortCurrentLimit", 
                0x0834, 
                "kUSBWakePowerSupply", 
                0x0E74
            }
        })
    }
}


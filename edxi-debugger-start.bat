@echo %EXDI_GDBSRV_XML_CONFIG_FILE%
@echo %EXDI_SYSTEM_REGISTERS_MAP_XML_FILE%
@windbg.exe -v -kx exdi:CLSID={29f9906e-9dbe-4d4b-b0fb-6acf7fb6d014},Kd=NTBaseAddr,DataBreaks=Exdi
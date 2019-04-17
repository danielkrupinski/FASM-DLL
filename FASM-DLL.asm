format PE GUI 4.0 DLL
entry DllEntryPoint

include 'INCLUDE/win32ax.inc'

section '.text' code executable

proc DllEntryPoint hinstDLL, reason, reserved
    invoke MessageBox, NULL, <'Hello from FASM dll!', 0>, <'Hello world!'>, MB_ICONINFORMATION + MB_OK
    mov	eax,TRUE
    ret
endp

section '.idata' import readable

  library user,'USER32.DLL'
  import user, MessageBox,'MessageBoxA'

section '.reloc' fixups data readable discardable
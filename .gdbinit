# PwnDBG
define init-pwndbg
source /source/pwndbg/gdbinit.py
end
document init-pwndbg
Initializes PwnDBG
end

# PEDA
define init-peda
source /source/peda/peda.py
end
document init-peda
Initializes the PEDA (Python Exploit Development Assistant for GDB) framework
end

# GEF
define init-gef
source /source/gef/gef.py
end
document init-gef
Initializes GEF (GDB Enhanced Features)
end

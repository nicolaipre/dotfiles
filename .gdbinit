# PwnDBG
define init-pwndbg
source ~/.gdb-plugins/pwndbg/gdbinit.py
end
document init-pwndbg
Initializes PwnDBG
end

# PEDA
define init-peda
source ~/.gdb-plugins/peda/peda.py
end
document init-peda
Initializes the PEDA (Python Exploit Development Assistant for GDB) framework
end

# GEF
define init-gef
source ~/.gdb-plugins/gef/gef.py
end
document init-gef
Initializes GEF (GDB Enhanced Features)
end

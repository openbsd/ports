all:
	./build bsf
install:
	install -c -o ${LIBOWN} -g ${LIBGRP} -m ${LIBMODE} bin/libpico.so.1.3 ${PREFIX}/lib/libpico.so.1.3
	/sbin/ldconfig -m ${PREFIX}/lib
	install -c -s -o ${BINOWN} -g ${BINGRP} -m ${BINMODE} bin/pico ${PREFIX}/bin/pico
	install -c -s -o ${BINOWN} -g ${BINGRP} -m ${BINMODE} bin/pilot ${PREFIX}/bin/pilot
	install -c -s -o ${BINOWN} -g ${BINGRP} -m ${BINMODE} bin/pine ${PREFIX}/bin/pine
	install -c -o ${MANOWN} -g ${MANGRP} -m ${MANMODE} doc/pico.1 ${PREFIX}/man/man1/pico.1
	install -c -o ${MANOWN} -g ${MANGRP} -m ${MANMODE} doc/pilot.1 ${PREFIX}/man/man1/pilot.1
	install -c -o ${MANOWN} -g ${MANGRP} -m ${MANMODE} doc/pine.1 ${PREFIX}/man/man1/pine.1

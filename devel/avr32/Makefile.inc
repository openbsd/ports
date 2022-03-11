CATEGORIES =		devel
HOMEPAGE =		http://www.atmel.com/tools/ATMELAVRTOOLCHAINFORLINUX.aspx
CONFIGURE_STYLE ?=	gnu
CONFIGURE_ARGS +=	--target=avr32 \
			--program-prefix=avr32- \
			--disable-shared \
			--disable-nls \
        		--with-bugurl="http://www.atmel.com/avr"
MASTER_SITES ?=		http://distribute.atmel.no/tools/opensource/Atmel-AVR-Toolchain-3.4.2/avr32/
LIBTOOL_FLAGS = 	--tag=disable-shared
USE_GMAKE = 		Yes

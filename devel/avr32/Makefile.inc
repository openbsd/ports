CATEGORIES =		devel
CONFIGURE_STYLE ?=	gnu
CONFIGURE_ARGS +=	--target=avr32 \
			--program-prefix=avr32- \
			--disable-shared \
			--disable-nls \
        		--with-bugurl="http://www.atmel.com/avr"
SITES ?=		https://distfiles.sigtrap.nl/avr32/
LIBTOOL_FLAGS = 	--tag=disable-shared
USE_GMAKE = 		Yes

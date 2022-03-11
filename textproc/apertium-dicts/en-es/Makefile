L =	en-es
LANG =	English/Spanish
V =	0.8.0
REVISION =	1

BROKEN =	0.8.0 incompatible with apertium>=3.7.2

MASTER_SITES =	https://apertium.org/releases/apertium-$L/$V/

USE_GMAKE =	Yes

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>

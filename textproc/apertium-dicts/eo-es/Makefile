L =	eo-es
LANG =	Esperanto/Spanish
V =	1.0.0
REVISION =	1

BROKEN =	1.0.0 incompatible with apertium>=3.7.2

MASTER_SITES =	https://apertium.org/releases/apertium-$L/1.0/

CONFIGURE_ENV =		APERTIUM_CFLAGS="`pkg-config --cflags apertium`" \
			APERTIUM_LIBS="`pkg-config --libs apertium`"

.include <bsd.port.mk>

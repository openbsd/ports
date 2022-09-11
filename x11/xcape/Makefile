COMMENT =	configure a modifier key when pressed and released by itself

GH_ACCOUNT =	alols
GH_PROJECT =	xcape
GH_TAGNAME =	v1.2
REVISION =	0

CATEGORIES =	x11

# GPLv3+
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB +=	X11 Xtst c pthread

MAKE_FLAGS =	PREFIX=${PREFIX} \
		MANDIR="/man/man1"

NO_TEST =	Yes

.include <bsd.port.mk>

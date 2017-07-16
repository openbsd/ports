# $OpenBSD: Makefile,v 1.1.1.1 2017/07/16 16:23:40 edd Exp $

COMMENT =	configure a modifier key when pressed and released by itself

GH_ACCOUNT =	alols
GH_PROJECT =	xcape
GH_TAGNAME =	v1.2

CATEGORIES =	x11

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	X11 Xtst c pthread

MAKE_FLAGS =	PREFIX=${PREFIX} \
		MANDIR="/man/man1"

NO_TEST =	Yes

.include <bsd.port.mk>

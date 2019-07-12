# $OpenBSD: Makefile,v 1.2 2019/07/12 20:51:25 sthen Exp $

COMMENT =	configure a modifier key when pressed and released by itself

GH_ACCOUNT =	alols
GH_PROJECT =	xcape
GH_TAGNAME =	v1.2

CATEGORIES =	x11

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB +=	X11 Xtst c pthread

MAKE_FLAGS =	PREFIX=${PREFIX} \
		MANDIR="/man/man1"

NO_TEST =	Yes

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.1.1.1 2017/04/15 12:53:02 jasper Exp $

COMMENT =		improved screen locker

GH_ACCOUNT =		i3
GH_PROJECT =		i3lock
# XXX: Remove when upgrading
GH_COMMIT =		80d4452ec680bcb0e57418f69d44d88ded82047c
DISTNAME =		i3lock-2.9

CATEGORIES =		x11

HOMEPAGE =		https://i3wm.org/i3lock/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c cairo ev m xcb xcb-composite xcb-dpms xcb-image xcb-shm
WANTLIB += xcb-util xcb-xinerama xcb-xkb xkbcommon xkbcommon-x11

LIB_DEPENDS =		devel/libev \
			graphics/cairo \
			x11/xkbcommon

USE_GMAKE =		Yes

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/i3lock ${PREFIX}/bin/i3lock
	${INSTALL_MAN} ${WRKSRC}/i3lock.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.2 2017/05/27 05:09:04 espie Exp $

COMMENT =	featherweight lemon-scented bar

VERSION =	1.2

PKGNAME =	lemonbar-${VERSION}

GH_ACCOUNT =	LemonBoy
GH_PROJECT =	bar
GH_TAGNAME =	v${VERSION}

CATEGORIES =	x11

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c xcb xcb-randr xcb-xinerama

WANT_CXX =		base gcc
MODGCC4_LANGS =		c

MAKE_ENV =		LDFLAGS="-L${X11BASE}/lib"

USE_GMAKE =		Yes

NO_TEST =		Yes

CFLAGS +=		-I${X11BASE}/include

ALL_TARGET =		all doc

pre-configure:
	sed -i '/^CFLAGS/s/-Os //' ${WRKSRC}/Makefile

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lemonbar/
	${INSTALL_PROGRAM} ${WRKSRC}/lemonbar ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/lemonbar.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/lemonbar/

.include <bsd.port.mk>

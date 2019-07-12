# $OpenBSD: Makefile,v 1.6 2019/07/12 20:51:15 sthen Exp $

COMMENT =	featherweight lemon-scented bar

VERSION =	1.3

PKGNAME =	lemonbar-${VERSION}

GH_ACCOUNT =	LemonBoy
GH_PROJECT =	bar
GH_TAGNAME =	v${VERSION}

CATEGORIES =	x11

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c xcb xcb-randr xcb-xinerama

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

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

COMMENT =	featherweight lemon-scented bar with XFT support

VERSION =	1.1.20180416

DISTNAME =	lemonbar-xft-${VERSION}

GH_ACCOUNT =	krypt-n
GH_PROJECT =	bar
GH_COMMIT =	00a3fe6f3485203896156480e86014136749a221

CATEGORIES =	x11

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# MIT
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += X11 X11-xcb Xft c fontconfig freetype xcb xcb-randr
WANTLIB += xcb-xinerama z

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MAKE_ENV =		LDFLAGS="-L${X11BASE}/lib ${LDFLAGS}"

USE_GMAKE =		Yes

NO_TEST =		Yes

CFLAGS +=		-I${X11BASE}/include

ALL_TARGET =		all doc

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lemonbar-xft/
	${INSTALL_PROGRAM} ${WRKSRC}/lemonbar ${PREFIX}/bin/lemonbar-xft
	${INSTALL_MAN} ${WRKSRC}/lemonbar.1 ${PREFIX}/man/man1/lemonbar-xft.1
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/lemonbar-xft/

.include <bsd.port.mk>

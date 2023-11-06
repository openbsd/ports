COMMENT =	execute program on xrandr output changes

DIST_TUPLE =	github jceb srandrd v0.6.3 .
REVISION =	0

CATEGORIES =	x11

MAINTAINER =	Stefan Hagen <sh+ports@codevoid.de>

# MIT/X Consortium License
PERMIT_PACKAGE =	Yes

WANTLIB = X11 Xinerama Xrandr c

do-install:
	${INSTALL} ${WRKSRC}/srandrd ${PREFIX}/bin/srandrd
	${INSTALL_DATA} ${WRKSRC}/srandrd.1 ${PREFIX}/man/man1/srandrd.1

.include <bsd.port.mk>

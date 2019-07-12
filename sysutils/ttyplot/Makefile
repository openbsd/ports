# $OpenBSD: Makefile,v 1.5 2019/07/12 20:49:53 sthen Exp $

COMMENT =	realtime plotting utility for terminals

GH_ACCOUNT =	tenox7
GH_PROJECT =	ttyplot
GH_TAGNAME =	1.4

CATEGORIES =	sysutils

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=	c curses

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS}"

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ttyplot ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ttyplot
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/ttyplot

.include <bsd.port.mk>

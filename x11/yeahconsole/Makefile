# $OpenBSD: Makefile,v 1.3 2019/07/12 21:02:30 sthen Exp $

COMMENT =	terminal wrapper for creating drop-down consoles

DISTNAME =	yeahconsole-0.3.4
REVISION =	0
CATEGORIES =	x11

HOMEPAGE =	http://phrat.de/yeahtools.html
MAINTAINER =	Kent R. Spillner <kspillner@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c X11

MASTER_SITES =	http://phrat.de/
NO_TEST =	Yes
ALL_TARGET =	yeahconsole

MAKE_FLAGS +=	CC="${CC}" FLAGS="${CFLAGS}" \
		INCLUDES="-I${X11BASE}/include" \
		LIB_DIRS="-L${X11BASE}/lib"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/yeahconsole ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/yeahconsole
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/yeahconsole/

.include <bsd.port.mk>

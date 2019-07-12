# $OpenBSD: Makefile,v 1.6 2019/07/12 21:02:30 sthen Exp $

COMMENT=	animated autohiding applications launcher

DISTNAME=	yeahlaunch-0.2
REVISION=	1
CATEGORIES=	x11

HOMEPAGE=	http://phrat.de/yeahtools.html

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	X11 c

MASTER_SITES=	http://phrat.de/

NO_TEST=	Yes

do-build:
	${CC} ${CFLAGS} -I${X11BASE}/include -c -o \
		${WRKBUILD}/yeahlaunch.o ${WRKSRC}/yeahlaunch.c
	${CC} -L${X11BASE}/lib -lX11 -o \
		${WRKBUILD}/yeahlaunch ${WRKBUILD}/yeahlaunch.o

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/yeahlaunch ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/yeahlaunch
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/yeahlaunch/

.include <bsd.port.mk>

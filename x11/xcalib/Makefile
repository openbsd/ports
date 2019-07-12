# $OpenBSD: Makefile,v 1.6 2019/07/12 20:51:25 sthen Exp $

COMMENT =		tiny monitor calibration loader for XFree86 or X.org

V =			0.8
DISTNAME =		xcalib-source-${V}
PKGNAME =		xcalib-${V}
REVISION =		0

CATEGORIES =		x11

HOMEPAGE =		http://www.etg.e-technik.uni-erlangen.de/web/doe/xcalib/

# License: GPLv2 or later
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=xcalib/}

WANTLIB =		X11 Xext Xxf86vm m c
WRKDIST =		${WRKDIR}/xcalib-${V}
NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xcalib ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xcalib
	${INSTALL_DATA} ${WRKSRC}/*.icc ${PREFIX}/share/examples/xcalib/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/examples/xcalib/

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.4 2013/03/11 11:46:17 espie Exp $

COMMENT =		tiny monitor calibration loader for XFree86 or X.org

V =			0.8
DISTNAME =		xcalib-source-${V}
PKGNAME =		xcalib-${V}

CATEGORIES =		x11

HOMEPAGE =		http://www.etg.e-technik.uni-erlangen.de/web/doe/xcalib/
MAINTAINER =		Mitja Muzenic <mitja@kerberos.si>

# License: GPLv2 or later
PERMIT_PACKAGE_CDROM =	Yes

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

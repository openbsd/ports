# $OpenBSD: Makefile,v 1.9 2021/07/12 20:53:08 pascal Exp $

COMMENT =		data files for flightgear

DISTNAME =		FlightGear-${V}-data
PKGNAME =		flightgear-data-${V}

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=flightgear/}

BUILD_DEPENDS = archivers/xz
EXTRACT_SUFX =	.txz
EXTRACT_ONLY =

NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =		*

do-install:
	xz -cd ${FULLDISTDIR}/${DISTFILES} | tar -xf - \
	    -C ${PREFIX}/share -s ',^fgdata,flightgear,'
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/flightgear

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.8 2016/09/02 10:07:53 pascal Exp $

COMMENT =		data files for flightgear

DISTNAME =		FlightGear-${V}-data
PKGNAME =		flightgear-data-${V}

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=flightgear/}

BUILD_DEPENDS =	archivers/bzip2
EXTRACT_SUFX =	.tar.bz2
EXTRACT_ONLY =

NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =		*

do-install:
	tar -xjf ${FULLDISTDIR}/${DISTFILES} \
	    -C ${PREFIX}/share -s ',^fgdata,flightgear,'
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/flightgear

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.6 2014/03/13 10:31:52 pascal Exp $

COMMENT =		data files for flightgear

DISTNAME =		FlightGear-data-${V}
PKGNAME =		flightgear-data-${V}

MASTER_SITES =	http://ftp.igh.cnrs.fr/pub/flightgear/ftp/Shared/ \
		http://ftp.linux.kiev.ua/pub/fgfs/Shared/ \
		ftp://ftp.kingmont.com/flightsims/flightgear/Shared/

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

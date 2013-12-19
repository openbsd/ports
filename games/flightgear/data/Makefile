# $OpenBSD: Makefile,v 1.4 2013/12/19 13:08:42 naddy Exp $

COMMENT =		data files for flightgear

DISTNAME =		FlightGear-data-${V}
PKGNAME =		flightgear-data-${V}
REVISION =		0

MASTER_SITES =	http://ftp.igh.cnrs.fr/pub/flightgear/ftp/Shared/ \
		http://ftp.linux.kiev.ua/pub/fgfs/Shared/ \
		ftp://ftp.kingmont.com/flightsims/flightgear/Shared/

EXTRACT_SUFX =	.tar.bz
EXTRACT_ONLY =

BUILD_DEPENDS =		archivers/bzip2

NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =		*

do-install:
	tar -xjf ${FULLDISTDIR}/${DISTFILES} \
	    -C ${PREFIX}/share -s ',^fgdata,flightgear,'
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/flightgear

.include <bsd.port.mk>

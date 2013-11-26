# $OpenBSD: Makefile,v 1.3 2013/11/26 15:52:40 pascal Exp $

COMMENT =		data files for flightgear

DISTNAME =		FlightGear-data-${V}
PKGNAME =		flightgear-data-${V}
REVISION =		0

MASTER_SITES =	http://ftp.igh.cnrs.fr/pub/flightgear/ftp/Shared/ \
		http://ftp.linux.kiev.ua/pub/fgfs/Shared/ \
		ftp://ftp.kingmont.com/flightsims/flightgear/Shared/

EXTRACT_SUFX =	.tar.bz
EXTRACT_CASES += *.tar.bz) ${BZIP2} -dc ${FULLDISTDIR}/$$archive | ${TAR} xf -;;

BUILD_DEPENDS =		archivers/bzip2

NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =		*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/flightgear
	cd ${WRKDIR}/fgdata && pax -rw . ${PREFIX}/share/flightgear

.include <bsd.port.mk>

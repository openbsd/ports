#	$OpenBSD: Makefile,v 1.10 2014/04/17 06:58:47 bentley Exp $
PKG_ARCH =		*

COMMENT =		marathon infinity data files
V =			20140104
DISTNAME =		marathoninfinity-0.0.${V}
PKGNAME =		marathoninfinity-0.0.${V}
HOMEPAGE =		http://source.bungie.org/get/

DISTFILES =		MarathonInfinity-${V}-Data.zip:5
DISTFILES +=		Trilogy_Manual.pdf:4

# http://trilogyrelease.bungie.org/faq.html
PERMIT_PACKAGE_CDROM =	not for sale
PERMIT_PACKAGE_FTP =	YES

EXTRACT_ONLY =		MarathonInfinity-${V}-Data.zip
INSTALL_LOC =		${PREFIX}/share/alephone
INSTALL_MI =		${INSTALL_LOC}/Infinity

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_MI}
	# Marathon Infinity
	@cd ${WRKDIR}/"Marathon Infinity"/ && pax -rw . ${INSTALL_MI}
	${INSTALL_SCRIPT} ${FILESDIR}/marathoninfinity.sh ${PREFIX}/bin/marathoninfinity
	${INSTALL_DATA} ${FULLDISTDIR}/Trilogy_Manual.pdf ${INSTALL_MI}

NO_BUILD =	Yes
NO_TEST =	Yes

.include <bsd.port.mk>

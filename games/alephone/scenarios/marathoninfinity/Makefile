#	$OpenBSD: Makefile,v 1.8 2012/07/13 16:55:22 phessler Exp $
PKG_ARCH =		*

COMMENT =		marathon infinity data files
V =			20120514
DISTNAME =		marathoninfinity-0.0.${V}
PKGNAME =		marathoninfinity-0.0.${V}
HOMEPAGE =		http://source.bungie.org/get/

DISTFILES =		MarathonInfinity-${V}-Data.zip:5
DISTFILES +=		Trilogy_Manual.pdf:4

# http://trilogyrelease.bungie.org/faq.html
PERMIT_PACKAGE_CDROM =	not for sale
PERMIT_PACKAGE_FTP =	YES
PERMIT_DISTFILES_CDROM = not for sale
PERMIT_DISTFILES_FTP =	YES

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
NO_REGRESS =	Yes

.include <bsd.port.mk>

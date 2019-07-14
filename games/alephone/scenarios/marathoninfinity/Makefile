#	$OpenBSD: Makefile,v 1.12 2019/07/14 00:39:36 naddy Exp $
PKG_ARCH =		*

COMMENT =		marathon infinity data files
V =			20150620
DISTNAME =		marathoninfinity-0.0.${V}
PKGNAME =		marathoninfinity-0.0.${V}
HOMEPAGE =		https://alephone.lhowon.org/games/infinity.html

DISTFILES =		MarathonInfinity-${V}-Data.zip:6
DISTFILES +=		Trilogy_Manual.pdf:4

# http://trilogyrelease.bungie.org/faq.html
PERMIT_PACKAGE =	YES

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

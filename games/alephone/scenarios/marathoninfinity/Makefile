PKG_ARCH =		*

COMMENT =		marathon infinity data files
V =			20200904
DISTNAME =		marathoninfinity-0.0.${V}
PKGNAME =		marathoninfinity-0.0.${V}
HOMEPAGE =		https://alephone.lhowon.org/games/infinity.html

DISTFILES =
DISTFILES.g =		MarathonInfinity-${V}-Data.zip
DISTFILES.e =		Trilogy_Manual.pdf

# http://trilogyrelease.bungie.org/faq.html
PERMIT_PACKAGE =	YES

EXTRACT_ONLY =		${DISTFILES.g}
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

PKG_ARCH =	*

COMMENT =	marathon one data files
V =		20200904
DISTNAME =	marathon-0.0.${V}
HOMEPAGE =	https://alephone.lhowon.org/games/marathon.html

DISTFILES =
DISTFILES.g =	Marathon-${V}-Data.zip
DISTFILES.e =	Marathon_Manual.pdf

# http://trilogyrelease.bungie.org/faq.html
PERMIT_PACKAGE =	YES

EXTRACT_ONLY =	${DISTFILES.g}
INSTALL_LOC =	${PREFIX}/share/alephone
INSTALL_M =	${INSTALL_LOC}/Marathon


do-install:
	${INSTALL_DATA_DIR} ${INSTALL_M}
	# Marathon 1
	@cd ${WRKDIR}/Marathon && pax -rw . ${INSTALL_M}
	${INSTALL_SCRIPT} ${FILESDIR}/marathon.sh ${PREFIX}/bin/marathon
	${INSTALL_DATA} ${FULLDISTDIR}/Marathon_Manual.pdf ${INSTALL_M}

NO_BUILD =	Yes
NO_TEST =	Yes

.include <bsd.port.mk>

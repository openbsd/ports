PKG_ARCH=		*

COMMENT=		marathon two data files
V =			20200904
DISTNAME=		marathon2-0.0.${V}
PKGNAME=		marathon2-0.0.${V}
HOMEPAGE=		https://alephone.lhowon.org/games/marathon2.html

DISTFILES=
DISTFILES.g=		Marathon2-${V}-Data.zip
DISTFILES.e =		Marathon_2_Manual.pdf

# http://trilogyrelease.bungie.org/faq.html
PERMIT_PACKAGE=	YES

EXTRACT_ONLY =		${DISTFILES.g}
INSTALL_LOC=		${PREFIX}/share/alephone
INSTALL_M2=		${INSTALL_LOC}/Marathon2


do-install:
	@${INSTALL_DATA_DIR} ${INSTALL_M2}
	# Marathon 2
	@cd ${WRKDIR}/"Marathon 2"/ && pax -rw . "${INSTALL_M2}"
	${INSTALL_SCRIPT} ${FILESDIR}/marathon2.sh ${PREFIX}/bin/marathon2
	${INSTALL_DATA} ${FULLDISTDIR}/Marathon_2_Manual.pdf ${INSTALL_M2}

NO_BUILD=		Yes
NO_TEST=		Yes

.include <bsd.port.mk>

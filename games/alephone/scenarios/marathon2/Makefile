#	$OpenBSD: Makefile,v 1.12 2019/07/14 00:39:36 naddy Exp $
PKG_ARCH=		*

COMMENT=		marathon two data files
V =			20150620
DISTNAME=		marathon2-0.0.${V}
PKGNAME=		marathon2-0.0.${V}
HOMEPAGE=		https://alephone.lhowon.org/games/marathon2.html

DISTFILES=		Marathon2-${V}-Data.zip:6
DISTFILES +=		Marathon_2_Manual.pdf:4

# http://trilogyrelease.bungie.org/faq.html
PERMIT_PACKAGE=	YES

EXTRACT_ONLY =		Marathon2-${V}-Data.zip
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

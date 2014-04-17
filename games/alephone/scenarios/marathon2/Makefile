#	$OpenBSD: Makefile,v 1.10 2014/04/17 06:58:47 bentley Exp $
PKG_ARCH=		*

COMMENT=		marathon two data files
V =			20140104
DISTNAME=		marathon2-0.0.${V}
PKGNAME=		marathon2-0.0.${V}
HOMEPAGE=		http://source.bungie.org/get/

DISTFILES=		Marathon2-${V}-Data.zip:5
DISTFILES +=		Marathon_2_Manual.pdf:4

# http://trilogyrelease.bungie.org/faq.html
PERMIT_PACKAGE_CDROM=	not for sale
PERMIT_PACKAGE_FTP=	YES

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

#	$OpenBSD: Makefile,v 1.13 2019/07/14 00:39:36 naddy Exp $
PKG_ARCH =	*

COMMENT =	marathon one data files
V =		20150620
DISTNAME =	marathon-0.0.${V}
HOMEPAGE =	https://alephone.lhowon.org/games/marathon.html

DISTFILES =	Marathon-${V}-Data.zip:6
DISTFILES +=	Marathon_Manual.pdf:4

# http://trilogyrelease.bungie.org/faq.html
PERMIT_PACKAGE =	YES

EXTRACT_ONLY =	Marathon-${V}-Data.zip
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

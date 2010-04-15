#	$OpenBSD: Makefile,v 1.5 2010/04/15 14:11:01 ajacoutot Exp $
PKG_ARCH =	*

COMMENT =	marathon one data files
V =		0.0.20090509
DISTNAME =	marathon-${V}
PKGNAME =	marathon-${V}p0
HOMEPAGE =	http://source.bungie.org/get/

DISTFILES =	M1A1.zip
DISTFILES +=	Marathon_Manual.pdf:4

# http://trilogyrelease.bungie.org/faq.html
PERMIT_PACKAGE_CDROM =	"not for sale"
PERMIT_PACKAGE_FTP =	YES
PERMIT_DISTFILES_CDROM = "not for sale"
PERMIT_DISTFILES_FTP =	YES

EXTRACT_ONLY =	M1A1.zip
INSTALL_LOC =	${PREFIX}/share/alephone
INSTALL_M =	${INSTALL_LOC}/Marathon


do-install:
	${INSTALL_DATA_DIR} ${INSTALL_M}
	# Marathon 1
	@cd ${WRKDIR}/M1A1 && pax -rw . ${INSTALL_M}
	${INSTALL_SCRIPT} ${FILESDIR}/marathon.sh ${PREFIX}/bin/marathon
	${INSTALL_DATA} ${FULLDISTDIR}/Marathon_Manual.pdf ${INSTALL_M}

NO_BUILD =	Yes
NO_REGRESS =	Yes

.include <bsd.port.mk>

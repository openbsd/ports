#	$OpenBSD: Makefile,v 1.3 2008/07/13 01:08:35 phessler Exp $
PKG_ARCH =	*

COMMENT =	marathon one data files
V =		0.0.20080712
DISTNAME =	marathon-${V}
PKGNAME =	marathon-${V}
HOMEPAGE =	http://source.bungie.org/get/

DISTFILES =	M1A1.zip

# http://trilogyrelease.bungie.org/faq.html
PERMIT_PACKAGE_CDROM =	"not for sale"
PERMIT_PACKAGE_FTP =	YES
PERMIT_DISTFILES_CDROM = "not for sale"
PERMIT_DISTFILES_FTP =	YES

INSTALL_LOC =	${PREFIX}/share/alephone
INSTALL_M =	${INSTALL_LOC}/Marathon


do-install:
	${INSTALL_DATA_DIR} ${INSTALL_M}
	# Marathon 1
	@cd ${WRKDIR}/M1A1 && pax -rw . ${INSTALL_M}
	${INSTALL_SCRIPT} ${FILESDIR}/marathon.sh ${PREFIX}/bin/marathon

NO_BUILD =	Yes
NO_REGRESS =	Yes

.include <bsd.port.mk>

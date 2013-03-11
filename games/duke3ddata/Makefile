# $OpenBSD: Makefile,v 1.2 2013/03/11 11:07:38 espie Exp $

COMMENT =	duke nukem 3d shareware game data
PKGNAME =	duke3ddata-1.0
CATEGORIES =	games
EXTRACT_SUFX =	.zip

HOMEPAGE =	http://www.3drealms.com/

MAINTAINER =	Ryan Freeman <rfreeman@openbsd.org>

# shareware
PERMIT_PACKAGE_CDROM =  "Data cannot be put on CDROM"
PERMIT_PACKAGE_FTP =    Yes

MASTER_SITES =	ftp://ftp.3drealms.com/share/
DISTFILES =	3dduke13.zip

NO_TEST =	Yes
NO_BUILD =	Yes
PKG_ARCH =	*

# zip within a zip
post-extract:
	${UNZIP} -od ${WRKDIR}/shareware ${WRKDIR}/DN3DSW13.SHR

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/duke3d/
	${INSTALL_DATA} ${WRKDIR}/shareware/* ${PREFIX}/share/duke3d/

.include <bsd.port.mk>

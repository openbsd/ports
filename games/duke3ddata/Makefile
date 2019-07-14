# $OpenBSD: Makefile,v 1.4 2019/07/14 00:39:36 naddy Exp $

COMMENT =	duke nukem 3d shareware game data
PKGNAME =	duke3ddata-1.0
CATEGORIES =	games
EXTRACT_SUFX =	.zip
REVISION =	0

HOMEPAGE =	http://www.3drealms.com/

MAINTAINER =	Ryan Freeman <ryan@slipgate.org>

# shareware
PERMIT_PACKAGE =    Yes

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

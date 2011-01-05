# $OpenBSD: Makefile,v 1.23 2011/01/05 17:23:09 stu Exp $

COMMENT =	read and display GNU info files in Tk

DISTNAME =	tkinfo-2.8
REVISION =	0
CATEGORIES =	misc 
HOMEPAGE =	http://math-www.uni-paderborn.de/~axel/tkinfo/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${HOMEPAGE}
MODULES =	x11/tk
RUN_DEPENDS =	${MODTK_RUN_DEPENDS}
NO_BUILD =	Yes
NO_REGRESS =	Yes
USE_GROFF =	Yes
PKG_ARCH =	*

pre-configure:
	@${MODTCL_WISH_ADJ} ${WRKSRC}/tkinfo

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tkinfo ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/tkinfo.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

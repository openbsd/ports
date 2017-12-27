# $OpenBSD: Makefile,v 1.28 2017/12/27 23:47:26 stu Exp $

COMMENT =	read and display GNU info files in Tk

DISTNAME =	tkinfo-2.11
CATEGORIES =	misc 
HOMEPAGE =	http://math-www.uni-paderborn.de/~axel/tkinfo/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# BSD/GPL
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE}
MODULES =	x11/tk
RUN_DEPENDS =	${MODTK_RUN_DEPENDS}
NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

pre-configure:
	@${MODTCL_WISH_ADJ} ${WRKSRC}/tkinfo

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tkinfo ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/tkinfo.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

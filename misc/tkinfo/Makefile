COMMENT =	read and display GNU info files in Tk

REVISION =	0

DISTNAME =	tkinfo-2.11

CATEGORIES =	misc 
HOMEPAGE =	https://axelboldt.github.io/tkinfo/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# BSD/GPL
PERMIT_PACKAGE =Yes

SITES =		${HOMEPAGE}
MODULES =	x11/tk
MODTK_VERSION =	8.6
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

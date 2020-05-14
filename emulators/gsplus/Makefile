# $OpenBSD: Makefile,v 1.2 2020/05/14 17:14:56 cwen Exp $

COMMENT =		Apple IIgs emulator

GH_ACCOUNT =		digarok
GH_PROJECT =		gsplus
GH_COMMIT =		480572054518112647c8fae5d7ea7046a6d6ecfb
DISTNAME =		${GH_PROJECT}-20190816
REVISION =		0

CATEGORIES =		emulators

HOMEPAGE =		https://apple2.gs/plus/

MAINTAINER =		Solene Rapenne <solene@perso.pw>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_image c edit freetype m z

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/re2c

LIB_DEPENDS =		devel/sdl2-image

COMPILER =		base-clang ports-gcc

NO_TEST	=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/GSplus ${PREFIX}/bin/GSplus
	${INSTALL_DATA_DIR} ${PREFIX}/share/gsplus/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gsplus/
	${INSTALL_DATA} ${WRKSRC}/src/assets/* ${PREFIX}/share/gsplus
	${INSTALL_DATA} ${WRKSRC}/doc/gsplusmanual.pdf ${PREFIX}/share/doc/gsplus
	${INSTALL_DATA} ${WRKSRC}/doc/README.txt ${PREFIX}/share/doc/gsplus

.include <bsd.port.mk>

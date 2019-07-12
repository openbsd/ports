# $OpenBSD: Makefile,v 1.8 2019/07/12 20:46:14 sthen Exp $

COMMENT =	cross-platform port of Arx Fatalis, a first-person RPG
CATEGORIES =	games

MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

GH_ACCOUNT =	arx
GH_PROJECT =	ArxLibertatis
GH_TAGNAME =	1.1.2-r1
PKGNAME =	arx-libertatis-${GH_TAGNAME:S/-r/pl/}
REVISION =	3

# GPLv3+, fonts are SIL OFL 1.1 license
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW SDL c freetype m openal
WANTLIB += z

# C++11
COMPILER =	base-clang ports-gcc base-gcc

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/boost>=1.48 \
		devel/desktop-file-utils
LIB_DEPENDS =	audio/openal \
		devel/sdl \
		graphics/glew

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_ARGS =	-DCMAKE_EXE_LINKER_FLAGS="-lpthread" \
			-DBUILD_CRASHREPORTER=OFF \
			-DCMAKE_INSTALL_PREFIX=${LOCALBASE}/share/arx \
			-DUSE_QT4=OFF \
			-DUSE_QT5=OFF

NO_TEST =	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/arx
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/data/icons/arx-libertatis.desktop \
		${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/data/icons/arx-libertatis.png \
		${PREFIX}/share/pixmaps
	${INSTALL_MAN} ${WRKSRC}/data/man/{arxsavetool.1,arxunpak.1} \
		${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/data/man/arx.6 ${PREFIX}/man/man6
	${INSTALL_PROGRAM} ${WRKBUILD}/{arxsavetool,arxunpak} ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/arx ${PREFIX}/share/arx
	${INSTALL_SCRIPT} ${WRKSRC}/scripts/arx-install-data ${PREFIX}/bin
	${SUBST_CMD} -c -m 755 ${FILESDIR}/arx ${PREFIX}/bin/arx

.include <bsd.port.mk>

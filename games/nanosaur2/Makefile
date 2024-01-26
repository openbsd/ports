COMMENT =	Pangea Software' Nanosaur II for modern systems

PKGNAME =	${DISTNAME:L}

POMME_COMMIT =	6e4ea042ba9e7e525d3930e45662be15605153c4
DIST_TUPLE =	github jorio Nanosaur2 v2.1.0 .
DIST_TUPLE +=	github jorio Pomme ${POMME_COMMIT} extern/Pomme

CATEGORIES =	games

HOMEPAGE =	https://jorio.itch.io/nanosaur2

MAINTAINER =	Omar Polo <op@openbsd.org>

# CC-BY-NC SA 4.0
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} GL SDL2 c m

# C++20 C17
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

LIB_DEPENDS =	devel/sdl2

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Source/Boot.cpp

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/Nanosaur2 ${PREFIX}/bin
	cp -R ${WRKBUILD}/Data/ ${PREFIX}/share/nanosaur2/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/256x256/apps
	${INSTALL_DATA} ${WRKSRC}/packaging/nanosaur2.desktop \
		${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/packaging/nanosaur2-desktopicon.png \
		${PREFIX}/share/icons/hicolor/256x256/apps

.include <bsd.port.mk>

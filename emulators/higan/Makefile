# $OpenBSD: Makefile,v 1.7 2019/11/05 09:27:29 bentley Exp $

COMMENT =	multi-system Nintendo emulator

V =		106
DISTNAME =	higan_v$V-source
PKGNAME =	higan-$V
REVISION =	4

USE_WXNEEDED =	Yes

CATEGORIES =	emulators

HOMEPAGE =	https://byuu.org/emulation/higan/

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# GPLv3: https://byuu.org/emulation/higan/licensing
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL SDL X11 Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xv atk-1.0 c
WANTLIB += cairo fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 gtksourceview-2.0
WANTLIB += intl m openal pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += z

# upstream only provides .7z
#MASTER_SITES =	https://download.byuu.org/
MASTER_SITES =	https://distfiles.ajb.soy/

RUN_DEPENDS =	devel/desktop-file-utils
LIB_DEPENDS =	audio/openal \
		devel/sdl \
		x11/gtksourceview

MAKE_FLAGS =	compiler="${CXX}" \
		cflags="${CFLAGS} -x c -std=c11 -DLIBCO_MPROTECT" \
		cppflags="${CXXFLAGS} -x c++ -std=c++14 \
			-I${LOCALBASE}/include -I${X11BASE}/include" \
		build=

COMPILER =	base-clang ports-gcc base-gcc

USE_GMAKE =	Yes

NO_TEST =	Yes

MAKE_FILE =	GNUmakefile

pre-configure:
	${SUBST_CMD} ${WRKDIST}/nall/path.hpp

do-build:
	cd ${WRKSRC}/higan && env -i ${MAKE_ENV} ${MAKE_PROGRAM} \
		${MAKE_FLAGS} -f ${MAKE_FILE} ${ALL_TARGET}
	cd ${WRKSRC}/icarus && env -i ${MAKE_ENV} ${MAKE_PROGRAM} \
		${MAKE_FLAGS} -f ${MAKE_FILE} ${ALL_TARGET}

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/higan/out/higan ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKDIST}/icarus/out/icarus ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/*/data/*.desktop ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/*/data/*.png ${PREFIX}/share/pixmaps
	${INSTALL_DATA_DIR} ${PREFIX}/share/icarus/Database
	${INSTALL_DATA} ${WRKSRC}/icarus/Database/*.bml \
		${PREFIX}/share/icarus/Database
	${INSTALL_DATA_DIR} ${PREFIX}/share/higan
	cp -R ${WRKSRC}/higan/systems/* ${PREFIX}/share/higan

.include <bsd.port.mk>

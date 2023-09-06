# libco requires custom asm per arch
ONLY_FOR_ARCHS =	aarch64 arm amd64 i386
BROKEN-aarch64 =	mprotect asm fixes required
BROKEN-arm =		mprotect asm fixes required
BROKEN-i386 =		mprotect asm fixes required

COMMENT =	multi-system Nintendo emulator

V =		106
REVISION =	9

GH_ACCOUNT =	higan-emu
GH_PROJECT =	higan
GH_TAGNAME =	v$V

USE_WXNEEDED =	Yes
USE_NOBTCFI =	Yes

CATEGORIES =	emulators

# GPLv3: https://byuu.org/emulation/higan/licensing
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += harfbuzz GL SDL X11 Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xv atk-1.0 c
WANTLIB += cairo fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 gtksourceview-2.0
WANTLIB += intl m openal pango-1.0 pangocairo-1.0 pangoft2-1.0

RUN_DEPENDS =	devel/desktop-file-utils
LIB_DEPENDS =	audio/openal \
		devel/sdl \
		x11/gtksourceview

MAKE_FLAGS =	compiler="${CXX}" \
		cflags="${CFLAGS} -x c -std=c11 -DLIBCO_MPROTECT" \
		cppflags="${CXXFLAGS} -x c++ -std=c++14 \
			-I${LOCALBASE}/include -I${X11BASE}/include" \
		build=

# c++14
COMPILER =	base-clang ports-gcc

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

# Requires OpenGL>=3.3
# github.com/sgtdi/fswatcher@v1.3.0 watcher_kqueue.go fails on ILP32
ONLY_FOR_ARCHS =	aarch64 amd64

COMMENT =		fast, feature full, GPU-based terminal emulator

MODPY_DISTV =		0.48.0
MODGO_MODNAME =		github.com/kovidgoyal/kitty
MODGO_VERSION =		v${MODPY_DISTV}
DISTNAME =		kitty-${MODGO_VERSION}
WRKDIST =		${WRKDIR}/${MODGO_MODNAME}@${MODGO_VERSION}
CATEGORIES =		x11
HOMEPAGE =		https://sw.kovidgoyal.net/kitty/

MAINTAINER =		Daniil Ryvkin <mail@leinadr.com>

# GPLv3+
PERMIT_PACKAGE =	Yes

# canberra, fontconfig, freetype are loaded dynamically
WANTLIB += GL X11 X11-xcb Xcursor Xinerama Xrandr c canberra cairo crypto
WANTLIB += dbus-1 fontconfig freetype harfbuzz intl lcms2 m png pthread
WANTLIB += util xcb xkbcommon xkbcommon-x11 xxhash z ${MODPY_WANTLIB}
# WANTLIB += wayland-client wayland-cursor

CFLAGS +=		-DOPENSSL_clear_free=freezero

# C11
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MODULES =		lang/python \
			lang/go

SEPARATE_BUILD =	No
MODGO_TYPE =		bin

# optional dependencies:
# graphics/ImageMagick (to use the kitty icat tool to display images in
#	the terminal)
# textproc/py-pygments (for syntax highlighting in kitty +kitten diff)
BUILD_DEPENDS =		fonts/nerd-fonts/symbolsonly \
			textproc/py-sphinx
# BUILD_DEPENDS +=	wayland/wayland-protocols
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic
LIB_DEPENDS =		audio/libcanberra \
			devel/harfbuzz \
			sysutils/xxhash \
			graphics/cairo \
			graphics/lcms2 \
			graphics/png \
			x11/dbus \
			x11/xkbcommon
# LIB_DEPENDS +=	wayland/wayland

TEST_ENV =		CI=true \
			TMPDIR=${WRKDIR}/tmp \
			KITTY_CACHE_DIRECTORY=${WRKDIR}/tmp/cache

# needed for 'make test'
USE_GMAKE =		Yes

_ARGS =			--extra-include-dirs=${LOCALBASE}/include \
			--extra-library-dirs=${LOCALBASE}/lib \
			--ignore-compiler-warnings \
			--verbose

# this disables checking upstream for updates
_ARGS +=		--update-check-interval=0

# ensure parent dir exists for MODGO_SETUP_WORKSPACE symlink
# TMPDIR must not be a parent of WRKSRC
# Go ignores go.mod inside os.TempDir()
pre-configure:
	mkdir -p ${WRKDIR}/${MODGO_MODNAME:H}
	mkdir -p ${WRKDIR}/tmp

do-build:
	cd ${WRKSRC}; \
		${SETENV} ${MAKE_ENV} \
		TMPDIR=${WRKDIR}/tmp \
		PATH=${WRKSRC}/linux-package/bin:${PORTPATH} \
		${MODPY_BIN} setup.py ${_ARGS} linux-package

pre-test:
	mkdir -p ${WRKDIR}/tmp/cache

do-install:
	${INSTALL_PROGRAM} \
		${WRKSRC}/linux-package/bin/kitty ${PREFIX}/bin/
	${INSTALL_PROGRAM} \
		${WRKSRC}/linux-package/bin/kitten ${PREFIX}/bin/
	${INSTALL_DATA_DIR}	${PREFIX}/lib/kitty
	@for f in ${WRKSRC}/linux-package/man/man1/*.1; do \
		${INSTALL_MAN} $$f ${PREFIX}/man/man1/; \
	done
	@cp -R ${WRKSRC}/linux-package/lib/kitty/*	${PREFIX}/lib/kitty/
	@cp -R ${WRKSRC}/linux-package/share/*	${PREFIX}/share/

.include "modules.inc"
.include <bsd.port.mk>

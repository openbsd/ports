# Requires OpenGL>=3.3
ONLY_FOR_ARCHS =	aarch64 amd64 i386

COMMENT =		fast, feature full, GPU-based terminal emulator

# 0.27.1 runs the newly built kitty binary during build, but expects
# it to be in the path (try PORTPATH=${WRKSRC}/linux-package/bin:${PATH})
# build also fails if you have an older version of kitty installed -
# it also wants to download go modules during build
MODPY_EGG_VERSION =	0.26.5
DISTNAME =		kitty-${MODPY_EGG_VERSION}
CATEGORIES =		x11
HOMEPAGE =		https://sw.kovidgoyal.net/kitty/
REVISION =		1

# GPLv3+
PERMIT_PACKAGE =	Yes

# canberra, fontconfig, freetype are loaded dynamically
WANTLIB += GL X11 X11-xcb Xcursor Xinerama Xrandr c canberra crypto dbus-1
WANTLIB += fontconfig freetype harfbuzz intl lcms2 m png pthread rsync
WANTLIB += util xcb xkbcommon xkbcommon-x11 z ${MODPY_WANTLIB}

SITES =			https://github.com/kovidgoyal/kitty/releases/download/v${MODPY_EGG_VERSION}/
EXTRACT_SUFX =		.tar.xz

# C11
COMPILER =		base-clang ports-gcc

CFLAGS +=		"-DOPENSSL_clear_free=freezero"

MODULES =		lang/python
MODPY_DISTUTILS_BUILD =	linux-package
MODPY_SETUP_ARGS +=	--verbose \
			--ignore-compiler-warnings \
			--extra-include-dirs=${LOCALBASE}/include \
			--extra-library-dirs=${LOCALBASE}/lib
# this disables checking upstream for updates
MODPY_SETUP_ARGS +=	--update-check-interval=0

# optional dependencies:
# graphics/ImageMagick (to use the kitty icat tool to display images in
#	the terminal)
# textproc/py-pygments (for syntax highlighting in kitty +kitten diff)
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic
LIB_DEPENDS =		audio/libcanberra \
			devel/harfbuzz \
			graphics/lcms2 \
			graphics/png \
			net/librsync \
			x11/dbus \
			x11/xkbcommon

TEST_ENV =		CI=true \
			TMPDIR=${WRKDIR}/tmp \
			KITTY_CACHE_DIRECTORY=${WRKDIR}/tmp/cache

# needed for 'make test'
USE_GMAKE =		Yes

pre-test:
	mkdir -p ${WRKDIR}/tmp/cache

do-install:
	${INSTALL_PROGRAM} \
		${WRKSRC}/linux-package/bin/kitty ${PREFIX}/bin/
	${INSTALL_DATA_DIR}	${PREFIX}/lib/kitty
	${INSTALL_MAN} ${WRKSRC}/linux-package/man/man1/kitty.1 \
		${PREFIX}/man/man1/
	@cp -R ${WRKSRC}/linux-package/lib/kitty/*	${PREFIX}/lib/kitty/
	@cp -R ${WRKSRC}/linux-package/share/*	${PREFIX}/share/

.include <bsd.port.mk>

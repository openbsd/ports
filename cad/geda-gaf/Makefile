COMMENT =		suite of tools for electronic design automation
V =			1.10.2
DISTNAME =		geda-gaf-${V}
CATEGORIES =		cad
HOMEPAGE =		http://wiki.geda-project.org/geda:gaf
REVISION =		0

SHARED_LIBS = 		geda		1.0	# 47.0
SHARED_LIBS +=		gedacairo	0.0	# 1.3
SHARED_LIBS +=		xornstorage	0.0	# 0.0

# GPLv2+
PERMIT_PACKAGE =	Yes

SITES = http://ftp.geda-project.org/geda-gaf/stable/v${V:R}/${V}/

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo expat ffi fontconfig
WANTLIB += freetype fribidi gc gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gmp gobject-2.0 graphite2
WANTLIB += gtk-x11-2.0 guile-2.2 harfbuzz iconv intl jpeg ltdl m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1 png
WANTLIB += pthread unistring xcb xcb-render xcb-shm z

COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		devel/glib2 \
			x11/gtk+2 \
			lang/guile2 \
			devel/gmp

# these are checked by configure
BUILD_DEPENDS =		misc/shared-mime-info \
			devel/desktop-file-utils

RUN_DEPENDS = 		misc/shared-mime-info \
			devel/desktop-file-utils \
			devel/xdg-utils \
			x11/gtk+4,-guic

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_2}
MODPY_ADJ_FILES =	utils/scripts/garchive.py \
			utils/scripts/tragesym

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-update-xdg-database \
			--without-libfam
CONFIGURE_ENV =		GUILE=guile2.2 GUILE_SNARF=guile-snarf2.2 \
			GROFF=no
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-tools

# XXX make sure guile2 headers are picked up first (over guile1);
# cannot use CPPFLAGS/CFLAGS since they get appended last
CONFIGURE_ENV +=	"CC=${CC} -I${LOCALBASE}/include/guile/2.2"
CONFIGURE_ENV +=	"CXX=${CXX} -I${LOCALBASE}/include/guile/2.2"

post-install:
	mv ${PREFIX}/share/doc/geda-gaf/examples \
	    ${PREFIX}/share/examples/geda-gaf

.include <bsd.port.mk>

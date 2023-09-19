COMMENT =	lepton electronic design automation suite

V =		1.9.18-20220529
DISTNAME =	lepton-eda-${V:C/-.*//}
REVISION =	1

SHARED_LIBS +=	lepton               1.0      # 11.0
SHARED_LIBS +=	leptongui            1.0      # 5.0

CATEGORIES =	cad

HOMEPAGE =	https://github.com/lepton-eda/lepton-eda

MAINTAINER =	Dmitry Pryakhin <graahnul.grom@ya.ru>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += c cairo expat ffi fontconfig freetype fribidi gc gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gmp gobject-2.0
WANTLIB += graphite2 gtk-x11-2.0 guile-2.2 harfbuzz iconv intl
WANTLIB += jpeg ltdl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre2-8
WANTLIB += pixman-1 png unistring xcb xcb-render xcb-shm z

SITES =	https://github.com/lepton-eda/lepton-eda/releases/download/$V/

COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/desktop-file-utils \
		misc/shared-mime-info \
		print/texinfo

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+4,-guic

LIB_DEPENDS =	devel/gettext,-runtime \
		lang/guile2 \
		x11/gtk+2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-attrib \
			--disable-update-xdg-database \
			--enable-guild

CONFIGURE_ENV =	GROFF=false \
		GUILE_EFFECTIVE_VERSION=2.2 \
		GUILE_CFLAGS="-I${LOCALBASE}/include/guile/2.2 -I${LOCALBASE}/include" \
		GUILE_LIBS="-L${LOCALBASE}/lib -lguile-2.2 -lgc" \
		MAKEINFO=gmakeinfo \
		M4=/usr/bin/m4

# XXX make sure guile2 headers are picked up first (over guile1);
# cannot use CPPFLAGS/CFLAGS since they get appended last
CONFIGURE_ENV +=	"CC=${CC} -I${LOCALBASE}/include/guile/2.2"
CONFIGURE_ENV +=	"CXX=${CXX} -I${LOCALBASE}/include/guile/2.2"

# suppress tons of warnings
# "compilation of /usr/local/bin/guild2.2 failed"
MAKE_ENV +=	"GUILE_AUTO_COMPILE=0"

post-install:
	mv ${PREFIX}/share/doc/lepton-eda/examples \
	    ${PREFIX}/share/examples/lepton-eda

.include <bsd.port.mk>

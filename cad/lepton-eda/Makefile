COMMENT =	lepton electronic design automation suite

V =		1.9.17-20211219
DISTNAME =	lepton-eda-${V:C/-.*//}

SHARED_LIBS +=	lepton               0.0      # 8.0
SHARED_LIBS +=	leptongui            0.0      # 2.0

CATEGORIES =	cad

HOMEPAGE =	https://github.com/lepton-eda/lepton-eda

MAINTAINER =	Dmitry Pryakhin <graahnul.grom@gmail.com>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += c cairo expat ffi fontconfig freetype fribidi gc gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gmp gobject-2.0
WANTLIB += graphite2 gtk-x11-2.0 guile-2.2 harfbuzz iconv intl
WANTLIB += jpeg ltdl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png unistring xcb xcb-render xcb-shm z

MASTER_SITES =	\
	https://github.com/lepton-eda/lepton-eda/releases/download/$V/

COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/desktop-file-utils \
		misc/shared-mime-info \
		print/texinfo

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

LIB_DEPENDS =	devel/gettext,-runtime \
		lang/guile2 \
		x11/gtk+2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-attrib \
			--disable-update-xdg-database

CONFIGURE_ENV =	GROFF=false \
		GUILE=guile2.2 \
		GUILE_SNARF=guile-snarf2.2 \
		MAKEINFO=gmakeinfo \
		M4=/usr/bin/m4

post-install:
	# would be nice to precompile the guile files otherwise
	# they're done per-user at startup. it should be similar
	# to this, but it needs more to get it to work:
	# cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
	#     prefix=${PREFIX} precompile
	mv ${PREFIX}/share/doc/lepton-eda/examples \
	    ${PREFIX}/share/examples/lepton-eda

.include <bsd.port.mk>

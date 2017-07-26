# $OpenBSD: Makefile,v 1.66 2017/07/26 22:45:26 sthen Exp $

COMMENT =	command-driven interactive function plotting program

V =		4.6
PATCHLEVEL =	6
REVISION =	3
DISTNAME =	gnuplot-${V}.${PATCHLEVEL}
CATEGORIES =	math graphics
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=gnuplot/}

HOMEPAGE =	http://www.gnuplot.info/

# see Copyright in source
# http://gnuplot.cvs.sourceforge.net/gnuplot/gnuplot/Copyright
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ncurses readline ${COMPILER_LIBCXX} z

BUILD_DEPENDS =	emacs->=24:editors/emacs

FLAVORS =	no_cairo no_x11
FLAVOR ?=

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-linux-vga \
			--without-latex \
			--without-tutorial \
			--with-readline \
			--with-lasergnu \
			--disable-wxwidgets \
			--disable-qt \
			--without-lua \
			--without-pdf
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS =		appdefaultdir="${PREFIX}/lib/X11/app-defaults/"

TEST_IS_INTERACTIVE =	x11

SUBST_VARS =	V

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS += --without-x \
		  --without-gd
.else
LIB_DEPENDS +=	converters/libiconv graphics/gd
WANTLIB +=	X11 fontconfig freetype gd iconv jpeg png tiff webp
CONFIGURE_ARGS += --with-x
.endif

.if ${FLAVOR:Mno_cairo} || ${FLAVOR:Mno_x11}
CONFIGURE_ARGS += --without-cairo
.else
LIB_DEPENDS +=	devel/gettext \
		devel/pango	\
		graphics/cairo
WANTLIB +=	cairo gobject-2.0 glib-2.0 intl pango-1.0 pangocairo-1.0
.endif

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/src/lasergnu ${PREFIX}/bin/lasergnu

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.57 2014/03/17 23:21:43 sthen Exp $

COMMENT =	command-driven interactive function plotting program

V =		4.6
PATCHLEVEL =	3
REVISION =	0
DISTNAME =	gnuplot-${V}.${PATCHLEVEL}
CATEGORIES =	math graphics
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=gnuplot/}

HOMEPAGE =	http://www.gnuplot.info/

# see Copyright in source
# http://gnuplot.cvs.sourceforge.net/gnuplot/gnuplot/Copyright
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ncurses pthread readline stdc++ tiff vpx z

BUILD_DEPENDS =	editors/emacs21

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
MODULES +=	converters/libiconv
LIB_DEPENDS +=	graphics/gd
WANTLIB +=	X11 fontconfig freetype jpeg png gd>=20 ${MODLIBICONV_WANTLIB}
CONFIGURE_ARGS += --with-x
.endif

.if ${FLAVOR:Mno_cairo} || ${FLAVOR:Mno_x11}
CONFIGURE_ARGS += --without-cairo
.else
MODULES +=	devel/gettext
LIB_DEPENDS +=	devel/pango	\
		graphics/cairo
WANTLIB +=	gobject-2.0 pangocairo-1.0 cairo glib-2.0 pango-1.0 pangoft2-1.0
.endif

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/src/lasergnu ${PREFIX}/bin/lasergnu

.include <bsd.port.mk>

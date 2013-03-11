# $OpenBSD: Makefile,v 1.54 2013/03/11 11:23:54 espie Exp $

COMMENT =	command-driven interactive function plotting program

V =		4.4
PATCHLEVEL =	3
REVISION =	3
DISTNAME =	gnuplot-${V}.${PATCHLEVEL}
CATEGORIES =	math graphics
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=gnuplot/}

HOMEPAGE =	http://www.gnuplot.info/

# see Copyright in source
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c m ncurses readline stdc++ termcap z

FLAVORS =	no_cairo no_x11
FLAVOR ?=

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-linux-vga \
			--without-latex \
			--without-tutorial \
			--with-readline \
			--with-lasergnu \
			--disable-wxwidgets \
			--without-lua \
			--without-lisp-files \
			--without-pdf
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include/libpng" \
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
USE_GROFF =	Yes
WANTLIB +=	X11 fontconfig freetype ${MODLIBICONV_WANTLIB} jpeg png gd>=20
CONFIGURE_ARGS += --with-x
.endif

.if ${FLAVOR:Mno_cairo} || ${FLAVOR:Mno_x11}
CONFIGURE_ARGS += --without-cairo
.else
MODULES +=	devel/gettext
LIB_DEPENDS +=	devel/pango	\
		graphics/cairo
WANTLIB +=	GL Xrender \
		expat gmodule-2.0 gobject-2.0 gthread-2.0 pixman-1 \
		pthread pthread-stubs xcb xcb-render xcb-shm \
		pangocairo-1.0 cairo glib-2.0 pango-1.0 pangoft2-1.0
.endif

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/src/lasergnu ${PREFIX}/bin/lasergnu

.include <bsd.port.mk>

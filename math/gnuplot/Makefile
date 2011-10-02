# $OpenBSD: Makefile,v 1.51 2011/10/02 13:14:15 nigel Exp $

COMMENT =	command-driven interactive function plotting program

V =		4.4
PATCHLEVEL =	3
REVISION =	2
DISTNAME =	gnuplot-${V}.${PATCHLEVEL}
CATEGORIES =	math graphics
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=gnuplot/}

HOMEPAGE =	http://www.gnuplot.info/

# see Copyright in source
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

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

REGRESS_IS_INTERACTIVE =	x11

SUBST_VARS =	V

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS += --without-x \
		  --without-gd
.else
MODULES +=	converters/libiconv
LIB_DEPENDS +=	graphics/gd
USE_GROFF =	Yes
WANTLIB +=	X11 fontconfig freetype ${MODLIBICONV_WANTLIB} jpeg png gd>=20
CONFIGURE_ARGS += --with-x
.endif

.if ${FLAVOR:L:Mno_cairo} || ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS += --without-cairo
.else
MODULES +=	devel/gettext
LIB_DEPENDS +=	devel/pango	\
		graphics/cairo
WANTLIB +=	GL Xau Xdamage Xdmcp Xext Xfixes Xrender Xxf86vm drm \
		expat gmodule-2.0 gobject-2.0 gthread-2.0 pixman-1 \
		pthread pthread-stubs xcb xcb-render xcb-shm \
		pangocairo-1.0 cairo glib-2.0 pango-1.0 pangoft2-1.0
.endif

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/src/lasergnu ${PREFIX}/bin/lasergnu

.include <bsd.port.mk>

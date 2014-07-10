# $OpenBSD: Makefile,v 1.39 2014/07/10 10:19:45 robert Exp $

COMMENT=	SVG vector drawing application

DISTNAME=	inkscape-0.48.4
REVISION =	1
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=inkscape/}

HOMEPAGE=	http://www.inkscape.org/

# GPLv2 and LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += Magick++ MagickCore X11 Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender aspell atk-1.0
WANTLIB += atkmm-1.6 c cairo cairomm-1.0 fontconfig freetype gc
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gdkmm-2.4 gio-2.0 giomm-2.4
WANTLIB += glib-2.0 glibmm-2.4 gobject-2.0 gsl gslcblas gthread-2.0
WANTLIB += gtk-x11-2.0 gtkmm-2.4 gtkspell lcms2 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangomm-1.4 png poppler poppler-glib popt
WANTLIB += pthread sigc-2.0 stdc++ xml2 xslt z

MODULES=	devel/gettext \
		textproc/intltool \
		lang/python \
		lang/ruby

# We are just substituting paths at build time
MODPY_BUILDDEP =	No
MODRUBY_BUILDDEP =	No

# There are no (enabled) ruby extensions yet, but users may like
# to write their own extensions. Add Ruby as a soft dependency.
# Note that Python is already pulled in indirectly by py-lxml.
MODRUBY_RUNDEP =	No

BUILD_DEPENDS=	devel/boost
LIB_DEPENDS=	devel/boehm-gc \
		devel/gsl \
		devel/popt \
		graphics/ImageMagick \
		graphics/lcms2 \
		graphics/png \
		print/poppler \
		textproc/aspell/core \
		textproc/gtkspell \
		textproc/libxslt \
		x11/gtk2mm>=2.24.4
RUN_DEPENDS=	devel/desktop-file-utils \
		textproc/py-lxml \
		x11/gtk+2,-guic

USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ARGS=	--without-gnome-vfs
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/ImageMagick \
			  -I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

NO_TEST=	Yes

# As discussed on the ports mailing list, remove internationalised manual
# pages, as our mandoc implementation does not yet deal with them properly.
RM_MANS=	man/el man/fr man/ja man/man1/inkscape.*.1 \
		man/sk man/zh_TW

SUBST_VARS +=	RUBY MODRUBY_REV
pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/extension/implementation/script.cpp

post-install:
.for i in ${RM_MANS}
	rm -Rf ${PREFIX}/${i}
.endfor

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.34 2013/06/28 12:02:30 ajacoutot Exp $

COMMENT=	SVG vector drawing application

DISTNAME=	inkscape-0.48.2
REVISION=	7
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=inkscape/}

# error: #error "Only <glib.h> can be included directly."
# (patch from Fedora)
PATCHFILES=	inkscape-glib-2.32.patch:0
PATCH_DIST_STRIP=-p1
MASTER_SITES0=	http://distfiles.bsdfrog.org/

HOMEPAGE=	http://www.inkscape.org/

# GPLv2 and LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += Magick++ MagickCore X11 Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender aspell atk-1.0
WANTLIB += atkmm-1.6 c cairo cairomm-1.0 fontconfig freetype gc
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gdkmm-2.4 gio-2.0 giomm-2.4
WANTLIB += glib-2.0 glibmm-2.4 gobject-2.0 gsl gslcblas gthread-2.0
WANTLIB += gtk-x11-2.0 gtkmm-2.4 gtkspell lcms m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangomm-1.4 png poppler poppler-glib popt
WANTLIB += pthread sigc-2.0 stdc++ xml2 xslt z

MODULES=	devel/gettext \
		textproc/intltool

BUILD_DEPENDS=	devel/boost
LIB_DEPENDS=	devel/boehm-gc \
		devel/gsl \
		devel/popt \
		graphics/ImageMagick \
		graphics/lcms \
		graphics/png \
		print/poppler \
		textproc/aspell/core \
		textproc/gtkspell \
		textproc/libxslt \
		x11/gtk2mm>=2.24.4
RUN_DEPENDS=	devel/desktop-file-utils \
		textproc/py-lxml

USE_GMAKE=	Yes
USE_GROFF=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.68
CONFIGURE_ARGS=	--without-gnome-vfs
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/ImageMagick \
			  -I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

NO_TEST=	Yes

.include <bsd.port.mk>

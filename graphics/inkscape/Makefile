# $OpenBSD: Makefile,v 1.28 2013/01/07 20:03:42 jasper Exp $

COMMENT=	SVG vector drawing application

DISTNAME=	inkscape-0.48.2
REVISION=	4
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
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	GL Magick++ MagickCore X11 Xcomposite Xcursor Xdamage \
		Xext Xfixes Xi Xinerama Xrandr Xrender \
		aspell atk-1.0 atkmm-1.6 c cairo cairomm-1.0 expat \
		fontconfig freetype gc gdk-x11-2.0 gdk_pixbuf-2.0 gdkmm-2.4 \
		gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gobject-2.0 \
		gsl gslcblas gthread-2.0 gtk-x11-2.0 gtkmm-2.4 gtkspell \
		lcms m pango-1.0 pangocairo-1.0 pangoft2-1.0 pangomm-1.4 \
		pixman-1 png poppler poppler-glib popt pthread pthread-stubs \
		sigc-2.0 stdc++ xcb xcb-render xcb-shm xml2 xslt z

MODULES=	devel/gettext \
		textproc/intltool

BUILD_DEPENDS=	devel/boost
LIB_DEPENDS=	devel/boehm-gc \
		devel/gsl \
		devel/pangomm \
		devel/popt \
		graphics/ImageMagick \
		graphics/lcms \
		graphics/png \
		print/poppler \
		textproc/aspell/core \
		textproc/gtkspell \
		textproc/libxslt \
		x11/gtk2mm \
		x11/gtk+2
RUN_DEPENDS=	devel/desktop-file-utils \
		textproc/py-lxml

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
USE_GROFF=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.68
CONFIGURE_ARGS=	--without-gnome-vfs
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include/ImageMagick \
			  -I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

NO_REGRESS=	Yes

.include <bsd.port.mk>

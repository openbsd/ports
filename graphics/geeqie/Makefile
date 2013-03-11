# $OpenBSD: Makefile,v 1.9 2013/03/11 11:10:52 espie Exp $

COMMENT=	lightweight Gtk+2 based image viewer

DISTNAME=	geeqie-1.1
CATEGORIES=	graphics
EPOCH=		0

HOMEPAGE=	http://geeqie.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB += exiv2 expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 jpeg tiff gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 lcms m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread pthread-stubs stdc++ xcb xcb-render
WANTLIB += xcb-shm z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=geeqie/}

MODULES=	devel/gettext \
		textproc/intltool

BUILD_DEPENDS=	x11/gnome/doc-utils>=0.20.4p0
RUN_DEPENDS=	devel/desktop-file-utils \
		devel/xdg-utils \
		graphics/ImageMagick \
		graphics/exiftran
LIB_DEPENDS=	x11/gtk+2 \
		graphics/lcms \
		graphics/exiv2

USE_GMAKE=	Yes
USE_GROFF=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--disable-doxygen-doc \
		--disable-lirc \
		--disable-gps \
		--with-htmldir=${PREFIX}/share/doc/geeqie \
		--with-readmedir=${PREFIX}/share/doc/geeqie

# XXX don't stress the old farts
post-install:
	cd ${PREFIX}/bin && ln -s geeqie gqview

.include <bsd.port.mk>

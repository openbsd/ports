# $OpenBSD: Makefile,v 1.92 2013/03/11 11:10:52 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	technical diagrams drawing tool

GNOME_PROJECT=	dia
GNOME_VERSION=	0.97.2
REVISION=	4

CATEGORIES=	graphics

HOMEPAGE=	http://live.gnome.org/Dia/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm art_lgpl_2 atk-1.0
WANTLIB += c cairo drm expat ffi fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += stdc++ xcb xcb-render xcb-shm xml2 xslt z
WANTLIB += harfbuzz icudata icule icuuc

RUN_DEPENDS=	devel/xdg-utils
BUILD_DEPENDS=	textproc/docbook-xsl
LIB_DEPENDS=	x11/gtk+2 \
		graphics/libart \
		textproc/libxslt

MODULES=	devel/gettext \
		x11/gnome

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_CPPFLAGS=-I${LOCALBASE}/include/libpng

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-static \
		--with-cairo \
		--without-hardbooks \
		--without-python \
		--without-swig \
		--disable-db2html \
		--disable-libemf \
		--disable-gnome

post-install:
	mv ${PREFIX}/share/man/fr ${PREFIX}/man
	rmdir ${PREFIX}/share/man/ ${PREFIX}/share/oaf/

.include <bsd.port.mk>

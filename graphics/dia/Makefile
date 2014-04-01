# $OpenBSD: Makefile,v 1.103 2014/04/01 18:06:29 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		technical diagrams drawing tool

GNOME_PROJECT=		dia
GNOME_VERSION=		0.97.2
REVISION=		11

CATEGORIES=		graphics

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender art_lgpl_2 atk-1.0 c cairo expat ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-shm xml2 xslt z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		x11/gtk+2 \
			graphics/libart \
			textproc/libxslt

RUN_DEPENDS=		devel/xdg-utils

MODGNOME_TOOLS +=  desktop-file-utils  gtk-update-icon-cache docbook

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-hardbooks \
			--without-python \
			--without-swig \
			--disable-db2html \
			--disable-libemf \
			--disable-gnome

post-install:
	mv ${PREFIX}/share/man/fr ${PREFIX}/man
	rmdir ${PREFIX}/share/man/ ${PREFIX}/share/oaf/
	rm ${PREFIX}/lib/dia/*.{a,la}

.include <bsd.port.mk>

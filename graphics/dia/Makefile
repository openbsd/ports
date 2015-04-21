# $OpenBSD: Makefile,v 1.107 2015/04/21 18:51:25 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		technical diagrams drawing tool

GNOME_PROJECT=		dia
GNOME_VERSION=		0.97.3
REVISION=		1

CATEGORIES=		graphics

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 atk-1.0 c cairo expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs xcb xcb-render xcb-shm
WANTLIB += xml2 xslt z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		x11/gtk+2 \
			graphics/libart \
			textproc/libxslt

RUN_DEPENDS=		devel/xdg-utils

MODGNOME_TOOLS += desktop-file-utils docbook gtk-update-icon-cache

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-hardbooks \
			--without-python \
			--without-swig \
			--disable-db2html \
			--disable-libemf \
			--disable-gnome

post-install:
	mv ${PREFIX}/share/man/fr ${PREFIX}/man
	rmdir ${PREFIX}/share/man
	rm ${PREFIX}/lib/dia/*.{a,la}

.include <bsd.port.mk>

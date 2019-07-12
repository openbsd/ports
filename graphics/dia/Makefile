# $OpenBSD: Makefile,v 1.114 2019/07/12 21:02:21 sthen Exp $

COMMENT=		technical diagrams drawing tool

GNOME_PROJECT=		dia
GNOME_VERSION=		0.97.3
REVISION=		6

CATEGORIES=		graphics

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 atk-1.0 c cairo expat ffi fontconfig
WANTLIB += freetype fribidi gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz iconv intl lzma m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread xcb xcb-render xcb-shm
WANTLIB += xml2 xslt z

MODULES=		x11/gnome

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

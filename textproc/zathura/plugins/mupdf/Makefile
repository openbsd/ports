# $OpenBSD: Makefile,v 1.17 2019/05/21 10:08:03 sthen Exp $

V =		0.3.4
REVISION =	0
COMMENT =	mupdf pdf plugin for zathura
DISTNAME =	zathura-pdf-mupdf-${V}

HOMEPAGE =	https://pwmt.org/projects/zathura-pdf-mupdf/

MASTER_SITES =	https://pwmt.org/projects/zathura/plugins/download/ \
		http://distfiles.gentoo.org/distfiles/

BUILD_DEPENDS = textproc/mupdf \
		textproc/zathura/core
LIB_DEPENDS +=	graphics/jbig2dec \
		graphics/jpeg \
		graphics/openjp2

WANTLIB += atk-1.0 cairo cairo-gobject gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += girara-gtk3 glib-2.0 gobject-2.0 gtk-3 intl jbig2dec
WANTLIB += jpeg openjp2 pango-1.0 pangocairo-1.0

CONFIGURE_ENV += LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib `pkg-config --libs libjpeg libopenjp2` -ljbig2dec"

.include <bsd.port.mk>

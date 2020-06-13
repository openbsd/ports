# $OpenBSD: Makefile,v 1.21 2020/06/13 15:54:03 sthen Exp $

V =		0.3.5
REVISION =	0
COMMENT =	mupdf pdf plugin for zathura
PROJECT =	zathura-pdf-mupdf

BUILD_DEPENDS = textproc/mupdf \
		textproc/zathura/core
LIB_DEPENDS +=	graphics/jbig2dec \
		graphics/jpeg \
		graphics/openjp2

WANTLIB += cairo girara-gtk3 glib-2.0 harfbuzz jbig2dec
WANTLIB += jpeg openjp2

CONFIGURE_ENV += LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib `pkg-config --libs libjpeg libopenjp2` -ljbig2dec"

.include <bsd.port.mk>

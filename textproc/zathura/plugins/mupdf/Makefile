# $OpenBSD: Makefile,v 1.25 2021/11/13 17:24:28 sthen Exp $

V =		0.3.6
REVISION =	0
COMMENT =	mupdf pdf plugin for zathura
PROJECT =	zathura-pdf-mupdf

BUILD_DEPENDS = textproc/mupdf \
		textproc/zathura/core
LIB_DEPENDS +=	graphics/jbig2dec \
		graphics/jpeg \
		graphics/openjp2 \
		www/gumbo

WANTLIB += cairo girara-gtk3 glib-2.0 harfbuzz jbig2dec
WANTLIB += gumbo jpeg openjp2

CONFIGURE_ARGS +=	-D link-external=true
CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>

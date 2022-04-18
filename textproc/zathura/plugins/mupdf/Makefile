V =		0.3.8
REVISION =	0
COMMENT =	mupdf pdf plugin for zathura
PROJECT =	zathura-pdf-mupdf

# please check runtime if updating, mupdf linking is Very Annoying

BUILD_DEPENDS = textproc/mupdf \
		textproc/zathura/core
LIB_DEPENDS +=	graphics/jbig2dec \
		graphics/jpeg \
		graphics/openjp2 \
		www/gumbo

WANTLIB += cairo girara-gtk3 glib-2.0 harfbuzz jbig2dec
WANTLIB += gumbo jpeg openjp2

CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>

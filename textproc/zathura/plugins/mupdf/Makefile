V =		0.4.2
COMMENT =	mupdf pdf plugin for zathura
PROJECT =	zathura-pdf-mupdf

BUILD_DEPENDS = textproc/zathura/core
LIB_DEPENDS +=	textproc/mupdf

WANTLIB += cairo girara-gtk3 glib-2.0 mupdf

CONFIGURE_ENV += LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>

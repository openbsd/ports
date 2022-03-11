COMMENT=		highly configurable terminal emulator

GH_ACCOUNT=		realh
GH_PROJECT=		roxterm
GH_TAGNAME=		3.10.1

CATEGORIES=		x11

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject dbus-1 dbus-glib-1 gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gtk-3 harfbuzz intl pango-1.0 pangocairo-1.0 vte-2.91

MODULES=		devel/cmake

BUILD_DEPENDS=		textproc/docbook-xsl

LIB_DEPENDS=		devel/vte3 \
			x11/dbus-glib

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+3,-guic

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

NO_TEST=		Yes

.include <bsd.port.mk>

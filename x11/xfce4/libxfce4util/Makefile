COMMENT=	Xfce4 basic utility library

XFCE_PROJECT=	libxfce4util
XFCE_VERSION=	4.18.1

SHARED_LIBS +=	xfce4util            4.3 #.7.0

# LGPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4

CONFIGURE_ARGS=	--disable-linker-opts

LIB_DEPENDS=	devel/glib2
BUILD_DEPENDS=	devel/gobject-introspection \
		lang/vala
WANTLIB +=	c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 iconv
WANTLIB +=	intl pcre2-8 pthread z

.include <bsd.port.mk>

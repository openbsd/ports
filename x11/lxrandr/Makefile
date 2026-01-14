COMMENT=	simple xrandr config tool

GH_ACCOUNT=	lxde
GH_PROJECT=	lxrandr
GH_TAGNAME=	0.3.3

CATEGORIES=	x11 sysutils

HOMEPAGE=	http://lxde.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 harfbuzz intl pango-1.0
WANTLIB += pangocairo-1.0 pthread

# needed for regression test
MODULES+=	textproc/intltool

LIB_DEPENDS=	devel/gettext,-runtime \
		x11/gtk+3
RUN_DEPENDS=	devel/desktop-file-utils

USE_GMAKE=	Yes

CONFIGURE_STYLE= autoreconf
AUTOCONF_VERSION=2.72
AUTOMAKE_VERSION=1.17
CONFIGURE_ARGS=	--enable-gtk3
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

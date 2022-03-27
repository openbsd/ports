COMMENT=	X11 counterpart of curses-based misc/dialog

DISTNAME=	Xdialog-2.3.1
REVISION=	9
CATEGORIES=	x11 misc

HOMEPAGE=	http://xdialog.free.fr/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += harfbuzz intl pango-1.0 pangocairo-1.0 pangoft2-1.0 z

MASTER_SITES=	http://xdialog.free.fr/
EXTRACT_SUFX=	.tar.bz2

BUILD_DEPENDS=	devel/gettext,-tools
LIB_DEPENDS=	x11/gtk+2
AUTOCONF_VERSION=2.61
CONFIGURE_STYLE=autoconf
CONFIGURE_ARGS=	--with-gtk2
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# grab new macros that match *.so.n.m shared libraries
# requires autoconf >=2.61
post-patch:
	cd ${LOCALBASE}/share/aclocal && \
	    cp lib-link.m4 lib-prefix.m4 host-cpu-c-abi.m4 ${WRKSRC}/m4

.include <bsd.port.mk>

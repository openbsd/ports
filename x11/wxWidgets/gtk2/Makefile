# $OpenBSD: Makefile,v 1.7 2005/12/31 15:18:44 naddy Exp $

COMMENT=	"C++ cross-platform GUI toolkit - GTK2 version"
PKGNAME=	wxWidgets-gtk2-${VERSION}p2
SHARED_LIBS=	wx_gtk2 2.4

CONFIGURE_ARGS=	--enable-gtk2
CONFIGURE_ENV+=	WX_CURRENT=${LIBwx_gtk2_VERSION:R} \
		WX_REVISION=${LIBwx_gtk2_VERSION:E}

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	::x11/gtk+2 \
		::devel/libglade2 \
		glib-2.0.0.0::devel/glib2
RUN_DEPENDS=	::x11/wxWidgets/gtkheaders

WANTLIB=	X11 atk-1.0.0.0 cairo fontconfig \
		freetype gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 gmodule-2.0.0.0 \
		gobject-2.0.0.0 gthread-2.0.0.0 gtk-x11-2.0.0.0 intl m \
		pango-1.0.0.0 pangocairo-1.0.0.0 pangoft2-1.0.0.0 z


.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.11 2006/09/18 12:19:41 espie Exp $

COMMENT=	"C++ cross-platform GUI toolkit - GTK2 version"
PKGNAME=	wxWidgets-gtk2-${VERSION}p5
SHARED_LIBS=	wx_gtk2 3.0

CONFIGURE_ARGS=	--enable-gtk2
CONFIGURE_ENV+=	WX_CURRENT=${LIBwx_gtk2_VERSION:R} \
		WX_REVISION=${LIBwx_gtk2_VERSION:E}

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	::x11/gtk+2 \
		::devel/libglade2 \
		glib-2.0::devel/glib2
RUN_DEPENDS=	::x11/wxWidgets/gtkheaders

WANTLIB=	X11 atk-1.0 fontconfig m z \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 gmodule-2.0 \
		gobject-2.0 gthread-2.0 gtk-x11-2.0 intl \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 cairo

.include <bsd.port.mk>

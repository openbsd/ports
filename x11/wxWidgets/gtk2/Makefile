# $OpenBSD: Makefile,v 1.2 2004/12/18 21:12:42 alek Exp $
COMMENT=	"C++ cross-platform GUI toolkit - GTK2 version"
PKGNAME=		wxWidgets-gtk-${VERSION}-gtk2
# Name must conflict with gtk because both install headers in the same dir

CONFIGURE_ARGS=	--enable-gtk2

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gdk_pixbuf_xlib-2.0.0.0::x11/gtk+2 \
		glade-2.0.0.1::devel/libglade2 \
		glib-2.0.0.0::devel/glib2
RUN_DEPENDS=		::x11/wxWidgets/headers

WANTLIB=	X11 Xcursor Xext Xft Xinerama Xrender atk-1.0.0.0 fontconfig \
		freetype gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 gmodule-2.0.0.0 \
		gobject-2.0.0.0 gthread-2.0.0.0 gtk-x11-2.0.0.0 intl m \
		pango-1.0.0.0 pangoft2-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0 z

.include <bsd.port.mk>

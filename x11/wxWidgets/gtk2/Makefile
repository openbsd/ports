# $OpenBSD: Makefile,v 1.1.1.1 2004/07/16 21:01:36 todd Exp $
COMMENT=	"C++ cross-platform GUI toolkit - GTK2 version"
PKGNAME=		wxWidgets-gtk-${VERSION}-gtk2
# Name must conflict with gtk because both install headers in the same dir

CONFIGURE_ARGS=	--enable-gtk2

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gdk_pixbuf_xlib-2.0.0.0::x11/gtk+2 \
		glade-2.0.0.1::devel/libglade2 \
		glib-2.0.0.0::devel/glib2
RUN_DEPENDS=		::x11/wxWidgets/headers

.include <bsd.port.mk>

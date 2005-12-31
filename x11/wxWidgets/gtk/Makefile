# $OpenBSD: Makefile,v 1.6 2005/12/31 15:18:44 naddy Exp $

COMMENT=	"C++ cross-platform GUI toolkit - GTK version"
PKGNAME=		wxWidgets-gtk-${VERSION}p3
SHARED_LIBS=		wx_gtk 2.4

CONFIGURE_ARGS+=	--with-gtk
CONFIGURE_ENV+=		WX_CURRENT=${LIBwx_gtk_VERSION:R} \
			WX_REVISION=${LIBwx_gtk_VERSION:E}
LIB_DEPENDS+=		gtk.1.2::x11/gtk+
RUN_DEPENDS+=		::x11/wxWidgets/headers
RUN_DEPENDS+=		::x11/wxWidgets/gtkheaders

WANTLIB=		X11 Xext Xi gdk glib gmodule gthread intl m pthread z

.include <bsd.port.mk>

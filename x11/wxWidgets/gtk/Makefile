# $OpenBSD: Makefile,v 1.7 2006/01/14 11:46:16 espie Exp $

COMMENT=	"C++ cross-platform GUI toolkit - GTK version"
PKGNAME=		wxWidgets-gtk-${VERSION}p4
SHARED_LIBS=		wx_gtk 3.0

CONFIGURE_ARGS+=	--with-gtk
CONFIGURE_ENV+=		WX_CURRENT=${LIBwx_gtk_VERSION:R} \
			WX_REVISION=${LIBwx_gtk_VERSION:E}
LIB_DEPENDS+=		gtk.1.2::x11/gtk+
RUN_DEPENDS+=		::x11/wxWidgets/headers
RUN_DEPENDS+=		::x11/wxWidgets/gtkheaders

WANTLIB=		X11 Xext Xi gdk glib gmodule gthread intl m pthread z

.include <bsd.port.mk>

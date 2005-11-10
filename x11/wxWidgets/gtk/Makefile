# $OpenBSD: Makefile,v 1.4 2005/11/10 12:18:25 espie Exp $

COMMENT=	"C++ cross-platform GUI toolkit - GTK version"
PKGNAME=		wxWidgets-gtk-${VERSION}p1

CONFIGURE_ARGS+=	--with-gtk
LIB_DEPENDS+=		gtk.1.2::x11/gtk+
RUN_DEPENDS+=		::x11/wxWidgets/headers
RUN_DEPENDS+=		::x11/wxWidgets/gtkheaders

WANTLIB=		X11 Xext Xi gdk glib gmodule gthread intl m pthread z

.include <bsd.port.mk>

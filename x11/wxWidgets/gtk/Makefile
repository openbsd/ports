# $OpenBSD: Makefile,v 1.5 2005/12/06 19:16:03 alek Exp $

COMMENT=	"C++ cross-platform GUI toolkit - GTK version"
PKGNAME=		wxWidgets-gtk-${VERSION}p2

CONFIGURE_ARGS+=	--with-gtk
LIB_DEPENDS+=		gtk.1.2::x11/gtk+
RUN_DEPENDS+=		::x11/wxWidgets/headers
RUN_DEPENDS+=		::x11/wxWidgets/gtkheaders

WANTLIB=		X11 Xext Xi gdk glib gmodule gthread intl m pthread z

.include <bsd.port.mk>

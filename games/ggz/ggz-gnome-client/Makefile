# $OpenBSD: Makefile,v 1.3 2009/08/10 06:31:42 kili Exp $

COMMENT=	GGZ Gaming Zone - GNOME client

DISTNAME=	ggz-gnome-client-$V
PKGNAME=	${DISTNAME}p1

WANTLIB += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0
WANTLIB += bonobo-2 bonobo-activation bonoboui-2 c cairo dbus-1
WANTLIB += expat fontconfig freetype gailutil gconf-2 gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 ggz gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gnome-2 gnome-keyring gnomecanvas-2 gnomevfs-2 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 popt pthread pthread-stubs xcb xml2 z

MODULES=		devel/gettext

LIB_DEPENDS=		ggzcore,ggzmod::games/ggz/ggz-client-libs \
			png::graphics/png \
			gnomeui-2::x11/gnome/libgnomeui
RUN_DEPENDS=		::devel/desktop-file-utils

.include <bsd.port.mk>

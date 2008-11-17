# $OpenBSD: Makefile,v 1.1.1.1 2008/11/17 18:58:58 jasper Exp $

COMMENT=	GGZ Gaming Zone - GNOME client

DISTNAME=	ggz-gnome-client-$V

WANTLIB=	ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 \
		audiofile bonobo-2 bonobo-activation bonoboui-2 c cairo \
		esd expat fontconfig freetype gailutil gconf-2 gdk-x11-2.0 \
		gdk_pixbuf-2.0 ggz glib-2.0 glitz gmodule-2.0 gnome-2 \
		gnome-keyring gnomecanvas-2 gnomevfs-2 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pixman-1 popt pthread xml2 z

MODULES=		devel/gettext

LIB_DEPENDS=		ggzcore,ggzmod::games/ggz/ggz-client-libs \
			png::graphics/png \
			gnomeui-2::x11/gnome/libgnomeui
RUN_DEPENDS=		::devel/desktop-file-utils

.include <bsd.port.mk>

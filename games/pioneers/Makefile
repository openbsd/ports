# $OpenBSD: Makefile,v 1.46 2017/05/26 21:34:47 ajacoutot Exp $

COMMENT=		Settlers of Catan for GNOME/Gtk

GNOME_PROJECT=		pioneers
GNOME_VERSION=		15.4

CATEGORIES=		games

HOMEPAGE=		http://pio.sourceforge.net/

# program GPLv2+, icons CC-BY-SA-4.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c cairo gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gnome-2
WANTLIB += gobject-2.0 gtk-3 intl m notify pango-1.0 pangocairo-1.0

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pio/}
EXTRACT_SUFX=		.tar.gz

MODULES=		textproc/intltool \
			x11/gnome

BUILD_DEPENDS=		x11/gnome/librsvg

RUN_DEPENDS=		x11/gtk+3,-guic

LIB_DEPENDS=		devel/libnotify \
			x11/gnome/libgnome \
			x11/gtk+3

MODGNOME_TOOLS=		desktop-file-utils yelp

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-protocol=IPv4 \
			--without-avahi

pre-configure:
	sed -i -e 's,games/pioneers,pioneers,g;' \
		-e 's,/usr/share,${PREFIX}/share,g' \
		${WRKSRC}/client/help/C/pioneers-C.omf \
		${WRKSRC}/docs/pioneers.6 \
		${WRKSRC}/docs/pioneers-server-gtk.6 \
		${WRKSRC}/docs/pioneers-server-console.6 \
		${WRKSRC}/docs/pioneersai.6 \
		${WRKSRC}/docs/pioneers-metaserver.6

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.3 2014/12/10 12:30:17 jasper Exp $

COMMENT=		GNOME 3 calendar

GNOME_PROJECT=		california
GNOME_VERSION=		0.3.0
REVISION=		0

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject camel-1.2 ecal-1.2 edataserver-1.2
WANTLIB += fontconfig freetype gdata gdk-3 gdk_pixbuf-2.0 gee-0.8
WANTLIB += gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0 goa-1.0
WANTLIB += gobject-2.0 gtk-3 ical icalss icalvcal json-glib-1.0
WANTLIB += m nspr4 nss3 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += plc4 plds4 pthread secret-1 smime3 softokn3 soup-2.4
WANTLIB += sqlite3 ssl3 xml2 z

LIB_DEPENDS=		databases/evolution-data-server \
			devel/gobject-introspection \
			devel/libgee

# needs xdg-email
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/xdg-utils

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils vala yelp

# XXX: Should honor --docdir
FAKE_FLAGS=		californiadocdir="${PREFIX}/share/doc/california/"

.include <bsd.port.mk>

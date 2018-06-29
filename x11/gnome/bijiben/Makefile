# $OpenBSD: Makefile,v 1.52 2018/06/29 22:16:22 espie Exp $

TRACKER_API=		2.0

COMMENT=		simple note editor

GNOME_PROJECT=		bijiben
GNOME_VERSION=		3.28.3
REVISION=		1

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c cairo cairo-gobject ecal-1.2 edataserver-1.2 gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 goa-1.0 gobject-2.0
WANTLIB += gtk-3 ical intl javascriptcoregtk-4.0 m pango-1.0 pangocairo-1.0
WANTLIB += uuid webkit2gtk-4.0 xml2
WANTLIB += tracker-sparql-${TRACKER_API}

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

LIB_DEPENDS=		databases/evolution-data-server \
			x11/gnome/online-accounts \
			x11/gnome/tracker

# needs xdg-email
RUN_DEPENDS +=		devel/xdg-utils

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache \
			shared-mime-info yelp

# XXX
# Generate this file upfront as it may not be created in time
# due to ninja's randomization.
pre-build:
	exec ${SETENV} ${MAKE_ENV} \
		${LOCALBASE}/bin/ninja -C ${WRKBUILD} -v src/libbiji/biji-marshalers.h

.include <bsd.port.mk>

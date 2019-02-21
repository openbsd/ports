# $OpenBSD: Makefile,v 1.57 2019/02/21 17:08:50 ajacoutot Exp $

COMMENT=		simple note editor

GNOME_PROJECT=		bijiben
GNOME_VERSION=		3.30.3
REVISION=		0

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject ecal-1.2 edataserver-1.2
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 goa-1.0
WANTLIB += gobject-2.0 gtk-3 ical intl javascriptcoregtk-4.0 m
WANTLIB += pango-1.0 pangocairo-1.0 pthread secret-1 soup-2.4
WANTLIB += tracker-sparql-2.0 uuid webkit2gtk-4.0 xml2

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

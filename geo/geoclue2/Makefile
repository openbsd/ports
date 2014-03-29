# $OpenBSD: Makefile,v 1.7 2014/03/29 00:27:00 ajacoutot Exp $

COMMENT=		modular geoinformation service on top of D-Bus

VERSION=		2.1.7
DISTNAME=		geoclue-${VERSION}
PKGNAME=		geoclue2-${VERSION}
CATEGORIES=		geo devel
REVISION=		3

HOMEPAGE=		http://geoclue.freedesktop.org/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://freedesktop.org/software/geoclue/releases/${VERSION:R}/
EXTRACT_SUFX=		.tar.xz

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 json-glib-1.0
WANTLIB += m pcre pthread soup-2.4 sqlite3 xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/libsoup \
			devel/json-glib

MODGNOME_DESKTOP_FILE=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-dbus-service-user=_geoclue

# disable all components requiring ModemManager
CONFIGURE_ARGS +=	--disable-3g-source \
			--disable-wifi-source \
			--disable-modem-gps-source

FAKE_FLAGS=		DBUS_SYS_DIR=${PREFIX}/share/examples/geoclue/dbus-1/system.d \
			sysconfdir=${PREFIX}/share/examples/geoclue/

# don't install the demo agent .desktop file (agent requires MM)
FAKE_FLAGS +=		apps_DATA=geoclue-where-am-i.desktop

.include <bsd.port.mk>

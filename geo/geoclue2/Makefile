# $OpenBSD: Makefile,v 1.44 2022/02/20 08:46:20 ajacoutot Exp $

COMMENT=		modular geoinformation service on top of D-Bus

VERSION=		2.6.0
DISTNAME=		geoclue-${VERSION}
PKGNAME=		geoclue2-${VERSION}

CATEGORIES=		geo devel

SHARED_LIBS += geoclue-2                 0.2 # 0.0.0

HOMEPAGE=		http://geoclue.freedesktop.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://gitlab.freedesktop.org/geoclue/geoclue/-/archive/${VERSION}/
EXTRACT_SUFX=		.tar.bz2

WANTLIB += avahi-client avahi-common avahi-glib c gio-2.0 glib-2.0
WANTLIB += gobject-2.0 intl json-glib-1.0 m notify soup-2.4

MODULES=		devel/meson \
			x11/gnome

BUILD_DEPENDS=		devel/gettext,-tools

LIB_DEPENDS=		devel/libsoup \
			devel/libnotify \
			devel/json-glib \
			net/avahi,-glib

# XXX requires DBus support in wpa_supplicant
# (wpa_supplicant in OpenBSD is also crippled in other ways)
#RUN_DEPENDS=		security/wpa_supplicant

# /usr/local/share/dbus-1/system-services/
RUN_DEPENDS +=		x11/dbus,-suid

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection vala

CONFIGURE_ARGS=		-Dgtk-doc=false \
			-Ddbus-srv-user=_geoclue

# disable all components requiring ModemManager                                 
CONFIGURE_ARGS +=	-D3g-source=false \
			-Dcdma-source=false \
			-Dmodem-gps-source=false

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/geoclue2
	mv ${WRKINST}${SYSCONFDIR}/{dbus-1,geoclue,xdg} \
		${PREFIX}/share/examples/geoclue2

.include <bsd.port.mk>

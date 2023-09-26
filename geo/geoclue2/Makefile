COMMENT=		modular geoinformation service on top of D-Bus

VERSION=		2.7.1
DISTNAME=		geoclue-${VERSION}
PKGNAME=		geoclue2-${VERSION}

CATEGORIES=		geo devel

SHARED_LIBS += geoclue-2                 0.2 # 0.0.0

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

SITES=	https://gitlab.freedesktop.org/geoclue/geoclue/-/archive/${VERSION}/
EXTRACT_SUFX=		.tar.bz2

WANTLIB += avahi-client avahi-common avahi-glib c gio-2.0 glib-2.0
WANTLIB += gobject-2.0 intl json-glib-1.0 m notify soup-3.0

MODULES=		devel/meson \
			x11/gnome

BUILD_DEPENDS=		devel/gettext,-tools

LIB_DEPENDS=		devel/libsoup3 \
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
	mv ${WRKINST}${SYSCONFDIR}/{geoclue,xdg} \
		${PREFIX}/share/examples/geoclue2

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

.include <bsd.port.mk>

COMMENT=	GTK+ remote desktop client

V=		1.4.43
DISTNAME=	Remmina-v$V
SITES=		https://gitlab.com/Remmina/Remmina/-/archive/v$V/
# XXX using SITES because DIST_TUPLE uses wrong URLs for gitlab tags;
# https://gitlab.com/Remmina/Remmina/-/archive/v1.4.43/v1.4.43.tar.gz should be
# https://gitlab.com/Remmina/Remmina/-/archive/v1.4.43/Remmina-v1.4.43.tar.gz

PKGNAME=	remmina-$V
CATEGORIES=	x11 net

HOMEPAGE=	https://www.remmina.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += avahi-client avahi-common avahi-ui-gtk3 c cairo crypto
WANTLIB += cups curl freerdp-client3 freerdp3 gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gtk-3 intl
WANTLIB += json-glib-1.0 m pango-1.0 pthread secret-1 sodium spice-client-glib-2.0
WANTLIB += spice-client-gtk-3.0 ssh ssl vncclient vncserver vte-2.91
WANTLIB += wayland-client winpr3

MODULES=		devel/cmake \
			lang/python

COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

BUILD_DEPENDS=		devel/gettext,-tools \
			devel/spice-protocol

LIB_DEPENDS=		${MODPY_LIB_DEPENDS} \
			devel/gettext,-runtime \
			devel/json-glib \
			devel/vte3 \
			net/avahi,,-gtk3 \
			net/curl \
			net/libvncserver \
			security/libsodium \
			security/libssh \
			x11/freerdp \
			x11/spice-gtk \
			x11/gnome/libsecret

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/py-gobject3 \
			misc/shared-mime-info \
			x11/gtk+4,-guic

CONFIGURE_ARGS=		-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON

# Appindicator is only used by Ubuntu's Unity.
CONFIGURE_ARGS +=	-DHAVE_LIBAPPINDICATOR=OFF \
			-DWITH_ICON_CACHE=OFF \
			-DWITH_UPDATE_DESKTOP_DB=OFF \
			-DWITH_FREERDP3=ON

CFLAGS +=		-I${X11BASE}/include -I${LOCALBASE}/include

# disable phone-home
CONFIGURE_ARGS +=	-DWITH_NEWS=OFF

# telepathy support is removed in newer releases
CONFIGURE_ARGS +=	-DWITH_TELEPATHY=OFF

# disable KF5Wallet support
CONFIGURE_ARGS +=	-DWITH_KF5WALLET=OFF \
			-DWITH_WWW=OFF

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>

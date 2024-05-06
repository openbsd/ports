COMMENT=		GTK+ remote desktop client

# post-release "Fix build for openssl-1.1"
C=			93d703ec8524dec774f36d2285a6ec87c6fabb8d
DIST_TUPLE=		gitlab	Remmina	Remmina	${C}	.
DISTNAME=		Remmina-${C}
PKGNAME=		remmina-1.4.34
CATEGORIES=		x11 net
REVISION=		0

HOMEPAGE=		https://www.remmina.org/

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += avahi-client avahi-common avahi-ui-gtk3 c cairo crypto
WANTLIB += cups curl freerdp-client2 gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gtk-3 intl
WANTLIB += json-glib-1.0 pango-1.0 pthread secret-1 sndio sodium
WANTLIB += spice-client-glib-2.0 spice-client-gtk-3.0 ssh ssl
WANTLIB += vncclient vncserver vte-2.91 winpr2

MODULES=		devel/cmake \
			lang/python

COMPILER=		base-clang ports-gcc ports-clang
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
			devel/py-gobject3${MODPY_FLAVOR} \
			misc/shared-mime-info \
			x11/gtk+4,-guic

CONFIGURE_ARGS=		-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON

# Appindicator is only used by Ubuntu's Unity.
CONFIGURE_ARGS +=	-DHAVE_LIBAPPINDICATOR=OFF \
			-DWITH_ICON_CACHE=OFF \
			-DWITH_UPDATE_DESKTOP_DB=OFF

CFLAGS +=		-I${X11BASE}/include -I${LOCALBASE}/include

# disable phone-home
CONFIGURE_ARGS +=	-DWITH_NEWS=OFF

# telepathy support is removed in newer releases
CONFIGURE_ARGS +=	-DWITH_TELEPATHY=OFF

# disable KF5Wallet support
CONFIGURE_ARGS +=	-DWITH_KF5WALLET=OFF \
			-DWITH_WWW=OFF

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-install:
	# pending "Use universal /bin/sh shebang in remmina-rile-wrapper(1)"
	# https://gitlab.com/Remmina/Remmina/-/merge_requests/2572
	sed -i '1s,/usr/bin/env bash,/bin/sh,' ${PREFIX}/bin/remmina-file-wrapper

.include <bsd.port.mk>

COMMENT=		GTK+ remote desktop client

V=			1.4.31
DISTNAME=		remmina-${V}
WRKDIST=		${WRKDIR}/Remmina-v${V}-7407cc3a27eb25ba4ddddeab565f67fd688324ed

CATEGORIES=		x11 net

HOMEPAGE=		https://www.remmina.org/

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += avahi-client avahi-common avahi-ui-gtk3 c cairo crypto
WANTLIB += cups freerdp-client2 freerdp2 gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gtk-3 intl
WANTLIB += json-glib-1.0 pango-1.0 pthread secret-1 sodium spice-client-glib-2.0
WANTLIB += spice-client-gtk-3.0 ssh ssl vncclient vncserver vte-2.91 winpr2

SITES=			https://gitlab.com/Remmina/Remmina/-/archive/v${V}/

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

.include <bsd.port.mk>

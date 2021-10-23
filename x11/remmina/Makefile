# $OpenBSD: Makefile,v 1.51 2021/09/03 11:51:27 ajacoutot Exp $

COMMENT=		GTK+ remote desktop client

V=			1.4.13
DISTNAME=		remmina-${V}
WRKDIST=		${WRKDIR}/Remmina-v${V}-bd1be9d309b420234961b6dd5d2c6364f4a08e49
REVISION=		0

CATEGORIES=		x11 net

HOMEPAGE=		https://www.remmina.org/

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += ICE SM X11 Xext avahi-client avahi-common avahi-ui-gtk3
WANTLIB += c cairo crypto cups freerdp-client2 freerdp2 gcrypt
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gtk-3 intl json-glib-1.0 pango-1.0 pthread secret-1
WANTLIB += sodium soup-2.4 spice-client-gtk-3.0 ssh ssl vncclient
WANTLIB += vte-2.91 winpr2 xkbfile spice-client-glib-2.0

MASTER_SITES=		https://gitlab.com/Remmina/Remmina/-/archive/v${V}/

MODULES=		devel/cmake

COMPILER=		base-clang ports-gcc ports-clang
COMPILER_LANGS=		c

BUILD_DEPENDS=		devel/gettext,-tools \
			devel/spice-protocol

LIB_DEPENDS=		devel/gettext,-runtime \
			devel/libsoup \
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
			misc/shared-mime-info \
			x11/gtk+3,-guic

# Appindicator is only used by Ubuntu's Unity.
CONFIGURE_ARGS +=	-DWITH_APPINDICATOR=OFF \
			-DWITH_ICON_CACHE=OFF \
			-DWITH_UPDATE_DESKTOP_DB=OFF \
			-DCMAKE_C_FLAGS="-I${X11BASE}/include -I${LOCALBASE}/include ${CFLAGS}"

# disable phone-home
CONFIGURE_ARGS +=	-DWITH_NEWS=OFF

# telepathy support is removed in newer releases
CONFIGURE_ARGS +=	-DWITH_TELEPATHY=OFF

# disable KF5Wallet support
CONFIGURE_ARGS +=	-DWITH_KF5WALLET=OFF \
			-DWITH_WWW=OFF

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>

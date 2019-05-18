# $OpenBSD: Makefile,v 1.83 2019/05/18 12:13:34 naddy Exp $

COMMENT=		implementation of the FreeDesktop Desktop Menu Spec

GNOME_PROJECT=		gnome-menus
GNOME_VERSION=		3.32.0
REVISION=		0

SHARED_LIBS +=  gnome-menu-3         0.0      # 0.0

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 pcre pthread
WANTLIB += z iconv intl

MODULES=		x11/gnome

MODGNOME_TOOLS= 	gobject-introspection

LIB_DEPENDS=		devel/glib2

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/gnome-menus

CONFIGURE_STYLE=	gnu

### realpath revert patches
CONFIGURE_STYLE+=	autoreconf
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16
###

.include <bsd.port.mk>

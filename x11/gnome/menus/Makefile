# $OpenBSD: Makefile,v 1.86 2020/05/14 15:48:36 ajacoutot Exp $

COMMENT=		implementation of the FreeDesktop Desktop Menu Spec

GNOME_PROJECT=		gnome-menus
GNOME_VERSION=		3.36.0

SHARED_LIBS +=  gnome-menu-3         0.0      # 0.1

# GPLv2/LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 pcre pthread
WANTLIB += z iconv intl

MODULES=		x11/gnome

MODGNOME_TOOLS= 	gobject-introspection

LIB_DEPENDS=		devel/glib2

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/gnome-menus

CONFIGURE_STYLE=	gnu

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>

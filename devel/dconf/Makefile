# $OpenBSD: Makefile,v 1.87 2020/05/15 09:32:47 ajacoutot Exp $

COMMENT=		configuration backend system

GNOME_PROJECT=		dconf
GNOME_VERSION=		0.36.0
REVISION=		0

SHARED_LIBS +=		dconf        1.2 # 1.0.0

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += c gio-2.0 glib-2.0 gobject-2.0

COMPILER=		base-clang ports-gcc

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		docbook vala

BUILD_DEPENDS=		shells/bash-completion \
			x11/dbus

LIB_DEPENDS=		devel/glib2

DEBUG_PACKAGES=		${BUILD_PACKAGES}

# needs a running DBus
TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>

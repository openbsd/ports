# $OpenBSD: Makefile,v 1.81 2019/04/28 07:35:18 ajacoutot Exp $

COMMENT=		configuration backend system

GNOME_PROJECT=		dconf
GNOME_VERSION=		0.32.0

SHARED_LIBS +=		dconf        1.2 # 1.0.0

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 intl

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		docbook vala

BUILD_DEPENDS=		x11/dbus

LIB_DEPENDS=		devel/glib2

# needs the bash-completion package
CONFIGURE_ARGS +=	-Dbash_completion=false

# needs a running DBus
TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.182 2022/01/13 08:07:52 ajacoutot Exp $

COMMENT=	GNOME terminal

GNOME_PROJECT=	gnome-terminal
GNOME_VERSION=	3.42.2
REVISION=	0

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += X11 atk-1.0 c dconf gdk-3 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 intl nautilus-extension pango-1.0 uuid vte-2.91
WANTLIB += ${COMPILER_LIBCXX}

DEBUG_PACKAGES =${BUILD_PACKAGES}

COMPILER =	base-clang ports-gcc base-gcc

MODULES=	devel/dconf \
		devel/meson \
		x11/gnome

BUILD_DEPENDS=	devel/gsettings-desktop-schemas \
		textproc/docbook-xsl \
		x11/gnome/shell
RUN_DEPENDS=	devel/gsettings-desktop-schemas

LIB_DEPENDS=	devel/vte3>=0.52.2 \
		sysutils/e2fsprogs \
		x11/gnome/nautilus>=3.22.1

MODGNOME_TOOLS=	desktop-file-utils gtk-update-icon-cache vala yelp

post-install:
	rm -r ${PREFIX}/lib/systemd/

.include <bsd.port.mk>

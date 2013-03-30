# $OpenBSD: Makefile,v 1.1.1.1 2013/03/30 10:58:52 jasper Exp $

COMMENT=		collection of extensions for GNOME Shell

GNOME_PROJECT=		gnome-shell-extensions
GNOME_VERSION=		3.8.0

HOMEPAGE=		http://live.gnome.org/GnomeShell/Extensions

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

CONFIGURE_ARGS+=	--enable-extensions=all

MODGNOME_DESKTOP_FILE=	Yes

BUILD_DEPENDS=		devel/libgtop2 \
			x11/gnome/desktop
RUN_DEPENDS=		devel/libgtop2 \
			x11/gnome/desktop \
			x11/gnome/shell

# XXX: not using autoconf due to lack of autogen.sh
FAKE_FLAGS=		DATADIRNAME=share

.include <bsd.port.mk>

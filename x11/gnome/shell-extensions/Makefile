# $OpenBSD: Makefile,v 1.4 2013/05/14 08:59:34 jasper Exp $

PKG_ARCH=		*

COMMENT=		collection of extensions for GNOME Shell

GNOME_PROJECT=		gnome-shell-extensions
GNOME_VERSION=		3.8.2

HOMEPAGE=		http://live.gnome.org/GnomeShell/Extensions

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/dconf \
			x11/gnome

CONFIGURE_ARGS+=	--enable-extensions=all

MODGNOME_DESKTOP_FILE=	Yes

BUILD_DEPENDS=		devel/gettext \
			devel/libgtop2 \
			x11/gnome/desktop
RUN_DEPENDS=		devel/libgtop2 \
			x11/gnome/desktop \
			x11/gnome/shell

# Fix DATADIRNAME: see LOCALBASE/share/aclocal/{glib-gettext.m4,intltool.m4}
# XXX: not using autoconf due to lack of autogen.sh
FAKE_FLAGS=		DATADIRNAME=share

.include <bsd.port.mk>

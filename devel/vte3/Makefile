# $OpenBSD: Makefile,v 1.70 2016/05/10 18:38:23 jasper Exp $

COMMENT=		terminal emulation library

GNOME_PROJECT=		vte
GNOME_VERSION=		0.44.2
API_V=			2.91

PKGNAME=		vte3-${GNOME_VERSION}

SHARED_LIBS +=  vte-2.91              2.0      # 4400.1

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 epoxy expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gmp gnutls gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz hogweed m nettle p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += tasn1 xcb xcb-render xcb-shm z iconv intl idn

MODULES=		x11/gnome \
			gcc4

MODGCC4_ARCHS=		*
MODGCC4_LANGS=		c c++

# src/box_drawing_generate.sh
BUILD_DEPENDS=		shells/bash

LIB_DEPENDS=		security/gnutls \
			x11/gtk+3

MODGNOME_TOOLS=		gobject-introspection vala

CONFIGURE_STYLE=	gnu

# error: -Bsymbolic requested but not supported by ld
CONFIGURE_ARGS +=	--disable-Bsymbolic

TEST_DEPENDS=		shells/bash

SUBST_VARS +=		API_V

# XXX: https://bugzilla.gnome.org/show_bug.cgi?id=675987
post-install:
	rm -r ${WRKINST}${SYSCONFDIR}/profile.d

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.56 2015/04/03 11:26:01 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		terminal emulation library

GNOME_PROJECT=		vte
GNOME_VERSION=		0.40.0
API_V=			2.91

PKGNAME=		vte3-${GNOME_VERSION}

SHARED_LIBS +=  vte-2.91              0.0      # 4000.0

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs util xcb xcb-render xcb-shm z
WANTLIB += epoxy gmp gnutls hogweed nettle p11-kit tasn1

MODULES=		devel/gettext \
			x11/gnome

# src/box_drawing_generate.sh
BUILD_DEPENDS=		shells/bash

LIB_DEPENDS=		security/gnutls \
			x11/gtk+3

MODGNOME_TOOLS=		gobject-introspection

MODGNU_CONFIG_GUESS_DIRS= \
			${WRKSRC} \
			${WRKSRC}/gnome-pty-helper

CONFIGURE_STYLE=	gnu

# needed by VTE-based terminals to update login records
CONFIGURE_ARGS +=	--enable-gnome-pty-helper

# error: -Bsymbolic requested but not supported by ld
CONFIGURE_ARGS +=	--disable-Bsymbolic

TEST_DEPENDS=		shells/bash

SUBST_VARS +=		API_V

# XXX: https://bugzilla.gnome.org/show_bug.cgi?id=675987
post-install:
	rm -r ${WRKINST}${SYSCONFDIR}/profile.d

.include <bsd.port.mk>

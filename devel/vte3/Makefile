# $OpenBSD: Makefile,v 1.35 2013/10/15 10:54:24 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		terminal emulation library

GNOME_PROJECT=		vte
GNOME_VERSION=		0.34.9
REVISION=		0

PKGNAME=		vte3-${GNOME_VERSION}

SHARED_LIBS +=  vte2_90              1.0      # 3409.9

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz
WANTLIB += m ncurses pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs util xcb xcb-render
WANTLIB += xcb-shm z

LIB_DEPENDS=		x11/gtk+3>=3.3.18

MODGNOME_TOOLS= 	gi

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-gnome-pty-helper

# error: -Bsymbolic requested but not supported by ld
CONFIGURE_ARGS +=	--disable-Bsymbolic

TEST_DEPENDS +=		shells/bash

pre-configure:
	perl -pi -e "s,/bin/bash,${LOCALBASE}/bin/bash,g" \
		${WRKSRC}/src/test-vte-sh.sh

# XXX: https://bugzilla.gnome.org/show_bug.cgi?id=675987
post-install:
	rm -r ${WRKINST}${SYSCONFDIR}/profile.d

.include <bsd.port.mk>

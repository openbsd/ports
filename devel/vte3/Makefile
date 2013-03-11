# $OpenBSD: Makefile,v 1.22 2013/03/11 10:50:31 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		terminal emulation library

GNOME_PROJECT=		vte
GNOME_VERSION=		0.34.2
REVISION=		0

PKGNAME=		vte3-${GNOME_VERSION}

SHARED_LIBS +=  vte2_90                   1.0 # 3009.0

CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject drm expat ffi fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 m ncurses pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += stdc++ util xcb xcb-render xcb-shm z
WANTLIB += icule icuuc ICE SM atk-bridge-2.0 atspi dbus-1
WANTLIB += harfbuzz icudata

LIB_DEPENDS=		x11/gtk+3>=3.3.18

MODGNOME_TOOLS= 	goi

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-gnome-pty-helper

# error: -Bsymbolic requested but not supported by ld
CONFIGURE_ARGS +=	--disable-Bsymbolic

# XXX: https://bugzilla.gnome.org/show_bug.cgi?id=675987
post-install:
	rm -r ${WRKINST}${SYSCONFDIR}/profile.d

.include <bsd.port.mk>

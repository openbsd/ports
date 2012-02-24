# $OpenBSD: Makefile,v 1.12 2012/02/24 10:44:55 mpi Exp $

COMMENT=		terminal emulation library

GNOME_PROJECT=		vte
GNOME_VERSION=		0.30.1

PKGNAME=		vte3-${GNOME_VERSION}
REVISION=		3

SHARED_LIBS +=  vte2_90                   1.0 # 3009.0

CATEGORIES=	devel

HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject drm expat ffi fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 m ncurses pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += stdc++ util xcb xcb-render xcb-shm z

LIB_DEPENDS=		x11/gtk+3

MODGNOME_TOOLS= 	goi

AUTOCONF_VERSION=	2.68
AUTOMAKE_VERSION=	1.11

CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+=	--disable-Bsymbolic \
			--disable-gnome-pty-helper \
			--enable-bsd-pty

.include <bsd.port.mk>

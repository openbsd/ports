# $OpenBSD: Makefile,v 1.7 2012/04/01 15:04:00 ajacoutot Exp $

COMMENT=	PGP public keys sharing via DNS-SD and HKP

GNOME_PROJECT=	seahorse-sharing
GNOME_VERSION=	3.4.0
REVISION=	0

CATEGORIES=	net security

HOMEPAGE=	http://projects.gnome.org/seahorse/

# GPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm assuan
WANTLIB += atk-1.0 avahi-client avahi-common avahi-glib c cairo
WANTLIB += cairo-gobject dbus-1 drm expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error gpgme gthread-2.0 gtk-3 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += soup-2.4 xcb xcb-render xcb-shm xml2 z stdc++

LIB_DEPENDS=	devel/libsoup \
		security/gpgme \
		net/avahi \
		x11/gtk+3

MODULES=	devel/gettext \
		x11/gnome

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/seahorse-sharing

.include <bsd.port.mk>

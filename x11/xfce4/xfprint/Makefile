# $OpenBSD: Makefile,v 1.46 2016/07/09 08:57:11 sthen Exp $

COMMENT=	Xfce4 printing helper

XFCE_PROJECT=	xfprint
XFCE_VERSION=	4.6.1
REVISION=	27

MASTER_SITES=	http://archive.xfce.org/src/archive/${XFCE_PROJECT}/${XFCE_BRANCH}/
SHARED_LIBS=	xfprint	0.1

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 avahi-client avahi-common c
WANTLIB += cairo cups dbus-1 dbus-glib-1 expat ffi fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gmp
WANTLIB += gnutls gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz
WANTLIB += hogweed idn m nettle p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += startup-notification-1 tasn1 xcb xcb-render xcb-shm xcb-util
WANTLIB += xfce4util xfcegui4 xfconf-0 z

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes
MODXFCE_PURGE_LA =	lib/xfce4/xfprint-plugins

CONFIGURE_ARGS=	--enable-cups \
		--enable-bsdlpr \
		--with-printcap=/etc/printcap

RUN_DEPENDS=	print/a2ps

LIB_DEPENDS=	x11/xfce4/libxfcegui4 \
		x11/xfce4/xfconf \
		print/cups,-libs

.include <bsd.port.mk>

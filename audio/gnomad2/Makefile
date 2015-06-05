# $OpenBSD: Makefile,v 1.28 2015/06/05 12:20:38 ajacoutot Exp $

COMMENT=		GTK+ tool for managing Creative and Dell audio players

DISTNAME=		gnomad2-2.9.0
REVISION=		11
CATEGORIES=		audio

HOMEPAGE=		http://gnomad2.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gnomad2/}

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 expat
WANTLIB += fontconfig freetype gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread usb z
WANTLIB += pthread-stubs xcb id3tag njb tag_c mtp dbus-glib-1
WANTLIB += gdk_pixbuf-2.0 gdk-x11-2.0 gtk-x11-2.0
WANTLIB += xcb-render GL xcb-shm

MODULES=		devel/gettext \
			textproc/intltool

LIB_DEPENDS=		audio/libid3tag \
			audio/libnjb \
			audio/taglib \
			devel/libmtp \
			x11/dbus-glib \
			x11/gtk+2


CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

RUN_DEPENDS=		devel/desktop-file-utils

.include <bsd.port.mk>

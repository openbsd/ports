# $OpenBSD: Makefile,v 1.13 2009/08/10 06:29:52 kili Exp $

COMMENT=		GTK+ tool for managing Creative and Dell audio players

DISTNAME=		gnomad2-2.9.0
PKGNAME=		${DISTNAME}p2
CATEGORIES=		audio

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>
HOMEPAGE=		http://gnomad2.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gnomad2/}

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 expat
WANTLIB += fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread usb z
WANTLIB += pthread-stubs xcb

MODULES=		devel/gettext \
			textproc/intltool

LIB_DEPENDS=		id3tag::audio/libid3tag \
			njb::audio/libnjb \
			tag_c::audio/taglib \
			mtp::devel/libmtp \
			dbus-glib-1::x11/dbus-glib \
			gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2

USE_X11=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

RUN_DEPENDS=		:desktop-file-utils-*:devel/desktop-file-utils

.include <bsd.port.mk>

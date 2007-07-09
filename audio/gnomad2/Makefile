# $OpenBSD: Makefile,v 1.6 2007/07/09 23:15:24 jasper Exp $

COMMENT=		GTK+ tool for managing Creative and Dell audio players

DISTNAME=		gnomad2-2.8.13
CATEGORIES=		audio

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>
HOMEPAGE=		http://gnomad2.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender atk-1.0 c cairo expat fontconfig freetype glitz \
		m png pthread z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gnomad2/}

MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

LIB_DEPENDS=		id3tag.>=3::audio/libid3tag \
			njb::audio/libnjb \
	                glib-2.0,gmodule-2.0,gobject-2.0,gthread-2.0::devel/glib2 \
			mtp::devel/libmtp \
			usb.>=8::devel/libusb \
			pango-1.0,pangocairo-1.0,pangoft2-1.0::devel/pango \
			dbus-1.>=6::x11/dbus \
			dbus-glib-1.>=2::x11/dbus-glib \
			gdk_pixbuf-2.0.>=400.3,gdk-x11-2.0.>=400.3,gtk-x11-2.0.>=0.5::x11/gtk+2

BUILD_DEPENDS=		::textproc/p5-XML-Parser

.include <bsd.port.mk>

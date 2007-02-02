# $OpenBSD: Makefile,v 1.2 2007/02/02 14:26:50 jasper Exp $

COMMENT=		"GTK+ music manager for various Creative and Dell audio players"

DISTNAME=		gnomad2-2.8.11
CATEGORIES=		audio

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>
HOMEPAGE=		http://gnomad2.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xrender c fontconfig freetype m pthread z \
			gmodule-2.0 atk-1.0 gobject-2.0 glitz png \
		        pango-1.0 pangocairo-1.0 pangoft2-1.0 cairo

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gnomad2/}

MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu

LIB_DEPENDS=		id3tag.>=3::audio/libid3tag \
			njb::audio/libnjb \
	                glib-2.0.>=400.2,gthread-2.0.>=400.2::devel/glib2 \
			mtp::devel/libmtp \
			usb.>=8::devel/libusb \
			gdk_pixbuf-2.0.>=400.3,gdk-x11-2.0.>=400.3,gtk-x11-2.0.>=0.5::x11/gtk+2

BUILD_DEPENDS=		::textproc/intltool \
			::textproc/p5-XML-Parser

CONFIGURE_ENV+= 	LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ENV+= 	CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>

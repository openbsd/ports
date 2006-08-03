# $OpenBSD: Makefile,v 1.12 2006/08/03 12:43:20 espie Exp $

COMMENT=		"Image viewer and browser for GNOME"

VERSION=		0.13
DISTNAME=		gthumb-${VERSION}
PKGNAME=		${DISTNAME}p3
CATEGORIES=		graphics x11

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gthumb/}
HOMEPAGE=		http://gthumb.sourceforge.net/

MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	IIOP ORBit ORBitCosNaming ORBitutil SM X11 Xext Xi art_lgpl \
		audiofile c esd freetype gconf-1 gconf-gtk-1 gdk gdk_imlib \
		gdk_pixbuf glib gmodule gnome gnomesupport \
		gnomeui gthread gtk iconv intl jpeg m oaf png pthread tiff \
		ungif wrap xml z ICE

LIB_DEPENDS=		bonobo,bonobox::x11/gnome/bonobo \
			gnomevfs.::x11/gnome/vfs \
			glade-gnome.>=4,glade.>=4:libglade-*-gnome:devel/libglade,gnome \
			gnomeprint.::x11/gnome/print \
			gnomecanvaspixbuf.>=1:gdk-pixbuf-gnome-*:graphics/gdk-pixbuf,-gnome 

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
			LDFLAGS=-L${LOCALBASE}/lib
NO_REGRESS=		Yes

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.1.1.1 2002/05/23 01:01:11 pvalchev Exp $

COMMENT=		"Image viewer and browser for GNOME"

VERSION=		0.13
DISTNAME=		gthumb-${VERSION}
CATEGORIES=		graphics x11
NEED_VERSION=		1.531

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gthumb/}
HOMEPAGE=		http://gthumb.sourceforge.net/

MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=		png.::graphics/png \
			glib.::devel/glib \
			gtk.::x11/gtk+ \
			xml::textproc/libxml \
			gnome.36::x11/gnome/libs \
			gnomevfs.::x11/gnome/vfs \
			glade-gnome.4,glade::devel/libglade \
			gnomeprint.::x11/gnome/print \
			gdk_pixbuf.::graphics/gdk-pixbuf \
			oaf.::x11/gnome/oaf

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib
NO_REGRESS=		Yes

.include <bsd.port.mk>

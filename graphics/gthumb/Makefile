# $OpenBSD: Makefile,v 1.2 2002/05/25 21:50:22 pvalchev Exp $

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

LIB_DEPENDS=		png.2::graphics/png \
			gif.5::graphics/libungif \
			gnomevfs.::x11/gnome/vfs \
			glade-gnome.4,glade.4::devel/libglade \
			gnomeprint.::x11/gnome/print \
			oaf.::x11/gnome/oaf

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib
NO_REGRESS=		Yes

.include <bsd.port.mk>

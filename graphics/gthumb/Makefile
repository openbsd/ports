# $OpenBSD: Makefile,v 1.5 2002/09/11 20:32:06 danh Exp $

COMMENT=		"Image viewer and browser for GNOME"

VERSION=		0.13
DISTNAME=		gthumb-${VERSION}
PKGNAME=		${DISTNAME}p1
CATEGORIES=		graphics x11

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gthumb/}
HOMEPAGE=		http://gthumb.sourceforge.net/

MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=		bonobo,bonobox::x11/gnome/bonobo \
			gnomevfs.::x11/gnome/vfs \
			glade-gnome.4,glade.4::devel/libglade \
			gnomeprint.::x11/gnome/print 

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
			LDFLAGS=-L${LOCALBASE}/lib
NO_REGRESS=		Yes

.include <bsd.port.mk>

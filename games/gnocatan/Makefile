# $OpenBSD: Makefile,v 1.4 2006/01/08 01:04:33 brad Exp $

COMMENT=	"Settlers of Catan for GNOME/Gtk"

VERSION=	0.6.1
DISTNAME=	gnocatan-${VERSION}
CATEGORIES=	games x11/gnome

HOMEPAGE=	http://gnocatan.sourceforge.net/
MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xi audiofile c esd gdk gdk_imlib \
			glib gmodule gtk iconv intl jpeg m png tiff ungif z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gnocatan/}

LIB_DEPENDS=	art_lgpl.4,gnome.36,gnomeui.46,gnomesupport.0::x11/gnome/libs

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
USE_X11=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.1.1.1 2003/06/06 13:09:43 couderc Exp $

COMMENT=	"GTK+2 IRC client"

MAJOR=		2.0
VERSION=	${MAJOR}.2
DISTNAME=	xchat-${VERSION}
PKGNAME=	xchat2-${VERSION}
CATEGORIES=	net x11

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xchat/}

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.xchat.org/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	gtk-x11-2.0.0.0,gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0::x11/gtk+2

MODULES=	iconv gettext

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-python --disable-gnome \
		 --disable-perl --disable-mmx \
		 --enable-ipv6 --enable-openssl="/usr"
CONFIGURE_ENV=	CFLAGS="-I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.62 2007/07/07 12:51:10 couderc Exp $

COMMENT=	"GTK+2 IRC client"

MAJOR=		2.8
VERSION=	${MAJOR}.4
DISTNAME=	xchat-${VERSION}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net x11

HOMEPAGE=	http://www.xchat.org/

MAINTAINER=	Damien Couderc <couderc@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xau Xdmcp Xcursor Xext Xrender \
			Xfixes Xi Xinerama Xrandr atk-1.0 c cairo \
			crypto expat fontconfig freetype glib-2.0 \
			glitz gmodule-2.0 gobject-2.0 m \
			pango-1.0 pangocairo-1.0 \
			pangoft2-1.0 png ssl z

MASTER_SITES=	${HOMEPAGE}files/source/${MAJOR}/
MASTER_SITES0=	${MASTER_SITE_SOURCEFORGE:=xchat/}

EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2

MODULES=	devel/gettext

USE_X11=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-python --disable-textfe \
		 --disable-perl --disable-mmx --disable-dbus \
		 --enable-ipv6 --enable-openssl="/usr"
CONFIGURE_ENV=	CFLAGS="-I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.54 2006/06/07 20:03:54 couderc Exp $

COMMENT=	"GTK+2 IRC client"

MAJOR=		2.6
VERSION=	${MAJOR}.2
DISTNAME=	xchat-${VERSION}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net x11

HOMEPAGE=	http://www.xchat.org/

MAINTAINER=	Damien Couderc <couderc@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xrender atk-1.0.0.0 c cairo crypto \
			fontconfig freetype glib-2.0.0.0 glitz \
			gmodule-2.0.0.0 gobject-2.0.0.0 m \
			pango-1.0.0.0 pangocairo-1.0.0.0 \
			pangoft2-1.0.0.0 png ssl z

MASTER_SITES=	${HOMEPAGE}files/source/${MAJOR}/
MASTER_SITES0=	${MASTER_SITE_SOURCEFORGE:=xchat/}

EXTRACT_SUFX=	.tar.bz2

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gtk-x11-2.0.0.0,gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0::x11/gtk+2

MODULES=	devel/gettext

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-python --disable-textfe \
		 --disable-perl --disable-mmx \
		 --enable-ipv6 --enable-openssl="/usr"
CONFIGURE_ENV=	CFLAGS="-I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

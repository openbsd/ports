# $OpenBSD: Makefile,v 1.11 2004/08/10 09:38:35 xsa Exp $

COMMENT=	"GTK+2 IRC client"

MAJOR=		2.0
VERSION=	${MAJOR}.9
DISTNAME=	xchat-${VERSION}
PKGNAME=	xchat2-${VERSION}
CATEGORIES=	net x11

HOMEPAGE=	http://www.xchat.org/

MAINTAINER=	Damien Couderc <couderc@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}files/source/2.0/
MASTER_SITES0=	${MASTER_SITE_SOURCEFORGE:=xchat/}

EXTRACT_SUFX=	.tar.bz2

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gtk-x11-2.0.0.0,gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0::x11/gtk+2

MODULES=	devel/gettext

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-python --enable-textfe \
		 --disable-perl --disable-mmx \
		 --enable-ipv6 --enable-openssl="/usr"
CONFIGURE_ENV=	CFLAGS="-I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib"

post-patch:
	@mv ${WRKSRC}/xchat.png ${WRKSRC}/xchat2.png
	@mv ${WRKSRC}/xchat.desktop ${WRKSRC}/xchat2.desktop

.include <bsd.port.mk>

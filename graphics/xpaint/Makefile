# $OpenBSD: Makefile,v 1.49 2010/11/17 08:05:16 espie Exp $

COMMENT=		simple paint program

DISTNAME=		xpaint-2.7.8.1
REVISION=		2
CATEGORIES=		graphics x11

HOMEPAGE=		http://sf-xpaint.sourceforge.net/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sf-xpaint/}
EXTRACT_SUFX=		.tar.bz2

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c m \
			pthread-stubs xcb z jpeg>=62 tiff>=36 png>=4

FAKE=			lib
LIB_DEPENDS=		graphics/jpeg \
			graphics/tiff \
			graphics/png

CONFIGURE_STYLE= 	imake
ALL_TARGET=		xaw
USE_GROFF =		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>

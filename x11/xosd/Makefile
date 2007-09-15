# $OpenBSD: Makefile,v 1.8 2007/09/15 20:04:28 merdely Exp $

COMMENT=	displays text on your screen

DISTNAME=	xosd-2.2.12
PKGNAME=	${DISTNAME}p2
SHARED_LIBS=	xosd 4.12
CATEGORIES=	x11 graphics
HOMEPAGE=	http://www.ignavus.net/software.html

MAINTAINER=	Jon Trembley <jon@brain-box.net>

# GPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xau Xdmcp Xext Xinerama Xt c pthread 

MASTER_SITES=	http://www.ignavus.net/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-new-plugin --disable-old-plugin

USE_X11=	yes
USE_LIBTOOL=	Yes

.include <bsd.port.mk>

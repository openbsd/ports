# $OpenBSD: Makefile,v 1.1.1.1 2004/11/11 05:16:29 jcs Exp $

COMMENT=	"displays text on your screen"

DISTNAME=	xosd-2.2.12
CATEGORIES=	x11 graphics
HOMEPAGE=	http://www.ignavus.net/software.html

MAINTAINER=	Jon Trembley <jon@brain-box.net>

# GPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.ignavus.net/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-new-plugin --disable-old-plugin

USE_X11=	yes

.include <bsd.port.mk>

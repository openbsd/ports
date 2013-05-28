# $OpenBSD: Makefile,v 1.38 2013/05/28 15:03:20 eric Exp $

COMMENT=	creating & editing GIF images and animations

DISTNAME=	gifsicle-1.70
CATEGORIES=    	graphics

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c ICE SM X11

HOMEPAGE=	http://www.lcdf.org/gifsicle/

MASTER_SITES=	${HOMEPAGE}/ \
		ftp://ftp.lcdf.org/pub/ \
		ftp://ftp.lcdf.org/pub/OLD-VERSIONS/

CONFIGURE_STYLE=	gnu

SEPARATE_BUILD=		Yes
USE_GROFF =	Yes

.include <bsd.port.mk>

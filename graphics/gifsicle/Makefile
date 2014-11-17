# $OpenBSD: Makefile,v 1.39 2014/11/17 13:02:35 benoit Exp $

COMMENT=	creating & editing GIF images and animations

DISTNAME=	gifsicle-1.86
CATEGORIES=    	graphics

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c ICE SM X11 m

HOMEPAGE=	http://www.lcdf.org/gifsicle/

MASTER_SITES=	${HOMEPAGE}/ \
		ftp://ftp.lcdf.org/pub/ \
		ftp://ftp.lcdf.org/pub/OLD-VERSIONS/

CONFIGURE_STYLE=	gnu

SEPARATE_BUILD=		Yes

.include <bsd.port.mk>

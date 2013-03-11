# $OpenBSD: Makefile,v 1.37 2013/03/11 11:10:52 espie Exp $

COMMENT=	creating & editing GIF images and animations

DISTNAME=	gifsicle-1.60
REVISION=	0
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
CONFIGURE_ARGS=		--enable-gifdiff

SEPARATE_BUILD=		Yes
USE_GROFF =	Yes

.include <bsd.port.mk>

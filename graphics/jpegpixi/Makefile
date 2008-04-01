# $OpenBSD: Makefile,v 1.1.1.1 2008/04/01 20:23:07 kili Exp $

COMMENT=	jpeg pixel interpolator

DISTNAME=	jpegpixi-1.1.1
CATEGORIES=	graphics

HOMEPAGE=	http://www.zero-based.org/software/jpegpixi/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Giovanni Bechis <g.bechis@snb.it>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m
LIB_DEPENDS=		jpeg.>=62::graphics/jpeg

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-nls \
			--with-jpeglib=${LOCALBASE}

.include <bsd.port.mk>

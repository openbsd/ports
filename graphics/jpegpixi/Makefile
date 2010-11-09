# $OpenBSD: Makefile,v 1.4 2010/11/09 18:22:26 espie Exp $

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

WANTLIB=		c m jpeg.>=62
LIB_DEPENDS=		::graphics/jpeg

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-nls \
			--with-jpeglib=${LOCALBASE}
USE_GROFF =	Yes

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.7 2014/10/22 13:39:38 jasper Exp $

COMMENT=	jpeg pixel interpolator

DISTNAME=	jpegpixi-1.1.1
REVISION=	0
CATEGORIES=	graphics

HOMEPAGE=	http://www.zero-based.org/software/jpegpixi/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m jpeg>=62
LIB_DEPENDS=		graphics/jpeg

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-nls \
			--with-jpeglib=${LOCALBASE}
USE_GROFF =		Yes

.include <bsd.port.mk>

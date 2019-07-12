# $OpenBSD: Makefile,v 1.10 2019/07/12 20:47:01 sthen Exp $

COMMENT=	jpeg pixel interpolator

DISTNAME=	jpegpixi-1.1.1
REVISION=	1
CATEGORIES=	graphics

HOMEPAGE=	http://www.zero-based.org/software/jpegpixi/
MASTER_SITES=	${HOMEPAGE}

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=		c m jpeg>=62
LIB_DEPENDS=		graphics/jpeg

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-nls \
			--with-jpeglib=${LOCALBASE}

.include <bsd.port.mk>

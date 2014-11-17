# $OpenBSD: Makefile,v 1.29 2014/11/17 09:04:46 benoit Exp $

SHARED_ONLY=	Yes

COMMENT=	high speed arbitrary-size integer math

MODULES=	cpan
DISTNAME=	Math-GMP-2.07
CATEGORIES=	math

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gmp>=4

LIB_DEPENDS =		devel/gmp

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

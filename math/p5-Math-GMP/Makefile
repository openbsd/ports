# $OpenBSD: Makefile,v 1.19 2010/10/18 20:52:06 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	high speed arbitrary-size integer math

MODULES=	cpan
DISTNAME=	Math-GMP-2.05
REVISION=	0
CATEGORIES=	math

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=		gmp.>=4::devel/gmp

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
		USE_GROFF =	Yes

.include <bsd.port.mk>

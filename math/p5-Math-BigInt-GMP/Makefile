# $OpenBSD: Makefile,v 1.8 2010/10/18 20:52:06 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	use the GMP library for Math::BigInt routines

MODULES=	cpan
DISTNAME=	Math-BigInt-GMP-1.24
REVISION=	0
CATEGORIES=	math
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	gmp.>=6::devel/gmp

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

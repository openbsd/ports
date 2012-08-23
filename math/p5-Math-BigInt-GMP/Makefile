# $OpenBSD: Makefile,v 1.12 2012/08/23 15:50:05 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	use the GMP library for Math::BigInt routines

MODULES=	cpan
DISTNAME=	Math-BigInt-GMP-1.24
REVISION=	2
CATEGORIES=	math
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c gmp>=6

LIB_DEPENDS =	devel/gmp

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

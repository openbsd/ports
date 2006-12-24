# $OpenBSD: Makefile,v 1.3 2006/12/24 19:50:51 dassow Exp $

SHARED_ONLY=	Yes

COMMENT=	"use the GMP library for Math::BigInt routines"

MODULES=	cpan
DISTNAME=	Math-BigInt-GMP-1.18
CATEGORIES=	math

MAINTAINER=	Chris Humphries <chris@niroze.net>

# same as perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	gmp.>=6::devel/gmp

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

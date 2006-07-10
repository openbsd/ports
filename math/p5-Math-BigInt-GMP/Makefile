# $OpenBSD: Makefile,v 1.1.1.1 2006/07/10 15:33:58 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"use the GMP library for Math::BigInt routines"

DISTNAME=	Math-BigInt-GMP-1.18
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	math perl5

MAINTAINER=	Chris Humphries <chris@niroze.net>

# same as perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Math/}

LIB_DEPENDS=	gmp.6::devel/gmp

CONFIGURE_STYLE=perl
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

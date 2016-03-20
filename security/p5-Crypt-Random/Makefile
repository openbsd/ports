# $OpenBSD: Makefile,v 1.13 2016/03/20 19:57:00 naddy Exp $

COMMENT=	cryptographically secure random number generator

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Crypt-Random-1.25
REVISION=	2
CATEGORIES=	security

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Loader \
		math/p5-Math-Pari

.include <bsd.port.mk>

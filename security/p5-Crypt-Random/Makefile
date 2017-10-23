# $OpenBSD: Makefile,v 1.14 2017/10/23 19:00:55 naddy Exp $

COMMENT=	cryptographically secure random number generator

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Crypt-Random-1.25
REVISION=	3
CATEGORIES=	security

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Loader \
		math/p5-Math-Pari

.include <bsd.port.mk>
